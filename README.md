# SF-CPQ-Navigate-To-QLE

## Prerequisites
  This package is designed to work with Salesforce CPQ Quotes  
  Users who will need to access Quote Line Editor page through this redirect component must have all the permissions needed to work with Salesforce CPQ and will need proper access to the record to which they are redirected  
  In order to properly use the component inside your flow, you will need to have the quote's Id stored in a flow variable  
  
## Installation links
  Production:  
  > https://login.salesforce.com/packaging/installPackage.apexp?p0=04t7Q000000xlz8  


  Sandbox:  
  > https://test.salesforce.com/packaging/installPackage.apexp?p0=04t7Q000000xlz8  

## Installing
  1. Open the installation link in your browser and log in the destination org  
  ![login screen](https://user-images.githubusercontent.com/106233114/170217909-89f0381b-2e78-421c-8c40-c8dd8940d4d6.png)  
  2. Install the component for all the users in your org to be sure that you will not have issues in future  
  ![install options](https://user-images.githubusercontent.com/106233114/170218445-7b070c3d-db97-4b0c-872b-51be278d162d.png)  
  3. Once the installation is completed click "Done" to be redirected in your org  
  ![install complete](https://user-images.githubusercontent.com/106233114/170218618-38a7860f-4900-47ec-8535-1a64d5f6699c.png)  

## Usage
  1. To add this component in your flows, add an "Action" when you want the user to be redirected to the Quote Line Editor  
  ![add action](https://user-images.githubusercontent.com/106233114/170219282-69a42596-ef66-48d7-a68e-5e07cdee4f11.png)  
  2. Look for a component call "Navigate to Quote Line Editor"  
  ![select component](https://user-images.githubusercontent.com/106233114/170219552-ba21b638-7282-41d3-884f-82b5efb093f9.png)  
  3. In the configuration be sure to pass the variable storing the quote's Id in the "Quote Id" parameter  
  ![configure component](https://user-images.githubusercontent.com/106233114/170219832-d22ef39b-16b0-48e7-bca4-b0d257fecdef.png)  
  4. Save it and test it where you want!  
