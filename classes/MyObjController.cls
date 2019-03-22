public with sharing class MyObjController {
    @AuraEnabled
    public static list<Account> getMyObjects(String searchkeyword)
    {
        String searchkey = '%' + searchKeyword + '%';
        
        List < Account > returnList = new List < Account > ();
        List < Account > lstOfAccount = [SELECT Name, AccountNumber,Phone, Rating, Industry, AnnualRevenue FROM Account WHERE Name LIKE: searchKey ORDER BY Name Asc limit 10 ];
        
        for (Account acc: lstOfAccount) {
            returnList.add(acc);
        }
        return returnList;
        
    }
    @AuraEnabled
    public static Account updateAcc(Account items){
        update items;
        return items;
    }
   
    
}