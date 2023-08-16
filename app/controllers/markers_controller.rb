class MarkersController < ApplicationController
  before_action :set_animal, only: %i[new create]
  before_action :set_marker, only: %i[destroy]

  def new
    @marker = Marker.new
  end

  def create
    @marker = Marker.new(marker_params)
    @marker.animal = @animal
    if @marker.save
      redirect_to animal_path(@animal)
    else
      flash[:alert] = "Couldn't add the marker to the map"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @marker.destroy
    redirect_to animal_path(@marker.animal.id), status: :see_other
  end

  private

  def set_animal
    @animal = Animal.friendly.find(params[:animal_id])
  end

  def set_marker
    @marker = Marker.find(params[:id])
  end

  def marker_params
    params.require(:marker).permit(
      :latitude,
      :longitude,
      :category,
      :title,
      :description,
      :animal_id
    )
  end
end
