public class test2 {
public List<Contact> dis()
{
    List<Contact> conList = [select Id, Name, Email from Contact];
    for(Contact con : conList)
    {
        System.debug('#####' +con.Name);
    }
    return conList;
}
}