class Api::V1::ToolsController < ApplicationController
  def index
    @tools = Tool.all.preload(:recipes)
  end
end
