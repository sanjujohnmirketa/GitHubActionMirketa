public class MyQueryController {
    public static list <contact> ContactList{set;get;}
    
    public MyQueryController(){
        //nothing
        ContactList=null;
    }

    public static void ShowData(){
        ContactList = [SELECT Name,MailingCity,Phone FROM Contact WHERE phone<>null LIMIT 10];
    } 
}