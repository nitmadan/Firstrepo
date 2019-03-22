public with sharing class LeadRecords {
	@AuraEnabled
    public static list<Lead> getMyObjects()
    {
        //String searchkey = '%' + searchKeyword + '%';
        
        List < Lead > returnList = new List < Lead > ();
        List < Lead > lstOfLead = [SELECT Name, Company, Phone FROM Lead ];
        
        for (Lead lc: lstOfLead) {
            returnList.add(lc);
        }
        return returnList;
        
    }
  /*  @AuraEnabled
    public static Account updateAcc(Account items){
        update items;
        return items;
    }*/
}