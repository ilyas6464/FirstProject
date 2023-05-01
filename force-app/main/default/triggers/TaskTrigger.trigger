trigger TaskTrigger on Task (before delete) {

//Write a trigger, only the system admin user should be able to delete the task.

String profLst = [SELECT name FROM Profile ];

for(Task each: Trigger.old){
    for(profile eachPro : profLst){
        if(eachPro.Name !='System administrator'){
            each.addError('Cant delete');
        }

    }
}

}