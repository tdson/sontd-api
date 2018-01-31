class HomeController < ApplicationController
  def index
    render json: {message: "Ping Pong!!!"}, status: 200
  end
end
