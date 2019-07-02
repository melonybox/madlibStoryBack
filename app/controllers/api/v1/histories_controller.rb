class Api::V1::HistoriesController < ApplicationController
  def index
    histories = History.all
    render json: histories
  end

  def create
    chapter = History.new(user_id: params[:user_id], madlib_id: params[:madlib_id], placeHolderFilled: params[:placeHolderFilled])

    if chapter.save
			render json: chapter
		else
			render json: {errors: chapter.errors.full_messages}
		end
	end
end
