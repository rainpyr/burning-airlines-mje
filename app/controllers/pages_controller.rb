class PagesController < ApplicationController
  # React frontend, so we wont have this token
  skip_before_action :verify_authenticity_token, raise:false

  def home
  end
end
