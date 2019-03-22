@isTest 
private class TestRestrictContactByName {
    @isTest static void testInsert(){
        Contact d=new Contact(LastName='INVALIDNAME',FirstName='Error');
        try{
           Insert d;
        }
        catch(Exception e){

        }
    }
}