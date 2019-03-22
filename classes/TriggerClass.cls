public class TriggerClass {
    
    public static void Accshare()
    {
        List<Account> accountRecord = [SELECT Id FROM Account WHERE Id In:Trigger.new AND OwnerId = '0056F000008vNFC'];
        
        List<AccountShare> shares = new List<AccountShare>();
        
        for (Account rec:accountRecord) {  
             AccountShare share = new AccountShare();
            share.AccountId=rec.Id;
            //Set the portal user Id to share the accounts with
            share.UserOrGroupId = '0056F000008vNG0';
            share.AccountAccessLevel = 'Edit';
           // share.OpportunityAccessLevel ='Read';
            share.CaseAccessLevel = 'Edit';
            shares.add(share);
  }
        insert shares;
    }

    }