class StuffController < ApplicationController
  def check
    render json: DateTime.now.to_s
  end
end
