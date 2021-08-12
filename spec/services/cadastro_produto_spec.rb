describe 'cadastrar produto' do
    it 'post' do
        @body = {
            "produtoid": 123456789,
            "produtonome": "Produto de teste",
            "produtovalor": 200.00,
            "produtocores": [
              "preto", "branco",
            ],
            "componentes": [
              {
                "componentenome": "Controle",
                "componentequantidade": 1,
              },
              {
                "componentenome": "Memory Card",
                "componentequantidade": 1,
              },
            ],
          }.to_json
          @headers = {
            Accept: 'application/vnd.taskmanager.v2', 
            'Content-Type': 'application/json',
            token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQiOiIzMjE2IiwidXN1YXJpb2xvZ2luIjoicmFwaGFhYTEzMDk0IiwidXN1YXJpb25vbWUiOiJyYXBoYWFhMTMwOTQifQ.KJ7-SbsVauTubNbjHoxD7F7iSozlgCyS_b_eDPbvWvE"
          }
          @request = Contato.post('/produto', body: @body, headers: @headers)
        puts @request 
        
        end
    end