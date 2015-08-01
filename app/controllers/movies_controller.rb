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

  def new_movie
  end

  def new_actor
  end

  def new_director
  end

  def create_actor

    a = Actor.new
    a.name = params["the_name"]
    a.dob = params["the_dob"]
    a.bio = params["the_bio"]
    a.image_url = params["the_image_url"]
    a.save

  redirect_to("http://localhost:3000/")
  end


  def create_director

    d = Director.new
    d.name = params["the_name"]
    d.dob = params["the_dob"]
    d.bio = params["the_bio"]
    d.image_url = params["the_image_url"]
    d.save

  redirect_to("http://localhost:3000/")
  end


  def create_movie

    m = Movie.new
    m.title = params["the_title"]
    m.year = params["the_year"]
    m.duration = params["the_duration"]
    m.description = params["the_description"]
    m.image_url = params["the_image_url"]
    m.save

  redirect_to("http://localhost:3000/")

end

  def edit_actor_form

    @actor = Actor.find(params["id"])

  end

  def edit_director_form

  end

  def edit_movie_form

  end

  def update_actor

    @actor = Actor.find(params["id"])

    p = Actor.find(params["id"])
    p.name = params["the_name"]
    p.dob = params["the_dob"]
    p.bio = params["the_source"]
    p.image_url = params["the_image_url"]
    p.save

    redirect_to("http://localhost:3000/")
  end


  def update_director

    @director = Director.find(params["id"])

    d = Director.find(params["id"])
    d.name = params["the_name"]
    d.dob = params["the_dob"]
    d.bio = params["the_source"]
    d.image_url = params["the_image_url"]
    d.save

    redirect_to("http://localhost:3000/")
  end



end
