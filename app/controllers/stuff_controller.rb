class StuffController < ApplicationController
  def check
    render json: Date.new.to_s
  end
end
