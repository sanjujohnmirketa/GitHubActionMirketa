public class AccountClass {
    public static void DeleteCheck(list <Account> AccList){
        //testing actions
        for( Account VarC: AccList){
            if (VarC.OwnerId != UserInfo.getUserid()){
                VarC.addError('This account can be deleted by its Owner only');
            }
        }
        
    }

}