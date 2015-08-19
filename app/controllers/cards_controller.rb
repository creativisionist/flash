class CardsController < ApplicationController
  def show
    @card = Card.find_by strong_params
  end

  def show_back
    @card = Card.find_by strong_params
  end

  private

  def strong_params
    params.permit(:id)
  end
end
