@isTest
 class ElevDevClassTest {
     
     @isTest
     static void Tempfunc1(){
         
         ElectronicDevice__c VarP =new ElectronicDevice__c();
         VarP.Type__c = 'CRT';
         VarP.Price__c = 30000;
         
         insert Varp;
         
         ElectronicDevice__c VarP1 =new ElectronicDevice__c();
         VarP1 = [SELECT Price__c From ElectronicDevice__c where id=: VarP.Id];
         System.assertEquals(15000,VarP1.Price__C);
     }
     
     @isTest
     static void Tempfunc2(){
         
         ElectronicDevice__c VarP =new ElectronicDevice__c();
         VarP.Type__c = 'LED';
         VarP.Price__c = 40000;
         
         insert Varp;
         
         ElectronicDevice__c VarP1 =new ElectronicDevice__c();
         VarP1 = [SELECT Price__c From ElectronicDevice__c where id=: VarP.Id];
         System.assertEquals(32000,VarP1.Price__C);
     }
     
     @isTest
     static void Tempfunc3(){
         
         ElectronicDevice__c VarP =new ElectronicDevice__c();
         VarP.Type__c = 'LCD';
         VarP.Price__c = 50000;
         
         insert Varp;
         
         ElectronicDevice__c VarP1 =new ElectronicDevice__c();
         VarP1 = [SELECT Price__c From ElectronicDevice__c where id=: VarP.Id];
         System.assertEquals(35000,VarP1.Price__C);
     }
}