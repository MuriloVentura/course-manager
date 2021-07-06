Scenario: Criar cadastro bem sucedido
    Given: Eu estou deslogado
    And Eu estou na página “Criar cadastro”
    And Não há contas com a senha “CorrectHorseBatteryStaple” e o email “barbie100@hotmail.com”
    When Eu insiro as informações de nome, email e senha, respectivamente “Barbara”, “barbie100@hotmail.com” e “CorrectHorseBatteryStaple”
    And Eu aperto em “Criar conta”
    Then Eu vejo uma mensagem “Conta Criada”
Scenario: Criar cadastro com email já existente
    Given: Eu estou deslogado
    And Eu estou na página “Criar cadastro”
    And Há uma conta com o email “barbie100@hotmail.com”
    When Eu insiro as informações de nome, email e senha, respectivamente “Barbara”, “barbie100@hotmail.com” e “CorrectHorseBatteryStaple”
    And Eu aperto em “Criar conta”
    Then Eu vejo uma mensagem “Email já cadastrado”