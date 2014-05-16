class UsersController < ApplicationController
  def new
  end

  def show
  end

  def index
  	@user = current_user
  	@categories = Category.all
  	@numCat = Category.count
  	@myscores = Array.new(@numCat) 
  	for i in 1..@numCat
  		@myscores[i - 1] = Score.find_by_user_id_and_cat_id(@user.id,i).score
  	end 
  	@myscores = @myscores.map{|x| x.to_i}
  end
end
