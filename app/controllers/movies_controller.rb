class MoviesController < ActionController::Base

  def index
      @list_of_actors = Actor.all
      @list_of_directors = Director.all
      @list_of_movies = Movie.all
  end

  def actors
    @list_of_actors = Actor.all
  end


  def actorsid
    @actor = Actor.find(params["id"])
  end

  def directors
    @list_of_directors = Director.all
  end


  def directorsid
    @director = Director.find(params["id"])
  end

  def movies
    @list_of_movies = Movie.all
  end


  def moviesid
    @movie = Movie.find(params["id"])
  end

  def delete_director
    @director = Director.find(params["id"])
    @director.destroy
    redirect_to("http://localhost:3000/")
  end

  def delete_actor
    @actor = Actor.find(params["id"])
    @actor.destroy
    redirect_to("http://localhost:3000/")
  end

  def delete_movie
    @movie = Movie.find(params["id"])
    @movie.destroy
    redirect_to("http://localhost:3000/")
  end



end
