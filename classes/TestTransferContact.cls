@isTest
public class TestTransferContact{
    static testMethod void insertNewContact(){
        Contact c = new Contact();
        c.FirstName = 'CJ';
        c.LastName = 'Varghese';
        insert c;
    }
}