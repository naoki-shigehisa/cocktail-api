class Api::V1::ColorsController < ApplicationController
  def index
    @colors = Color.all
  end
end
