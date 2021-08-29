***Settings***
Documentation       Arquivo base para configuração de ambiente  

Resource            steps.robot

Library             AppiumLibrary


***Keywords***
Abrir App
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Celular
    ...                 app=${EXECDIR}/app/nuclone.apk 
    ...                 udid=emulator-5554


    Wait Until Element Is Visible       accessibility_id=card-hero       15

          
Fechar App
    Capture Page Screenshot
    Close Application