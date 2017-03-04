class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_score

  private
  def set_score
  	session[:score] ||= 0
  end

end
