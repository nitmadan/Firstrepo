public class ContactAndLeadSearch {
	public static List<List<sObject>> searchContactsAndLeads(String first)
    {
        List<List<sObject>> searchList = [FIND 'Smith' IN ALL FIELDS Returning Contact(FirstName,LastName), Lead(FirstName,LastName)];
        return searchList;
    }
}