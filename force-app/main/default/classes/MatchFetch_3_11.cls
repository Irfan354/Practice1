global class MatchFetch_3_11 {
    public static void createMatches() {
        /*  Http h = new Http();
HttpRequest req = new HttpRequest();
req.setEndpoint('https://www.cricbuzz.com/cricket-series/');
req.setMethod('GET');

HttpResponse res = h.send(req);
system.debug('respnse :' + res);
Integer statusCode = res.getStatusCode();
system.debug('code' + statusCode);
String body = res.getBody();
system.debug('body:' + body);*/
        
        String body = '{"matchDetails":[{"matchDetailsMap":{"key":"Sun, 16 Oct 2022","match":[{"matchInfo":{"matchId":42986,"seriesId":3961,"seriesName":"ICC Mens T20 World Cup 2022","matchDesc":"1st Match, Group A","matchFormat":"T20","startDate":"1665892800000","endDate":"1665905400000","state":"Complete","status":"Namibia won by 55 runs","team1":{"teamId":161,"teamName":"Namibia","teamSName":"NAM","imageId":172229},"team2":{"teamId":5,"teamName":"Sri Lanka","teamSName":"SL","imageId":172119}}}]}}]}';
        MatchDetailsClass md = (MatchDetailsClass) JSON.deserialize(body, MatchDetailsClass.class);
        System.debug('Details :'+ md);
        
        List<Match__c> matchList = new List<Match__c>(); 	
        for(MatchMap ma : md.matchDetails){
            system.debug('match'+ma);
            
            List<MatchDetail> matches = ma.matchDetailsMap.match;
            system.debug('match'+matches);
            for(MatchDetail mdt : matches){
                
                Match__c match = new Match__c();
                match.MatchId__c = mdt.matchInfo.matchId;
                match.Series_Id__c= mdt.matchInfo.seriesId;
                match.Name = mdt.matchInfo.seriesName;
                match.Match_Desc__c = mdt.matchInfo.matchDesc;
                match.Match_Format__c = mdt.matchInfo.matchFormat;
                match.State__c = mdt.matchInfo.state;
                match.Status__c = mdt.matchInfo.status;
                matchList.add(match);
                
                createMatch(matchList);
            }
        }
        
        List<Team__C> teamList = new List<Team__C>();   
        for(MatchMap ma : md.matchDetails){
            system.debug('match'+ma);
            List<MatchDetail> matches = ma.matchDetailsMap.match;
            system.debug('match'+matches);
            
            Integer count =0;
            for(MatchDetail mdt : matches){
                system.debug('match'+mdt);
                
                Team__c teams = new Team__c();
                teams.TeamId__c =  mdt.matchInfo.team1.teamId;
                teams.ImageID__c=  mdt.matchInfo.team1.imageId;
                teams.Name =  mdt.matchInfo.team1.teamName;
                teams.MatchTeam__c = matchList.get(count).id;
                teams.TeamSName__c=  mdt.matchInfo.team1.teamSName;
                teamList.add(teams);
                
                Team__c teams2 = new Team__c();
                
                teams2.TeamId__c =  mdt.matchInfo.team2.teamId;
                teams2.ImageID__c=  mdt.matchInfo.team2.imageId;
                teams2.Name =  mdt.matchInfo.team2.teamName;
                teams2.MatchTeam__c = matchList.get(count).id;
                teams2.TeamSName__c=  mdt.matchInfo.team2.teamSName;
                teamList.add(teams2);
                
                createTeams(teamList);
            }
            
        }
        
    }
    
    public static void createMatch(List<Match__c> matchList){
        insert matchList;
        System.debug('matches'+matchList);
        
    }
    public static void createTeams(List<Team__c> teamList){
        Insert teamList;
        System.debug('teams :'+teamList);
    }
    
    public class MatchDetailsClass {
        Public List<MatchMap> matchDetails;
    }
    public class MatchMap{
        public CricketMatch matchDetailsMap;
    }
    public class CricketMatch{
        public String key;
        public List<MatchDetail> match;
    }
    public class MatchDetail{
        public MatchInformation matchInfo;
    }
    public class MatchInformation{
        public Integer matchId;
        public Integer seriesId;
        public String seriesName;
        public String matchDesc;
        public String matchFormat;
        public String state;
        public String status;
        public Team1Class team1;
        public Team2Class team2;
    }
    public class Team1Class{
        public Integer  teamId;
        public String  teamName;
        public String teamSName;
        public Integer imageId;
        
    }
    public class Team2Class{
        public Integer  teamId;
        public String  teamName;
        public String teamSName;
        public Integer imageId;  
    }
    
}