class Api::V1::MadlibsController < ApplicationController
  def index
    madlibs = Madlib.all
    render json: madlibs
  end
end
