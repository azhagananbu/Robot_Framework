*** Settings ***
Library                        SeleniumLibrary

Suite Setup                    Log                                         I am inside the Test Suite Setup
Suite Teardown                 Log                                         I am inside the Test Suite Teardown
Test Setup                     Log                                         I am inside the Test Setup
Test Teardown                  Log                                         I am inside the Test Teardown

Default Tags                   Sanity
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    

*** Test Cases **                                                                                                                                                                                                                                                                                                                                            


Robot_Framework_WV_Invite
                               [Tags]                                      Invite_Page
                               Log                                         WElcome This is Wealth Vruddhi Invite Page Testing
                               Create Webdriver                            Firefox                                                                                                                                                                                                                                                               executable_path=/usr/local/lib/python2.7/dist-packages/geckodriver
                               Open Browser                                ${Invite_URL}                                                                                                                                                                                                                                                         Firefox
                               Set Browser Implicit Wait                   5
                               Invite_KW
                               Sleep                                       5
                               Capture Page Screenshot                     filename=/home/anbu/eclipse-workspace/Robot_Fw/ScreenShots-{index}.png
                               Close All Browsers
                               Log                                         Wealth Vruddhi Invite Page Testing Has Been Completed Successfully

Robot_Framework_WV_Login
                               [Tags]                                      Login_Page
                               Log                                         WElcome This is Wealth Vruddhi Login Page Testing
                               Create Webdriver                            Firefox                                                                                                                                                                                                                                                               executable_path=/usr/local/lib/python2.7/dist-packages/geckodriver
                               Open Browser                                ${Login_URL}                                                                                                                                                                                                                                                          Firefox
                               Set Browser Implicit Wait                   5
                               Login_KW
                               Sleep                                       5
                               Capture Page Screenshot                     filename=/home/anbu/eclipse-workspace/Robot_Fw/ScreenShots-{index}.png
                               Close Browser
                               Log                                         Wealth Vruddhi Login Page Testing Has Been Completed Successfully

# Robot_Framework_WV_Client
                               # [Tags]                                    Login_Page
                               # Log                                       WElcome This is Wealth Vruddhi Client Form Testing
                               # Create Webdriver                          Firefox                                                                                                                                                                                                                                                               executable_path=/usr/local/lib/python2.7/dist-packages/geckodriver
                               # Open Browser                              ${Client_URL}                                                                                                                                                                                                                                                         Firefox
                               # Set Browser Implicit Wait                 5
                               # Login_KW
                               # Sleep                                     5
                               # Capture Page Screenshot                   filename=/home/anbu/eclipse-workspace/Robot_Fw/ScreenShots-{index}.png
                               # Close All Browsers
                               # Log                                       Wealth Vruddhi Client Form Testing Has Been Completed Successfully
# Robot_Framework_WV_Login
                               # Log                                       WElcome This My My2ndTEst
                               # Set Tags                                  RegressionTesting
                               # # Remove Tags                             RegressionTesting

# Robot_Framework_WV_Login
                               # Log                                       WElcome This My My3rdTEst

# Robot_Framework_WV_Login
                               # Log                                       WElcome This My My4thTEst

# Robot_Framework_WV_Login
                               # Log                                       WElcome This My My5thTEst



*** Variables ***
${Invite_URL}                  http://192.168.1.107:4200/#/invite
${Login_URL}                   http://192.168.1.107:4200/#/login
${Client_URL}                  http://192.168.1.107:4200/#/forms/client
@{CREDENTIALS}                 Admin                                       admin123@g.in
&{LOGINDATA}                   username=Admin                              password=admin123@g.in
@{CREDENTIALS1}                nkmohan8@gmail.com                          Vijaya@123
&{LOGINDATA1}                  username=nkmohan8@gmail.com                 password=Vijaya@123

*** Keywords ***
Invite_KW
                               Input Text                                  xpath=//input[@placeholder='Your Name']                                                                                                                                                                                                                               @{CREDENTIALS}[0]
                               Input Text                                  xpath=//input[@placeholder='Your Email-Id']                                                                                                                                                                                                                           &{LOGINDATA}[password]
                               Input Text                                  xpath=//input[@placeholder='Your Date-of-Birth']                                                                                                                                                                                                                      2019-02-19
                               Input Text                                  xpath=//input[@placeholder='Your Company']                                                                                                                                                                                                                            Bosco
                               Input Text                                  xpath=//input[@placeholder='Your Designation']                                                                                                                                                                                                                        Software_Tester
                               Select From List                            xpath =/html[1]/body[1]/app-invite[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[6]/div[3]/select[1]
                               Click Element                               xpath=/html[1]/body[1]/app-invite[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[6]/div[3]/select[1]/option[3]
                               Input Text                                  xpath=//input[@placeholder='Your Annual Income']                                                                                                                                                                                                                      1250000
                               Input Text                                  xpath=//input[@placeholder='Your Mobile Number']                                                                                                                                                                                                                      959896985656
                               Click Button                                xpath=//button[@class='btn btn-lg btn-primary inviteBtn']


Login_KW
                               Input Text                                  xpath=//input[@placeholder='Username']                                                                                                                                                                                                                                @{CREDENTIALS1}[0]
                               Input Text                                  xpath=//input[@placeholder='Password']                                                                                                                                                                                                                                &{LOGINDATA1}[password]
                               Click Button                                xpath=//button[contains(text(),'Login')]
                               Sleep                                       5
                               Log                                         Clients_Form_Step1
                               Select From List                            xpath=/html[1]/body[1]/app-header1[1]/app-forms-dashboard[1]/app-client[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/wizard[1]/div[1]/wizard-step[1]/div[1]/div[2]/form[1]/div[1]/div[1]/div[1]/select[1]
                               Click Element                               xpath=/html[1]/body[1]/app-header1[1]/app-forms-dashboard[1]/app-client[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/wizard[1]/div[1]/wizard-step[1]/div[1]/div[2]/form[1]/div[1]/div[1]/div[1]/select[1]/optgroup[1]/option[2]
                               Input Text                                  xpath=//input[@id='text-input']                                                                                                                                                                                                                                       Analysising and Testing
                               Click Button                                xpath=//button[contains(text(),'Next')]
                               Sleep                                       5
                               Log                                         Clients_Form_Step2
                               Select From List                            xpath=//div[@class='col-md-6']//select[@name='select1']
                               Click Element                               xpath=//option[@value='3']
                               Click Button                                xpath=//button[contains(text(),'Submit')]
                               Sleep                                       5
                               
