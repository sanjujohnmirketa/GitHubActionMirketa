public class DuplicateContactClass {
    
    public Static void ExistingContact(list<Contact> Cont){
     
        Map<String, Contact> emailMap = new Map<String, Contact>();
        
    for(Contact contact : Cont) {
        
        if(trigger.isInsert) {            
            emailMap.put(contact.Email, contact);
        }
    }    
    List<Contact> existingContactList = [Select Id, Email FROM Contact Where Email IN :emailMap.keySet()];
    
    if(existingContactList == null) return;
    
    for(Contact contactRec : existingContactList) {
        emailMap.get(contactRec.Email).addError('Email already Exist');
    }

    }           

}