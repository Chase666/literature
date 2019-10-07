class ReviewsController < ApplicationController
  def new
      @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    if @review.errors.any?
      render :'reviews/new'
    else
      redirect_to @review
    end
  end

  def update
    @review = Review.update(params[:id],review_params)
    @review.save
    if @review.errors.any?
      render 'edit'
    else
      redirect_to review_path
    end
  end

  def edit
    @review = Review.find_by(id: params[:id])
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to reviews_path
  end

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find_by(id: params[:id])
  end

  private
    def review_params
      params.require(:review).permit(:title,:body,:author_id)
    end
end
