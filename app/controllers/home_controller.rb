class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @profiles = Profile.order(level: :desc)
  end
end
