Dado('que o Usuario acesse a tela de login') do
  login.load
   
  end
  
  Quando('ele digitar as credenciais validas') do
    login.userLogin(CREDENTIAL[:user_one][:email], CREDENTIAL[:user_one][:password])
  
end
  
  Entao('deve acessar o site ou aplicativo com sucesso') do
    
    home.checkLoginSuccessful
  end

  Dado('que o  Usuario tente entrar na sistema') do
    login.load
     
    end
    
    Quando('ele Digitar as credencias invalidas') do
      login.failLogin(CREDENTIAL[:invalid_email], CREDENTIAL[:invalid_password])
    
  end
    
    Entao('deve aparecer a mensagem de erro') do
      
      login.showErro
    end
  
    
  
