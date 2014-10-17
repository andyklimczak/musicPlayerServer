class StuffController < ApplicationController
  def check
    render json: "stuff"
  end
end
