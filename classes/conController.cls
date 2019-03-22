public with sharing class conController {

    @AuraEnabled
    public static list<Contact> getContacts()
    {
        return [SELECT AssistantName FROM Contact];
    }
}