class AnimalsController < ApplicationController
  before_action :set_animal, only: %i[show webcam]

  def show
    @markers = @animal.markers.map do |marker|
      {
        latitude: marker.latitude,
        longitude: marker.longitude,
        marker_info_html: render_to_string(partial: "marker_info", locals: {marker: marker})
      }
    end
  end

  def webcam
  end

  private

  def set_animal
    @animal = Animal.friendly.find(params[:id])
  end
end
