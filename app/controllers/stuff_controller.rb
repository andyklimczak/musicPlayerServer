class StuffController < ApplicationController
  def check
    render json: Date.now
  end
end
