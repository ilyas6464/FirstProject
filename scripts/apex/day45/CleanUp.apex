for(CronTrigger eachJob : [select id from CronTrigger] ){
   System.abortJob(eachJob.id);
}