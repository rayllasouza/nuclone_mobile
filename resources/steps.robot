***Settings***
Documentation      Steps para testes



***Variables***
${btn_balance}                  accessibility_id=show-balance
${user_balance}                 accessibility_id=user-balance
${txt_logout}                   SAIR DO APP
${txt_pefil}                    Perfil
${txt_validacao_perfil}         Nome de preferência
${txt_conf_nuconta}             Configurar NuConta
${txt_validacao_nuconta}        Trazer seu salário
${txt_cobrar}                   Cobrar
${txt_validacao_cobranca}       Quanto você quer cobrar?
${cobrar}                       accessibility_id=to-charge
${txt_ind_amigos}               Indicar amigos
${txt_validacao_ind_amigos}     WHATSAPP
${txt_block_card}               Bloquear cartão
${btn_block_card}               BLOQUEAR





***Keywords***
Mostra saldo
    Click Element           ${btn_balance} 

Meu saldo deve ser de
    [Arguments]     ${saldo}
    Wait Until Element Is Visible       ${user_balance}    10
    Element Text Should Be      ${user_balance}     ${saldo}

Arrastar modal de saldo
    Swipe By Percent       50  50   50  80    
    Page Should Contain Text       ${txt_logout}

Acessar Perfil
    Click Text      ${txt_pefil}  
    Wait Until Page Contains   ${txt_validacao_perfil} 

Voltar ao menu
   Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup     
   Page Should Contain Text       ${txt_logout}  

Acessar Configurar NuConta
    Click Text      ${txt_conf_nuconta} 
    Wait Until Page Contains    ${txt_validacao_nuconta}  

Acessar menu Cobrar
    Click Text          ${txt_cobrar} 
    Wait Until Page Contains       ${txt_validacao_cobranca}

Fazer cobrança de R$
    [Arguments]     ${valor}

    Clear Text      ${cobrar}
    Input Value     ${cobrar}       ${valor}

Voltar a pagina inicial
    Click Element       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.TextView
    Wait Until Element Is Visible       accessibility_id=card-hero      15


Acessar menu Indicar amigos
    Click Text     ${txt_ind_amigos} 
    Wait Until Page Contains      ${txt_validacao_ind_amigos}   15
    

Acessar menu Bloquear Cartão
    Swipe By Percent   90  85   10  85 
    Click Text      ${txt_block_card} 
    Wait Until Page Contains    ${btn_block_card}   15

