class BiocardsController < ApplicationController

  def index
    @biocards = Biocard.all
  end

  def show
    @biocard = Biocard.find(params[:id])
  end

  def new
    @biocard = Biocard.new
  end

  def create
    @biocard = Biocard.create(biocard_params)
    if @biocard.save
      redirect_to @biocard
    else
      redirect_to :back
    end
  end

  def edit
    @biocard = Biocard.find_by(id: params[:id])
  end

  def update
    @biocard = Biocard.update(params[:id],biocard_params)
    @biocard.save
    if @biocard.errors.any?
      render 'edit'
    else
      redirect_to biocard_path
    end
  end

  def destroy
    Biocard.find(params[:id]).destroy
    redirect_to biocards_path
  end

  private
    def biocard_params
      params.require(:biocard).permit(:description,:name,:year,:author_id,:image)
    end

end
