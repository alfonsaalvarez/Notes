class ImagesController < ApplicationController
  def index
  end

  def new
  end

  def show
    @id = params[:id]
    @image = Image.find(@id)
  end

  def create
    @image = Image.new(image_params)
    #image_params[:image]=Base.helpers.asset_path(image_params[:image])
    params[:image_file_name]=params[:asset_path]

    if @image.save
      redirect_to :action => :show, :id => @image.id
    else
      flash[:alert] = "Error uploading image"
      render 'new'
    end
  end

  private
  def image_params
    params.require(:image).permit(:image)
  end
end
