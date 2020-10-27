class FavoritesController < ApplicationController
  
  before_action :set_variables
  
  def post_favorite
    favorite = current_user.favorites.new(post_id: @post.id)
    favorite.save
  end
  
  def post_unfavorite
    favorite = current_user.favorites.find_by(post_id: @post.id)
    favorite.destroy
  end
  
  def question_favorite
    favorite = current_user.favorites.new(question_id: @question.id)
    favorite.save
  end
  
  def question_unfavorite
    favorite = current_user.favorites.find_by(question_id: @question.id)
    favorite.destroy
  end
  
  private
  
  def set_variables
    @post = Post.find(params[:post_id])
    @post_id_name = "#favorite-link-#{@post.id}"
    @question = Question.find(params[:question_id])
    @question_id_name = "favorite-link-#{@question.id}"
  end
  
  
end