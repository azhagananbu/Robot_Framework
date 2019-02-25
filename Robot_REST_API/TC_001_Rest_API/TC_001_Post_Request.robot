*** Settings ***
Library                RequestsLibrary
Library                JSONLibrary
Library                Collections

*** Variables ***
${App_Base_URL}        https://www.thetestingworldapi.com/
${Student_UD}          421


*** Test Cases ***
TC_001_Post_New_S_D
                       Create Session                         Add_Student_details        ${App_Base_URL}
                       &{Body}=                               Create Dictionary          first_name=testing               middle_name=A          last_name=Post    date_of_birth=23/02/2019
                       &{Header}=                             Create Dictionary          Content-Type=application/json
                       ${Response}=                           Post Request               Add_Student_details              api/studentsDetails    data=${Body}      headers=${Header}
                       ${Actual_Code}=                        Convert To String          ${Response.status_code}
                       Should Be Equal                        ${Actual_Code}             201
                       Log To Console                         ${Response.status_code}
                       Log To Console                         ${Response.content}
