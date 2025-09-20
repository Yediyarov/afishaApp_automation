*** Settings ***
Resource    ../core/all.resource
Resource    Onboarding/onboarding.resource

*** Keywords ***
Launch App
    [Documentation]    Запустить приложение
    launcher.Open App

Launch App With Geo
    [Documentation]    Запустить приложение с геолокацией
    Launch App
    onboarding.Allow Location And Confirm City

Close App
    [Documentation]    Закрыть приложение
    Close Application

Suite Setup
    [Documentation]    Действия перед запуском тест-сьюита
    Set Appium Timeout    20s

Suite Teardown
    [Documentation]    Действия после завершения тест-сьюита
    Pass Execution    message=Прогон завершен