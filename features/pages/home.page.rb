class HomePage < SitePrism::Page 

    set_url ''
    element :userName, :xpath, "/html/body/div[5]/div[3]/div/div/div[2]/div/div/div/div/div[1]/div[1]/a/div[2]"
    element :navBarHome, :xpath, "/html/body/div[5]/header/div/nav/ul/li[1]/a/span"
    element :myIcon, :xpath, "/html/body/div[5]/header/div/nav/ul/li[6]/div/button/span" 

    def checkLoginSuccessful
        expect(userName.text).to eql "Caua Cruz"
        expect(navBarHome.text).to eql "Início"
        expect(myIcon.text).to eql "Eu"
    end

end
