class AnimalsController < ApplicationController
  before_action :set_animal, only: :show

  def show
  end

  private

  def set_animal
    @animal = Animal.friendly.find(params[:id])
  end
end
