class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def timeline
    posts =  Post.all.order(created_at: :desc)
    questions = Question.all.order(created_at: :desc)
    @timeline = posts | questions
    @timeline.sort!{ |a, b| b.created_at <=> a.created_at }
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:email,:name])

    devise_parameter_sanitizer.permit(:sign_in,keys:[:name])
  end

end
