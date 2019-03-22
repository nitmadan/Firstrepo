public class CustomController
{
    public Contact oContact{ get; set; }
    public CustomController()
    {
        oContact = new Contact();
    }
    public PageReference save()
    {
        Insert oContact;
        PageReference pr = new PageReference('/' +oContact.Id);
        return pr;
    }
    public PageReference cancel()
    {
        PageReference pr1 = new PageReference('https://ap4.salesforce.com/home/home.jsp');
        return pr1;
    }

}