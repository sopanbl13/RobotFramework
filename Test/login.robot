*** Settings ***
Resource            ../Resources/resources.robot

Test Teardown       Close Browser

Default Tags        functional


*** Test Cases ***
TC01-ValidLogin
    Given Open Browser To Login Page
    When login with username standard_user and pass secret_sauce
    Then Login success
    When Click add to cart
    Then Makesure cart add +1
    When Click cart
    And Click CheckOut
    Then Input personal information
    When Confirm order
    Then Success order


*** Keywords ***
login with username ${username} and pass ${password}
    Input Text    ${Txtbox.Username}    ${username}
    Input Text    ${Txtbox.Password}    ${password}
    Click Button    ${Btn.Login}

Login success
    Wait Until Element Is Visible    ${Txt.Product}

Click add to cart
    Set Focus To Element    ${BtnAdd.Backpack}
    Click Element    ${BtnAdd.Backpack}

Makesure cart add +1
    ${txt1}    Run Keyword And Return Status    Element Should Be Visible    ${PopUp.NotifCart}
    IF    ${txt1} == "False"
        ${popUpText}    Set Variable    0
    ELSE
        ${popUpText}    Get Text    ${PopUp.NotifCart}
    END

Click cart
    Set Focus To Element    ${Btn.Cart}
    Click Element    ${Btn.Cart}

Click CheckOut
    Set Focus To Element    ${Btn.CheckOut}
    Click Element    ${Btn.CheckOut}

Input personal information
    Set Focus To Element    ${Txtbox.FirstName}
    Input Text    ${Txtbox.FirstName}    test
    Input Text    ${Txtbox.LastName}    test
    Input Text    ${Txtbox.PostalCode}    12345
    Click Element    ${Btn.Continue}

Confirm order
    Set Focus To Element    ${Btn.Finish}
    Click Element    ${Btn.Finish}

Success order
    Wait Until Element Is Visible    ${Txt.ThanksOrder}
