class ParksController < ApplicationController

  def index
    @parks = {"Texas": "Big Bend National Park"}
    json_response(@parks)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end