describe 'buscando produto' do 
    it 'get' do
        @body = {}
        @headers = {
            Accept: 'application/vnd.taskmanager.v2', 
            'Content-Type': 'application/json',
            token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvaWQiOiIzMjE2IiwidXN1YXJpb2xvZ2luIjoicmFwaGFhYTEzMDk0IiwidXN1YXJpb25vbWUiOiJyYXBoYWFhMTMwOTQifQ.KJ7-SbsVauTubNbjHoxD7F7iSozlgCyS_b_eDPbvWvE"
          }
          @request = Contato.get('/produto', body: @body, headers: @headers)
        puts @request 
    end
end

