class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def create
    @author = Author.new(author_params)
    @author.save
    if @author.errors.any?
      render :'authors/new'
    else
      redirect_to @author
    end
  end

  def show
    @author = Author.find_by(id: params[:id])
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find_by(id: params[:id])
  end

  def update
    @author = Author.update(params[:id],author_params)
    @author.save
    if @author.errors.any?
      render 'edit'
    else
      redirect_to author_path
    end
  end

  def delete
    @author = Author.find(params[:id])
  end
  def destroy
    Author.find(params[:id]).destroy
    redirect_to authors_path
  end
  private
    def author_params
      params.require(:author).permit(:name,:bio,:dob)
    end
end
