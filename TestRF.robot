*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    http://automationexercise.com/login
${LOGOUT_URL}   http://automationexercise.com/logout
${BROWSER}      chrome

*** Test Cases ***
Login and Logout Test
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Input Text      shockchips    ${USERNAME}
    Input Text      Sky_0866969238    ${PASSWORD}
    Click Button    id=loginButton
    Page Should Contain    Welcome, ${USERNAME}
    
    # Perform logout
    Click Link    xpath=//a[contains(text(),'Logout')]
    Page Should Contain    Login  # Assuming the login page has a text "Login" indicating that the user is logged out
    
    [Teardown]    Close Browser

*** Variables ***
${USERNAME}    demo_user
${PASSWORD}    demo_password
