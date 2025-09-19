*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723
${AUTOMATION_NAME}    UIAutomator2
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    16
${DEVICE_NAME}    sdk_gphone64_arm64
${UDID}    emulator-5554
${APP_PACKAGE}    ru.afisha.android    
${APP_ACTIVITY}    ru.afishaog.android.presentation.app.AppActivity


*** Keywords ***
Open App
    OpenApplication  
    ...    remote_url=${APPIUM_SERVER} 
    ...    automationName=${AUTOMATION_NAME}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    udid=${UDID}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}