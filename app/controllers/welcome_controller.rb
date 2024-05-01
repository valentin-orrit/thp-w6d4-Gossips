class WelcomeController < ApplicationController
  def show
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts params[:id]
    @var01 = params[:id]
    puts "$" * 60
  end 
end 