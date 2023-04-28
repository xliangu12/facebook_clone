class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      redirect_to @picture
    else
      render 'new'
    end
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def index
    @pictures = Picture.all
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update(picture_params)
      redirect_to @picture
    else
      render 'edit'
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    redirect_to pictures_path
  end

  private
    def picture_params
      params.require(:picture).permit(:title, :description, :image)
    end
end

