public class DeleteClass {
   @InvocableMethod
    Public static Void DeleteClassFunction(){
        list<Confidential_Deal__c> TempVar= [SELECT Id FROM Confidential_Deal__c];
        Delete TempVar; 	
    }
}