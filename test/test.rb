ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require_relative '../app.rb'


include Rack::Test::Methods

def app
    Sinatra::Application
end

describe "Acortador  - page" do
    
    

    it "should return foot" do
        get '/'
        assert_match "<p><b>SYTW - Práctica 2 Realizada por:</b><h1>-> Daniel Nicolás Fernández del Castillo Salazar</h1><h1>-> Jonathan Barrera Delgado</h1></p>", last_response.body
    end
    
    #it "test_styles"
    #    get "/public/css/estilo.css"
    #   assert last_response.ok?
    #end
end

