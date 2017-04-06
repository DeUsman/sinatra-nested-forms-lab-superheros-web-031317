require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
    	erb :super_hero
    end

    post '/team' do 
    	@team = Team.new(params[:team])
    	
    	@heroes = params[:team][:members].collect do |hero|
    				Hero.new(hero)
    			 end
    	erb :team
    end
end

