describe 'Trello' do
    it 'Enviando um get' do
        @validar_consulta = Consulta.get('/')
       
        puts "Code retorno = #{@validar_consulta.code}"
        puts "Name List = #{@validar_consulta.parsed_response['data']['list']['name']}"

        valida_code = expect(@validar_consulta.code).to eq 200
        puts "Validando code = #{valida_code}"
        valida_name = expect(@validar_consulta.parsed_response['data']['list']['name']).to eq 'Professional'
        puts "Validando name = #{valida_name}"

    end
end