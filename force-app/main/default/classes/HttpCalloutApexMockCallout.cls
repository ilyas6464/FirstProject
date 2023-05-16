@isTest
public class HttpCallOutApexTest {

    @isTest static void testMethodCallOut(){

        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetSpartanData');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Test.setMock(HttpCalloutMock.class, mock);
        HtppCalloutApex.HttpCallOutApexTest();

    }
   
}