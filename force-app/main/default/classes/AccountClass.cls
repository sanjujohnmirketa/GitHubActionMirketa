public class AccountClass {
    public static void DeleteCheck(list <Account> AccList){
        //set up a contract
        for( Account VarC: AccList){
        //test Actions
            if (VarC.OwnerId != UserInfo.getUserid()){
                VarC.addError('This account can be deleted by its Owner only');
            }
        }
        
    }

}