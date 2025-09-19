*** Settings ***
Resource    onboarding.resource

*** Test Cases ***
Allow Location And Confirm City
    [Documentation]    Тест кейс для разрешения геолокации и подтверждения города
    
    launcher.Open App

    onboarding.Allow Location
    onboarding.Confirm City
    onboarding.Allow Notifications
    Wait Until Page Contains Element    locator=${VERTICAL_FEATURED_IMAGE}
    [Teardown]    Close Application