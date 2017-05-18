class WelcomeController < ApplicationController
  def index
    # if user_signed_in?
    #   redirect_to shows_path
    # else
    #   redirect_to new_user_session_path
    # end
    redirect_to shows_path
  end
end
