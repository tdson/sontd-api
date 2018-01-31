class Api::V1::ManufacturersController < ApplicationController
  def index
    render json: {data: ActiveModel::Serializer::ArraySerializer.new(Manufacturer.all)}, status: 200
  end
end
