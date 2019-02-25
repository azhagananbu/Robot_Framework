*** Settings ***
Library               SeleniumLibrary

Suite Setup           Log                                  I am inside the Test Suite Setup
Suite Teardown        Log                                  I am inside the Test Suite Teardown
Test Setup            Log                                  I am inside the Test Setup
Test Teardown         Log                                  I am inside the Test Teardown

Default Tags          Sanity

*** Variables ***
# $(Browser)          chrome
# $(URL)              https://www.seleniumhq.org/



*** Test Cases ***
MyRobot_Framework
                      [Tags]                               Smoke
                      Log                                  WElcome This My Own Robot_Framework

My1stTEst
                      Log                                  WElcome This My My1stTEst

My2ndTEst
                      Log                                  WElcome This My My2ndTEst
                      Set Tags                             RegressionTesting
                      # Remove Tags                        RegressionTesting

My3rdTEst
                      Log                                  WElcome This My My3rdTEst

My4thTEst
                      Log                                  WElcome This My My4thTEst

My5thTEst
                      Log                                  WElcome This My My5thTEst

Bosco_BHR_Login
                      Create Webdriver                     Firefox                                                           executable_path=/usr/local/lib/python2.7/dist-packages/geckodriver
                      Open Browser                         ${URL}                                                            Firefox
                      Set Browser Implicit Wait            5
                      LoginKW
                      Sleep                                5
                      Set Screenshot Directory             path=/opt/Anbu/workspace/Robot_Framework/Robot_Fw/ScreenShots/
                      Capture Page Screenshot
                      [Teardown]                           Close Browser
                      Close All Browsers
                      Log                                  BoscoSoft BHR Account has been Logined

*** Variables ***
${URL}                http://192.168.1.8:8069/web/login
@{CREDENTIALS}        joenishanth                          boscou2A
&{LOGINDATA}          username=joenishanth                 password=boscou2A

*** Keywords ***
LoginKW
                      Input Text                           id=login                                                          @{CREDENTIALS}[0]
                      Input Text                           id=password                                                       &{LOGINDATA}[password]
                      Click Button                         xpath=//button[@type='submit']
                      Click Element                        xpath=//a[@class='dropdown full']
                      Click Element                        xpath=//ul[@class='dropdown-menu']//li[11]//a[1]
                      Set Browser Implicit Wait            5
                      Click Element                        xpath=//span[contains(text(),'U2A-Pre-Sale FEB-2019')]
                      Set Browser Implicit Wait            5
                      Click Element                        xpath=//button[contains(text(),'Import')]
                      Set Browser Implicit Wait            5
                      Click Element                        xpath=//label[@class='btn btn-primary']
                      Set Browser Implicit Wait            5
          
   