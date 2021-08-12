describe 'fazer uma requisicao' do 
    it 'post' do
        @body = {
            "usuarionome": "raphaaa13094",
            "usuariologin": "raphaaa13094",
            "usuariosenha": "123456",
          }.to_json
          @request = Contato.post('/usuario', body: @body)
        puts @request 
    end
end