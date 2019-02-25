*** Settings ***
Library                                RequestsLibrary


*** Variables ***
${App_Base_URL}                        https://www.thetestingworldapi.com/
${Student_UD}                          421


*** Test Cases ***
TC_001_Get_Request
                                       Create Session                         Get_Student_details        ${App_Base_URL}
                                       ${Response}=                           Get Request                Get_Student_details        api/studentsDetails
                                       Log To Console                         ${Response.status_code}
                                       Log To Console                         ${Response.content}


TC_001_Fetch_Student_Details_By_ID
                                       Create Session                         Get_Student_details        ${App_Base_URL}
                                       ${Response}=                           Get Request                Get_Student_details        api/studentsDetails/${Student_UD}
                                       ${Actual_Code}=                        Convert To String          ${Response.status_code}
                                       Should Be Equal                        ${Actual_Code}             200
                                       Log To Console                         ${Response.status_code}
                                       Log To Console                         ${Response.content}
                                       # ${Response}=                           Get Request                Get_Student_details        api/studentsDetails/${Student_UD}
                                       # ${Actual_Code}=                        Convert To String          ${Response.status_code}
                                       # Should Be Equal                        ${Actual_Code}             200
                                       # Log To Console                         ${Response.status_code}
                                       # Log To Console                         ${Response.content}
