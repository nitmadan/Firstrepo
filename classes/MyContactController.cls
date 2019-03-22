public class MyContactController {
	@AuraEnabled
    public static List<Contact> getContacts(List<Id> accountIds){
        List<Contact> contactList = [SELECT Id, FirstName, LastName, Phone,Email, AccountId FROM Contact where AccountId in: accountIds];
        return contactList;
    }
    @AuraEnabled
    public static Map<String,String> saveContactList(List<Contact> contactList){
        Map<String,String> resultMap = new Map<String,String>();
        try{
            update contactList;
            resultMap.put('status', 'success');
            resultMap.put('message', 'contact updated successfully');
        }
        catch(Exception e){
            resultMap.put('status', 'error');
            resultMap.put('message', e.getMessage());
        }
        return resultMap;
    }
    
    @AuraEnabled
    public static List<Opportunity> getOpportunities(List<Id> accountIds){
        List<Opportunity> oppList = [SELECT Id, Name, Amount, CloseDate, AccountId FROM Opportunity where AccountId in: accountIds];
        return oppList;
    }
}