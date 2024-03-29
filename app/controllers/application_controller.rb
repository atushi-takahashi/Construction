class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    user_path(current_user)
  end
  
  def timeline_all
    posts =  Post.all.order(created_at: :desc)
    questions = Question.all.order(created_at: :desc)
    @timeline_all = posts | questions
    @timeline_all.sort!{ |a, b| b.created_at <=> a.created_at }
  end
  
  

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:email,:name])

    devise_parameter_sanitizer.permit(:sign_in,keys:[:name])
  end

end
