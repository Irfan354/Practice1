public  class CynoAddress {
        public String firstLineOfAddress;
        public String secondLineOfAddress;
        public String city;
        public String postCode;
        public String state;
        public String country;
        public CynoAddress(String firstLineOfAddress, String secondLineOfAddress, String city, String postCode, String state, String country){
                this.firstLineOfAddress = firstLineOfAddress;
                this.secondLineOfAddress = secondLineOfAddress;
                this.city = city;
                this.postCode = postCode;
                this.state = state;
                this.country  = country;
        }
}