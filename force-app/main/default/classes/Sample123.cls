public class Sample123 {
    public List<WrapperClass> listwrapper{set;get;}
    
    public Sample123(){
        List<Account> listAcct = [SELECT Name,Industry FROM Account LIMIT 100];
    
        if(listAcct.size() >0){
            //Creating instance for the variable listWrapper
            listWrapper = new List<WrapperClass>();
            for(Account a:listAcct){
                listWrapper.add(new WrapperClass(a));
            }
            
        }
    }
    
    public class WrapperClass{
        public Boolean checkBool{get;set;}
        public Account acct{get;set;}
        public WrapperClass(Account acct){
            this.acct = acct;
        }
    }
	
}