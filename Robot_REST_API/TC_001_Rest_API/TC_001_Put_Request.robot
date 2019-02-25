*** Settings ***
Library                RequestsLibrary
Library                JSONLibrary
Library                Collections

*** Variables ***
${App_Base_URL}        https://www.thetestingworldapi.com/
${Student_ID}          421


*** Test Cases ***
TC_001_Put_Edit_S_D
                       Create Session                         Add_Student_details        ${App_Base_URL}
                       &{Body}=                               Create Dictionary          id=${Student_ID}                 first_name=Anbu                      middle_name=Azhagan    last_name=M.Tech     date_of_birth=23/02/2019
                       &{Header}=                             Create Dictionary          Content-Type=application/json
                       ${Response}=                           Put Request                Add_Student_details              api/studentsDetails/${Student_ID}    data=${Body}           headers=${Header}
                       Log To Console                         ${Response.status_code}
                       Log To Console                         ${Response.content}
                       ${Response}=                           Get Request                Get_Student_details              api/studentsDetails/${Student_ID}
                       # ${Actual_Code}=                        Convert To String          ${Response.status_code}
                       # Should Be Equal                        ${Actual_Code}             200
                       Log To Console                         ${Response.status_code}
                       Log To Console                         ${Response.content}
