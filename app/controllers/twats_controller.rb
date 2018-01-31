class TwatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @twats = Twat.all
  end

  def new
    @twat = Twat.new
  end

  def create

  end


  private

  def twat_params
    params.require(:twat, :user).permit(:user_id, :content)
  end

end
