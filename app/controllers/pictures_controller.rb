class PicturesController < ApplicationController
  # before_action :set_picture, only: [:show, :edit, :update, :destroy]
  def new
    @picture = Picture.new
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if @picture.save
      redirect_to @picture, notice: 'Picture was successfully created.'
    else
      render :new
    end
  end

  def show
    @picture = Picture.find(params[:id])
    render 'show'
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

    private
    def picture_params
      params.require(:picture).permit(:title, :description, :image)
    end
end
