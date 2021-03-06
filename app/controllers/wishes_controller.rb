class WishesController < ApplicationController
before_action :authorize, only: :destroy
  def index
     @wishes = Wish.paginate(:page => params[:page], :per_page => 4)
  end

  def new
    @wish = Wish.new
  end

  def show
    @wish = Wish.find(params[:id])
  end

  def create
  @wish = Wish.new(wish_params)
  if @wish.save
    redirect_to @wish
  else
    render 'new'
  end

  def destroy
    Wish.find(params[:id]).destroy
    redirect_to wishes_url
  end
end


private

def wish_params
  params.require(:wish).permit(:user_name, :feedback)
end
end
