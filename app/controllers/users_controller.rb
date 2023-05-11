class UsersController < ApplicationController
  # skip_before_action :login_required, only: [:new, :create]
  def new
    @user = User.new
  end
end
