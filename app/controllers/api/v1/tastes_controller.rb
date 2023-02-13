class Api::V1::TastesController < ApplicationController
  def index
    @tastes = Taste.all
  end
end
