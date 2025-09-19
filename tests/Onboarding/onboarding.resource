*** Settings ***
Resource    ../common.resource

*** Keywords ***
Allow Location
    [Documentation]    Разрешить геолокацию
    Wait Until Page Contains Element    locator=ru.afisha.android:id/fragOnboardinSubmitBtn    timeout=5s
    Click Element    locator=ru.afisha.android:id/fragOnboardinSubmitBtn
    
    Wait Until Page Contains Element    locator=com.android.permissioncontroller:id/permission_allow_foreground_only_button
    Click Element    locator=com.android.permissioncontroller:id/permission_allow_foreground_only_button


Confirm City
    [Documentation]    Подтвердить город
    Wait Until Page Contains Element    locator=android:id/button1
    Click Element    locator=android:id/button1

Allow Notifications
    [Documentation]    Разрешить уведомления
    Wait Until Page Contains Element    locator=ru.afisha.android:id/fragOnboardinSubmitBtn
    Click Element    locator=ru.afisha.android:id/fragOnboardinSubmitBtn

    Wait Until Page Contains Element    locator=com.android.permissioncontroller:id/permission_allow_button
    Click Element    locator=com.android.permissioncontroller:id/permission_allow_button