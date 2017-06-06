class MangasController < ApplicationController
  def index
    @mangas = Manga.all

    render("mangas/index.html.erb")
  end

  def show
    @manga = Manga.find(params[:id])

    render("mangas/show.html.erb")
  end

  def new
    @manga = Manga.new

    render("mangas/new.html.erb")
  end

  def create
    @manga = Manga.new

    @manga.user_id = params[:user_id]
    @manga.image = params[:image]
    @manga.year = params[:year]
    @manga.author = params[:author]
    @manga.character = params[:character]
    @manga.magazine = params[:magazine]
    @manga.title = params[:title]

    save_status = @manga.save

    if save_status == true
      redirect_to("/mangas/#{@manga.id}", :notice => "Manga created successfully.")
    else
      render("mangas/new.html.erb")
    end
  end

  def edit
    @manga = Manga.find(params[:id])

    render("mangas/edit.html.erb")
  end

  def update
    @manga = Manga.find(params[:id])

    @manga.user_id = params[:user_id]
    @manga.image = params[:image]
    @manga.year = params[:year]
    @manga.author = params[:author]
    @manga.character = params[:character]
    @manga.magazine = params[:magazine]
    @manga.title = params[:title]

    save_status = @manga.save

    if save_status == true
      redirect_to("/mangas/#{@manga.id}", :notice => "Manga updated successfully.")
    else
      render("mangas/edit.html.erb")
    end
  end

  def destroy
    @manga = Manga.find(params[:id])

    @manga.destroy

    if URI(request.referer).path == "/mangas/#{@manga.id}"
      redirect_to("/", :notice => "Manga deleted.")
    else
      redirect_to(:back, :notice => "Manga deleted.")
    end
  end
end
