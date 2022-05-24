@IsTest
private class NavigateToQLECtrlTest {
  @IsTest
  static void getReturnURLTest(){
    Test.startTest();
    String url = NavigateToQLECtrl.getReturnURL('TEST');
    System.assertEquals(false, url.contains(NavigateToQLECtrl.URL_TO_REMOVE));
    System.assertEquals(true, url.contains(NavigateToQLECtrl.URL_TO_INSERT));
    System.assertEquals(true, url.contains(NavigateToQLECtrl.URL_TO_APPEND));
    Test.stopTest();
  }
}