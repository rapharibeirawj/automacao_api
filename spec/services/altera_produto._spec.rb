describe 'buscando produto' do 
    it 'put' do
    @body = {
        "produtonome": "Nintendo DDS",
        "produtovalor": 250.00,
        "produtocores": [
        "preto", "branco",
        ],
        "componentes": [
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
      @request = Contato.put('/produto/19187', body: @body, headers: @headers)
    puts @request 
    end
end
