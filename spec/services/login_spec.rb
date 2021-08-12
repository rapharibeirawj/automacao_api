describe 'cadastrando' do 
    it 'post' do
        @body = {
            "usuariologin": "raphaaa13094",
            "usuariosenha": "123456",
      }.to_json
      @request = Contato.post('/login', body: @body)
    puts @request 
    end
end