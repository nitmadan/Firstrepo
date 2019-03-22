public class AccountHandler {

    public static Account insertNewAccount(String aname){
        Account a=new Account();
        a.name=aname;
        try{
        insert a;
        }
        catch(Exception e){return null;}
        return a;   
    }
}