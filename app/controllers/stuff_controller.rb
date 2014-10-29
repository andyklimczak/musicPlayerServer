class StuffController < ApplicationController
  def check
    render json: Date.new
  end
end
