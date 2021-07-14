*** Settings ***
Library         AppiumLibrary   timeout=30   run_on_failure=No Operation
Library         OperatingSystem
Library         String
Library         Collections
Library         Process
Library         pabot.PabotLib

*** Variable ***  

*** Keywords ***
Setup Test
    ${package}=    Set Variable        com.google.android.calculator
    ${appium_server}    Set Variable    http://127.0.0.1:4444/wd/hub

    Run Keyword If    '${appName}'=='default'    Open Application    ${appium_server}    platformName=Android    appPackage=${package}    appActivity=com.android.calculator2.Calculator   
    ...    ELSE         Open Application    ${appium_server}    platformName=Android    appPackage=${package}    appActivity=com.android.calculator2.Calculator    applicationName=${appName}

Teardown Test
    Close Application