public class NavigateToQLECtrl {
  public static final String URL_TO_REMOVE = '.my.salesforce';
  public static final String URL_TO_INSERT = '--sbqq.visualforce';
  public static final String URL_TO_APPEND = '/apex/sbqq__sb?id=';
  @AuraEnabled
  public static string getReturnURL(String quoteId){
    String sfdcBaseURL = URL.getSalesforceBaseUrl().toExternalForm();        
    // String targetURL = sfdcBaseURL.replace('-c.','-sbqq.') + '/apex/sbqq__sb?scontrolCaching=1&id='+quoteId+'#/product/lookup?qId='+quoteId+'&aId='+acctId;
    // String targetURL = sfdcBaseURL.replace('-c.','-sbqq.') + '/apex/sbqq__sb?scontrolCaching=1&id='+quoteId+'#quote/le?qId='+quoteId;
    String targetURL = sfdcBaseURL.replace(URL_TO_REMOVE, URL_TO_INSERT) + URL_TO_APPEND + quoteId;
    return targetURL;
  }
}