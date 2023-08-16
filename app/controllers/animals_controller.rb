class AnimalsController < ApplicationController
  before_action :set_animal, only: %i[show webcam]

  def show
  end

  def webcam
  end

  private

  def set_animal
    @animal = Animal.friendly.find(params[:id])
  end
end
