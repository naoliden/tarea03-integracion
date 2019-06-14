require 'httparty'

class IndexController < ApplicationController
  include HTTParty

  def home
    @response = HTTParty.get(@@url + "?query=#{@@query_inicial}")["data"]["allFilms"]["films"]
  end


  def get_film
    _id = "\"#{params["_id"]}\""
    query = get_film_query(_id)
    @film_response = HTTParty.get(@@url + "?query=#{query}")["data"]["film"]
  end

  def get_character
    _id = "\"#{params["_id"]}\""
    query = get_character_query(_id)
    @response = HTTParty.get(@@url + "?query=#{query}")["data"]["person"]
    puts @response
  end

  def get_starship
    _id = "\"#{params["_id"]}\""
    query = get_starship_query(_id) 
    @response = HTTParty.get(@@url + "?query=#{query}")["data"]["starship"]
  end

  def get_planet
    _id = "\"#{params["_id"]}\""
    query = get_planet_query(_id)
    @response = HTTParty.get(@@url + "?query=#{query}")["data"]["planet"]
  end


end
