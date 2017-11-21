class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]
  
  
  def common
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_power = Faker::Company.bs
    @corp_title = Faker::Name.title
    @corp_power = @corp_power.titleize
  end
  
  def index
  end
  
  def team
    
  end
end
