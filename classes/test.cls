public class test {
public List<Policy1__c> dis()
{
    List<Policy1__c> recList = [SELECT id, name FROM Policy1__c where Id != Null];
    for(Policy1__c rec : recList)
    {
        System.debug('#####' +rec.Name);
    }
    return recList;
}
}