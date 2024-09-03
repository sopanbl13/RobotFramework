*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}                  https://www.saucedemo.com/v1/
${BROWSER}              Chrome
${DELAY}                0.5s
${CHROMEDRIVER_PATH}    chromedriver.exe
${Txtbox.Username}      //*[@id="user-name"]
${Txtbox.Password}      //*[@id="password"]
${Btn.Login}            //*[@id="login-button"]
${Txt.Product}          //*[@id="inventory_filter_container"]/div
${BtnAdd.Backpack}      (//*[@class="btn_primary btn_inventory"])[1]
${PopUp.NotifCart}      //*[@id="shopping_cart_container"]/a/span
${Btn.Cart}             //*[@id="shopping_cart_container"]/a
${Btn.CheckOut}         //*[@id="cart_contents_container"]/div/div[2]/a[2]
${Txtbox.FirstName}     //*[@id="first-name"]
${Txtbox.LastName}      //*[@id="last-name"]
${Txtbox.PostalCode}    //*[@id="postal-code"]
${Btn.Continue}         //*[@id="checkout_info_container"]/div/form/div[2]/input
${Btn.Finish}           //*[@id="checkout_summary_container"]/div/div[2]/div[8]/a[2]
${Txt.ThanksOrder}      //*[@id="checkout_complete_container"]/h2


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER_PATH}
    Maximize Browser Window
