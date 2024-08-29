class LoginPage < SitePrism::Page 

    set_url ''
    element :emailField,  :id, "username"
     element :passwordField,  :id, "password"
      element :loginButton,  :xpath, "/html/body/div/main/div[2]/div[1]/form/div[3]/button"

      element :erroMensage, :id, "error-for-password"

      def userLogin(email, password)
        emailField.set (email)
        passwordField.set (password)
        loginButton.click 
      end

      def failLogin (invalid_email, invalid_password)
        emailField.set(invalid_email)
        passwordField.set(invalid_password)
        loginButton.click
    end

      def showErro 
        expect(erroMensage.text).to eql "E-mail ou senha incorreta. Tente novamente ou crie uma conta ."

      end
  end