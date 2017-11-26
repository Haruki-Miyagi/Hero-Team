class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]
  before_action :authenticate_user!, only: [:index, :team]

  def top
  end
  
  def common
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_power = Faker::Company.bs
    @corp_title = Faker::Name.title
    @corp_power = @corp_power.titleize
    
    @rand_num = rand(1..1000)
    @set_num = rand(1..4)
    @bg = rand(1..2)
    
    #Randomly Pick our avatar set
    if @set_num == 1
      @set = "set1"
    elsif @set_num == 2
      @set = "set2"
    elsif @set_num == 3
     @set = "set3"
    else
      @set = "set4"
    end
    
    #Randomly pick our Background set
    if @bg == 1
      @background = "bg1"
    else
      @background = "bg2"
    end
    
    
    @avatar = Faker::Avatar.image(@rand_num, "300x300", "png", @set, @background)
  end
  
  def index
  end
  
  def team
    @team_number = params[:team_number].to_i
  end
  
  
end
