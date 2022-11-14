public class CricketScore {
    
    public static void printCricketScore() {
        /*Http h = new Http();

HttpRequest req = new HttpRequest();
req.setEndpoint('/....');
req.setMethod('GET');

HttpResponse res = h.send(req);
String body = res.getBody();
*/
        // Assuming that this is the response that the API sends
        String body = '{"inningsId":1,"batsmanStriker":{"batBalls":6,"batDots":4,"batFours":0,"batId":576,"batName":"Rohit Sharma","batMins":12,"batRuns":7,"batSixes":1,"batStrikeRate":116.67},"batsmanNonStriker":{"batBalls":2,"batDots":0,"batFours":0,"batId":1413,"batName":"Virat Kohli","batMins":0,"batRuns":2,"batSixes":0,"batStrikeRate":100},"batTeam":{"teamId":2,"teamScore":19,"teamWkts":1},"bowlerStriker":{"bowlId":13273,"bowlName":"Bas de Leede","bowlMaidens":0,"bowlNoballs":0,"bowlOvs":0.2,"bowlRuns":1,"bowlWides":0,"bowlWkts":0,"bowlEcon":3},"bowlerNonStriker":{"bowlId":9357,"bowlName":"Paul van Meekeren","bowlMaidens":0,"bowlNoballs":0,"bowlOvs":1,"bowlRuns":9,"bowlWides":0,"bowlWkts":1,"bowlEcon":9},"overs":3.2,"recentOvsStats":"... 0 1 0 0  | 2 0 0 W 1 6  | 1 0","partnerShip":{"balls":4,"runs":8},"currentRunRate":5.7,"requiredRunRate":0,"lastWicket":"KL Rahul  lbw b van Meekeren 9(12)  - 11/1 in 2.4 ov.","matchScoreDetails":{"matchId":43096,"inningsScoreList":[{"inningsId":1,"batTeamId":2,"batTeamName":"IND","score":19,"wickets":1,"overs":3.2,"isDeclared":false,"isFollowOn":false,"ballNbr":20}],"tossResults":{"tossWinnerId":2,"tossWinnerName":"India","decision":"Batting"},"matchTeamInfo":[{"battingTeamId":2,"battingTeamShortName":"IND","bowlingTeamId":24,"bowlingTeamShortName":"NED"}],"isMatchNotCovered":false,"matchFormat":"T20","state":"In Progress","customStatus":"India opt to bat","highlightedTeamId":2},"latestPerformance":[{"runs":18,"wkts":1,"label":"Last 3 overs"}],"ppData":{"pp_1":{"ppId":78,"ppOversFrom":0.1,"ppOversTo":6,"ppType":"mandatory","runsScored":19}},"overSummaryList":[{"score":19,"wickets":1,"inningsId":1,"o_summary":"1 0 ","runs":1,"batStrikerIds":[576,1413],"batStrikerNames":["Rohit","Kohli"],"batStrikerRuns":7,"batStrikerBalls":6,"batNonStrikerIds":[],"batNonStrikerNames":[],"batNonStrikerRuns":2,"batNonStrikerBalls":2,"bowlIds":[13273],"bowlNames":["Bas de Leede"],"bowlOvers":0.2,"bowlMaidens":0,"bowlRuns":1,"bowlWickets":0,"timestamp":1666855575297,"overNum":3.2,"batTeamName":"IND","event":"over-break"},{"score":18,"wickets":1,"inningsId":1,"o_summary":"2 0 0 W 1 6 ","runs":9,"batStrikerIds":[576,1413,8733],"batStrikerNames":["Rohit","Kohli","Rahul"],"batStrikerRuns":7,"batStrikerBalls":5,"batNonStrikerIds":[],"batNonStrikerNames":[],"batNonStrikerRuns":1,"batNonStrikerBalls":1,"bowlIds":[9357],"bowlNames":["Paul van Meekeren"],"bowlOvers":1,"bowlMaidens":0,"bowlRuns":9,"bowlWickets":1,"timestamp":1666855461990,"overNum":2.6,"batTeamName":"IND","event":"over-break"},{"score":9,"wickets":0,"inningsId":1,"o_summary":"0 1 0 1 0 0 ","runs":2,"batStrikerIds":[576,8733],"batStrikerNames":["Rohit","Rahul"],"batStrikerRuns":1,"batStrikerBalls":4,"batNonStrikerIds":[],"batNonStrikerNames":[],"batNonStrikerRuns":7,"batNonStrikerBalls":8,"bowlIds":[15205],"bowlNames":["Tim Pringle"],"bowlOvers":1,"bowlMaidens":0,"bowlRuns":2,"bowlWickets":0,"timestamp":1666855152144,"overNum":1.6,"batTeamName":"IND","event":"over-break"},{"score":7,"wickets":0,"inningsId":1,"o_summary":"0 Wd 0 4 2 0 0 ","runs":7,"batStrikerIds":[8733],"batStrikerNames":["Rahul"],"batStrikerRuns":6,"batStrikerBalls":6,"batNonStrikerIds":[576],"batNonStrikerNames":["Rohit"],"batNonStrikerRuns":0,"batNonStrikerBalls":0,"bowlIds":[12783],"bowlNames":["Fred Klaassen"],"bowlOvers":1,"bowlMaidens":0,"bowlRuns":7,"bowlWickets":0,"timestamp":1666854964980,"overNum":0.6,"batTeamName":"IND","event":"over-break"}],"status":"India opt to bat","lastWicketScore":9,"remRunsToWin":0,"matchHeader":{"matchId":43096,"matchDescription":"23rd Match, Super 12 Group 2","matchFormat":"T20","matchType":"International","complete":false,"domestic":false,"matchStartTimestamp":1666854000000,"matchCompleteTimestamp":1666864800000,"dayNight":false,"year":2022,"state":"In Progress","status":"India opt to bat","tossResults":{"tossWinnerId":2,"tossWinnerName":"India","decision":"Batting"},"result":{"winningTeam":"","winByRuns":false,"winByInnings":false},"revisedTarget":{"reason":""},"playersOfTheMatch":[],"playersOfTheSeries":[],"matchTeamInfo":[{"battingTeamId":2,"battingTeamShortName":"IND","bowlingTeamId":24,"bowlingTeamShortName":"NED"}],"isMatchNotCovered":false,"team1":{"id":2,"name":"India","playerDetails":[],"shortName":"IND"},"team2":{"id":24,"name":"Netherlands","playerDetails":[],"shortName":"NED"},"seriesDesc":"ICC Mens T20 World Cup 2022","seriesId":3961,"seriesName":"ICC Mens T20 World Cup 2022"},"responseLastUpdated":1666855579}';
        // Deserialize the response
        JsonParser md = (JsonParser) JSON.deserialize(body, JsonParser.class);
        system.debug('matchdet:'+md);
        
        String batsManName = md.batsmanStriker.batName;
		integer batsManStrikerRuns= md.batsmanStriker.batRuns;
        system.debug('final string is:'+ batsManName);
		system.debug('final string is:'+ batsManStrikerRuns);
        
        string batsManNonStrikerName = md.batsmanNonStriker.batName;
		integer batsManNonStrikerRuns= md.batsmanNonStriker.batRuns;
        system.debug('final string is:'+ batsManNonStrikerName);
        system.debug('string '+ batsManNonStrikerRuns);

        //string otherTeam = md.matchScoreDetails.matchTeamInfo;
       
        string teamOne;
        string teamTwos = md.matchHeader.team2.shortName;
        /*List<matchHeader> mhList = new List<matchHeader>();
        for(matchHeader mh : md.matchHeader){   
         teamOne = mh.matchHeader.team1;
         teamTwo = mh.team2;
        }*/
        
        string batTeam;
        integer matchScore;
        integer matchwickets;
        double matchOvers;
        List<matchScoreDetails> msdList = new List<matchScoreDetails>();
        for(inningsScoreList insc : md.matchScoreDetails.inningsScoreList ){
            batTeam = insc.batTeamName;
            matchScore =insc.score;
            matchWickets = insc.wickets; 
            matchOvers = insc.overs; 
            system.debug('insc :' + insc);
        }
        system.debug('Total match score :' + batTeam + ' ' + matchScore + '/' + matchWickets + ',' + matchOvers +'(' + batsManName + ' '+batsManStrikerRuns+'*'+','+' '+batsManNonStrikerName + ' ' +batsManNonStrikerRuns + ' ' + ')' + 'vs'+ ' ' +teamTwos);
    }
    /*public class MatchDetails{
public List<InningsScoreList> inningsScoreList;
}*/
    public class JsonParser{
        public String lastWicket;
        public Integer requiredRunRate;
        public Decimal currentRunRate;
        public matchScoreDetails matchScoreDetails;
        public partnerShip partnerShip;
        public list<latestPerformance> latestPerformance;
        public String recentOvsStats;
        public ppData ppData;
        public Decimal overs;
        public list<overSummaryList> overSummaryList;
        public bowlerNonStriker bowlerNonStriker;
        public String status;
        public bowlerStriker bowlerStriker;
        public Integer lastWicketScore;
        public batTeam batTeam;
        public Integer remRunsToWin;
        public batsmanNonStriker batsmanNonStriker;
        public matchHeader matchHeader;
        public batsmanStriker batsmanStriker;
        public Integer responseLastUpdated;
        public Integer inningsId;
    }
    public class tossResults{
        public String decision;
        public String tossWinnerName;
        //public String decision;
        //public String tossWinnerName;
        public Integer tossWinnerId;
        //public Integer tossWinnerId;
    }
    public class team2{
        public Integer id;
        public list<String> playerDetails;
        public String shortName;
        public String name;
    }
    public class team1{
        public String name;
        public list<String> playerDetails;
        public Integer id;
        public String shortName;
    }
    public class revisedTarget{
        public String reason;
    }
    public class result{
        public String winningTeam;
        public Boolean winByRuns;
        public Boolean winByInnings;
    }
    public class ppData{
        public pp_1 pp_1;
    }
    public class pp_1{
        public String ppType;
        public Decimal ppOversFrom;
        public Integer ppId;
        public Integer ppOversTo;
        public Integer runsScored;
    }
    public class partnerShip{
        public Integer runs;
        public Integer balls;
    }
    public class overSummaryList{
        public String batTeamName;
        public Integer bowlWickets;
        public Decimal timestamp;
        public Integer bowlRuns;
        public Decimal overNum;
        public Integer bowlMaidens;
        public String event;
        public Decimal bowlOvers;
        public String o_summary;
        public Integer inningsId;
        public Integer runs;
        public Integer wickets;
        public list<String> batStrikerIds;
        public Integer score;
        public list<String> batStrikerNames;
        public Integer batNonStrikerRuns;
        public list<String> batNonStrikerNames;
        public Integer batNonStrikerBalls;
        public list<String> batNonStrikerIds;
        public list<String> bowlIds;
        public Integer batStrikerBalls;
        public list<String> bowlNames;
        public Integer batStrikerRuns;
    }
    public class matchTeamInfo{
        public Integer battingTeamId;
        public String bowlingTeamShortName;
        public String battingTeamShortName;
        public Integer bowlingTeamId;
        //public Integer bowlingTeamId;
        //public String battingTeamShortName;
        //public String bowlingTeamShortName;
        //public Integer battingTeamId;
    }
    public class matchScoreDetails{
        public Integer highlightedTeamId;
        public Boolean isMatchNotCovered;
        public list<matchTeamInfo> matchTeamInfo;
        public String matchFormat;
        public tossResults tossResults;
        public String state;
        public list<inningsScoreList> inningsScoreList;
        public String customStatus;
        public Integer matchId;
    }
    public class matchHeader{
        public Integer matchId;
        public tossResults tossResults;
        public result result;
        public String status;
        public revisedTarget revisedTarget;
        public String state;
        public list<String> playersOfTheMatch;
        public Integer year;
        public list<String> playersOfTheSeries;
        public Boolean dayNight;
        public list<matchTeamInfo> matchTeamInfo;
        public Decimal matchCompleteTimestamp;
        public Boolean isMatchNotCovered;
        public Decimal matchStartTimestamp;
        public team1 team1;
        public Boolean domestic;
        public team2 team2;
        public Boolean complete;
        public String seriesDesc;
        public String matchType;
        public Integer seriesId;
        public String matchFormat;
        public String seriesName;
        public String matchDescription;
    }
    public class latestPerformance{
        public String label;
        public Integer wkts;
        public Integer runs;
    }
    public class inningsScoreList{
        public Integer inningsId;
        public Decimal overs;
        public Integer wickets;
        public Boolean isDeclared;
        public Integer score;
        public Boolean isFollowOn;
        public String batTeamName;
        public Integer ballNbr;
        public Integer batTeamId;
    }
    public class bowlerStriker{
        public Integer bowlEcon;
        public Decimal bowlOvs;
        public Integer bowlNoballs;
        public Integer bowlRuns;
        public Integer bowlMaidens;
        public Integer bowlWides;
        public String bowlName;
        public Integer bowlWkts;
        public Integer bowlId;
    }
    public class bowlerNonStriker{
        public Integer bowlId;
        public Integer bowlRuns;
        public Integer bowlOvs;
        public Integer bowlWides;
        public Integer bowlNoballs;
        public Integer bowlWkts;
        public Integer bowlMaidens;
        public Integer bowlEcon;
        public String bowlName;
    }
    public class batTeam{
        public Integer teamScore;
        public Integer teamWkts;
        public Integer teamId;
    }
    public class batsmanStriker{
        public Integer batMins;
        public String batName;
        public Integer batId;
        public Integer batRuns;
        public Integer batFours;
        public Integer batSixes;
        public Integer batDots;
        public Decimal batStrikeRate;
        public Integer batBalls;
    }
    public class batsmanNonStriker{
        public Integer batMins;
        public String batName;
        public Integer batId;
        public Integer batRuns;
        public Integer batFours;
        public Integer batSixes;
        public Integer batDots;
        public Integer batStrikeRate;
        public Integer batBalls;
    }
}