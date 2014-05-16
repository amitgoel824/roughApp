class StaticPagesController < ApplicationController
skip_before_filter :verify_authenticity_token

  def catogories
  	@catogories = Category.all
  end


  def score
  	@score = 0
  	@change = 0
  	if params[:ans1] == params[:answer1]
  			@score = @score + 5
  		end
  		if params[:ans2] == params[:answer2]
  			@score = @score + 5
  		end

  	@user = current_user
  	@highScore = Score.find_by_user_id_and_cat_id(@user.id,params[:categoryId])
  	if @score > @highScore.score
  		@highScore.score = @score
  		@change = 1
  		@highScore.save
  	end
  end
end
