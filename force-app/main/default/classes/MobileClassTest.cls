@isTest
 class MobileClassTest {
     
     @isTest
     static void Function1(){
      Mobiile__c TempV = new Mobiile__c();
      TempV.Name='Galaxy10';
      TempV.Brand__c='Samsung';
      TempV.Price__c=10000;
         
      insert TempV;
       
      Mobiile__c TempV2 = new Mobiile__c();
      TempV2=[SELECT Price__c FROM Mobiile__c WHERE ID=:TempV.ID];
      
      System.assertEquals(9500, TempV2.Price__c);
     }
     
     @isTest
     static void Function2(){
      Mobiile__c TempV = new Mobiile__c();
      TempV.Name='Iphone5';
      TempV.Brand__c='Apple';
      TempV.Price__c=50000;
         
      insert TempV;
       
      Mobiile__c TempV2 = new Mobiile__c();
      TempV2=[SELECT Price__c FROM Mobiile__c WHERE ID=:TempV.ID];
      
      System.assertEquals(42500, TempV2.Price__c);
     }
}