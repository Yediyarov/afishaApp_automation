*** Settings ***
Resource    ../common.resource

*** Keywords ***
Allow Location
    [Documentation]    Разрешить геолокацию
    Wait Until Page Contains Element    ${ONBOARDING_SUBMIT_BTN}    timeout=5s
    Click Element    locator=${ONBOARDING_SUBMIT_BTN}

    Wait Until Page Contains Element    locator=${PERMISSION_FOREGROUND}
    Click Element    locator=${PERMISSION_FOREGROUND}


Confirm City
    [Documentation]    Подтвердить город
    Wait Until Page Contains Element    locator=${ONBOARDING_CONFIRM_CITY_BTN}
    Click Element    locator=${ONBOARDING_CONFIRM_CITY_BTN}

Allow Notifications
    [Documentation]    Разрешить уведомления
    Wait Until Page Contains Element    locator=${ONBOARDING_SUBMIT_BTN}
    Click Element    locator=${ONBOARDING_SUBMIT_BTN}

    Wait Until Page Contains Element    locator=${PERMISSION_ALLOW}
    Click Element    locator=${PERMISSION_ALLOW}