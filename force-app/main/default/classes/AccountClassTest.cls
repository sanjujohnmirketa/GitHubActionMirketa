@isTest

class AccountClassTest {
	
    @isTest
    
    Public 	static void functionA(){
        Account VarT = new Account();
        VarT.Name = 'Orkut';
        VarT.OwnerId = '0055g000002iVbJAAU';
        
        Insert VarT;
        
        Delete VarT;
        Account VarT1 = New Account();
        string Ident=UserInfo.getUserId();
        VarT1 =[SELECT Id,OwnerId FROM Account WHERE Id = :VarT.Id All Rows];
        System.assertEquals(VarT1.IsDeleted,False);
    }
    
    
}