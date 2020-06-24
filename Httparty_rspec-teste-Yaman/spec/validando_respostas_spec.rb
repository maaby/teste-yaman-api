# describe ' fazer uma requisição' do
#     it 'get' do
#         @melhor_opcao = Contato.get('/contacts/27')
#         #puts @melhor_opcao
#         # puts @melhor_opcao.code
#         # expect(@melhor_opcao.code).to eq 200
#         puts @melhor_opcao.body
#         # puts @melhor_opcao.parsed_response['data']['attributes']['name']
#         expect(@melhor_opcao.parsed_response['data']['attributes']['name']).to eq 'teste 17'
#         expect(@melhor_opcao.parsed_response['data']['attributes']['last-name']).to eq 'teste17 msmss'
#         expect(@melhor_opcao.parsed_response['data']['attributes']['email']).to eq 'testemsm17@gmail.com'
#         expect(@melhor_opcao.parsed_response['data']['attributes']['age']).to eq 68
#     end
# end