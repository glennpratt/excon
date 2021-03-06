require 'sinatra'

class App < Sinatra::Base
  set :environment, :production
  enable :dump_errors

  get('/foo') do
    headers(
      "MixedCase-Header" => 'MixedCase',
      "UPPERCASE-HEADER" => 'UPPERCASE',
      "lowercase-header" => 'lowercase'
    )
    'primary content'
  end
end

run App
