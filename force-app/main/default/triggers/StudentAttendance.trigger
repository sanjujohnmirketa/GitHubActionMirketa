trigger StudentAttendance on Student_Master__c (After insert) {
    If(Trigger.Isafter== TRUE && Trigger.IsInsert== TRUE){
    attendanceClass.AddAttendance(Trigger.new);
	}
}