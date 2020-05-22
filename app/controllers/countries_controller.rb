class CountriesController < ApplicationController
  def index
  	all_countries = Country.all
  	
  	limit = params[:limit].to_i
  	limit = rand(5..25) if limit.zero?

  	@countries_to_display = all_countries.sample limit
  	@countries_to_display.sort!{|a,b| a["name"] <=> b["name"]}

  end
end
