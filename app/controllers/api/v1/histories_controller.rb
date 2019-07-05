class Api::V1::HistoriesController < ApplicationController
  def index
    histories = History.all
    render json: histories
  end

  def create
    chapter = History.new(user_id: params[:user_id], madlib_id: params[:madlib_id], placeHolderFilled: params[:placeHolderFilled])
    exist = History.find_by(user_id: params[:user_id], madlib_id: params[:madlib_id])
    user = User.find(params[:user_id])

    if !!exist
      render json: {errors: "Chapter is Already Saved."}
    else
      if chapter.save
        if !!user[chapter]
          user.update(username: user[:username], password_digest: user[:password_digest], current_chapter: 1)
        else
          user.update(username: user[:username], password_digest: user[:password_digest], current_chapter: (user[:current_chapter].to_i + 1))
        end
  			render json: chapter
  		else
  			render json: {errors: chapter.errors.full_messages}
  		end
    end
	end

  def update
    chapter = History.find(params[:id])

    if chapter.update(user_id: params[:user_id], madlib_id: params[:madlib_id], placeHolderFilled: params[:placeHolderFilled])
      render json: chapter
    else
      render json: {errors: chapter.errors.full_messages}
    end
  end
end
