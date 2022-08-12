public class MySchedule implements Schedulable{
    public void execute (SchedulableContext SC) {
        Account a = new Account(Name = 'New Clarusway');
        insert a;

    }
}


//Apex code: System.Schedule('CRON SET', '0 0 12 * * ?', new mySchedule());

//check in UI as Apex Jobs

// https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_scheduler.htm