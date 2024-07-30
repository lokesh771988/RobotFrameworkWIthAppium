*** Settings ***
Documentation  Simple example using AppiumLibrary
Library  AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   11

*** Test Cases ***
Should send keys to search box and then check the value
  Open Test Application
  click element    accessibility_id=Create new contact


*** Keywords ***
Open Test Application
  Open Application  http://127.0.0.1:4724  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  appPackage=com.android.contacts  appActivity=com.android.contacts.activities.PeopleActivity