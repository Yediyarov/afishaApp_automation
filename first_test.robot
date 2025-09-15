*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
First Test Case
    Open App

    Sleep    5s
    
    Close Application


*** Keywords ***
Open App
    OpenApplication  
    ...    remote_url=http://127.0.0.1:4723 
    ...    automationName=UIAutomator2
    ...    platformName=Android
    ...    platformVersion=16
    ...    deviceName=sdk_gphone64_arm64
    ...    udid=emulator-5554
    ...    appPackage=ru.afisha.android
    ...    appActivity=ru.afishaog.android.presentation.app.AppActivity 