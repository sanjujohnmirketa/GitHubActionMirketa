public class attendanceClass {
    public static void AddAttendance(List <Student_Master__c> MyAtt){
        list<String> MyMonth = New list<string>();
        MyMonth.add('Jan');
        MyMonth.add('Feb');
        MyMonth.add('Mar');
        MyMonth.add('Apr');
        MyMonth.add('May');
        MyMonth.add('Jun');
        MyMonth.add('Jul');
        MyMonth.add('Aug');
        MyMonth.add('Sep');
        MyMonth.add('Oct');
        MyMonth.add('Nov');
        MyMonth.add('Dec');
        list<Attendance_Master__c> MyAttendance = New list<Attendance_Master__c>();
        For(Student_Master__c S: MyAtt){
        For(integer i=0;i<12;i++){
            Attendance_Master__c MyList = New Attendance_Master__c();
            MyList.Month__c=MyMonth.get(i);
            MyList.Number_of_Days__c= 0;
            MyList.Student_Name__c = S.Id;
            MyAttendance.add(MyList);
             }
            insert MyAttendance;
        }
        
    }

}