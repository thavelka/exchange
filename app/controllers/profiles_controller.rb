class ProfilesController < ApplicationController
  def show
    @user = User.find_by_netID(params[:id])
  end

  def edit
  end
end
