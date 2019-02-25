*** Settings ***
Library                  RequestsLibrary
Library                  JSONLibrary
Library                  Collections

*** Variables ***
${App_Base_URL}          https://www.thetestingworldapi.com/
${Student_UD}            49



*** Test Cases ***
TC_001_Delete_Request
                         Create Session                         Add_Student_details        ${App_Base_URL}
                         ${Response}=                           Delete Request             Add_Student_details        api/studentsDetails/${Student_UD}
                         ${Actual_Code}=                        Convert To String          ${Response.status_code}
                         Should Be Equal                        ${Actual_Code}             200
                         ${Json_Response}=                      To Json                    ${Response.content}
                         @{Status_List}=                        Get Value From Json        ${Json_Response}           status
                         ${status}=                             Get From List              ${Status_List}             0
                         Should Be Equal                        ${status}                  true
                         Log To Console                         ${Response.status_code}
                         Log To Console                         ${Response.content}
