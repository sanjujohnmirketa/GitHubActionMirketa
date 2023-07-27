trigger ContactPhTrigger on Contact (before insert) {
    
    
    For(Contact Cont : Trigger.new){
        For(Account Acc: [SELECT ID From Account]){
            If(Cont.Id==Acc.id){
                Cont.Phone = Acc.Phone;
            }
        }
    }
}