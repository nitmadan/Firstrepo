public class NewCaseListController {

    public List<Case> getNewCases(){

        List<Case> lst=[Select ID,CaseNumber From Case where Status='New'];

        return lst;

    }

}