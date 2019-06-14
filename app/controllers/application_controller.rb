class ApplicationController < ActionController::Base
	
	
	@@url = "https://swapi-graphql-integracion-t3.herokuapp.com/"
	@@query_inicial = "{ allFilms { films { title id releaseDate director producers episodeID } } }"


	def get_film_query(_id)
		film_query = "{ film(id: #{_id}) { id episodeID title openingCrawl characterConnection
		 { characters { id name birthYear } } planetConnection { planets{ id name } } starshipConnection
		 { starships{ id name } } } }"
		return film_query
	end

	def get_character_query(_id)
		character_query = "{ person(id: #{_id}){ id name homeworld{ name id } filmConnection{ films{ title id } } } }"
		return character_query
	end

	def get_starship_query(_id)
		starship_query = "{ starship(id: #{_id}){ id name model pilotConnection{ pilots{ name id } } filmConnection{ films{ title id } } } }"
		return starship_query
	end

	def get_planet_query(_id)
		planet_query = "{ planet(id: #{_id}){ id name population residentConnection{ residents{ name id } } 
		filmConnection{ films{ title id } } } }"
		return planet_query
	end

end    
