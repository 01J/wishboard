class WishesController < ApplicationController
  def index
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
end

private

def wish_params
  params.require(:wish).permit(:user_name, :feedback)
end
end
