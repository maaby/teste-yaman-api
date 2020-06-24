require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'

@rspec_yml = YAML.load_file("#{Dir.pwd}/support/rspec.yml")
@ambiente = @rspec_yml['ambiente']
CONFIG = YAML.load_file("#{Dir.pwd}/support/data/#{@ambiente}.yml")

require_relative '../services/consulta_service.rb'
require_relative '../services/criar_service.rb'


RSpec.configure do |config|

  include Consulta
  include Criar
  config.color = true
  config.formatter = :documentation

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end
