class StuffController < ApplicationController
  def check
    render json: DateTime.now
  end
end
