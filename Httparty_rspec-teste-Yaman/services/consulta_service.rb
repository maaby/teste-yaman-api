module Consulta
    include HTTParty
    base_uri CONFIG['url_padrao']
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
    'Content-Type': 'application/json'
end
