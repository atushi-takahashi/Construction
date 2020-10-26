class WelcomeController < ApplicationController

  before_action :timeline, only: [:top]

  def top
  end

  def about
  end

end
