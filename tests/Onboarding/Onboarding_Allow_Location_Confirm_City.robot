*** Settings ***
Resource    onboarding.resource
Suite Setup    common.Suite Setup   
Suite Teardown    common.Suite Teardown
Test Setup    common.Launch App
Test Teardown    common.Close App

*** Test Cases ***
Allow Location And Confirm City
    [Documentation]    Тест кейс для разрешения геолокации и подтверждения города
    
    
    onboarding.Allow Location
    onboarding.Confirm City
    onboarding.Allow Notifications
    Wait Until Page Contains Element    locator=${VERTICAL_FEATURED_IMAGE}