public with sharing class AccountPracClass {
    public static void PractMethod(list<Account> NewAcc){
        
	Set<id> Cont= New Set<Id>();
	For(Contact OldCont: [Select AccountId From Contact Where AccountId !=Null]){
		Cont.add(OldCont.AccountId);
		}
        
	List<Account> Acc2 = [Select Id From Account Where id Not IN: Cont];
	List<Contact> NewAddedContact = New List <Contact>();
	If(Acc2.size()>0){
	For(Account TAcc: NewAcc){
        For(Account NewAccount : Acc2){
            If(NewAccount.Id==TAcc.id){
		Contact NContact = New Contact();
		NContact.AccountId = NewAccount.Id;
		NContact.LastName = 'Test';
		NewAddedContact.add(NContact);
            }
            }
		}
    }
	Insert NewAddedContact;
   }
}