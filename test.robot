*** Settings ***
Documentation     Robot to solve the first challenge at rpachallenge.com, which consists of
...               filling a form that randomly rearranges itself for ten times, with data
...               taken from a provided Microsoft Excel file.
Library           Selenium2Library       


*** Variables ***
${Browser}  Chrome
${chromedriver}    /Users/insingh/Documents/chromedriver
${URL}  https://www.youtube.com/

*** Test Cases ***
TC1
    Create Webdriver    ${Browser}    executable_path=${chromedriver}        
    Go To    ${URL}
    Input Text  name:search_query  ted talk
    Click Button  id:search-icon-legacy
