public class AccountClass {
    public static void DeleteCheck(list <Account> AccList){
        //test done
        for( Account VarC: AccList){
            if (VarC.OwnerId != UserInfo.getUserid()){
                VarC.addError('This account can be deleted by its Owner only');
            }
        }
        
    }

}