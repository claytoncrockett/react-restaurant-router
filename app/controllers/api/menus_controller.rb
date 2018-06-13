class Api::MenusController < ApplicationController
  before_action :set_menu, only: [:show, :update, :destroy]
  before_action :set_restaurant

  def index
    render json: @restaurant.menus.all
  end

  def show
    render json: @menu
  end

  def create
    menu = @restaurant.menus.new(menu_params)

    if menu.save
      render json: menu
    else
      render json: menu.errors, status: 422
    end
  end

  def update
    if @menu.update(menu_params)
      render json: @menu
    else
      render json: @menu.errors, status: 422
    end
  end

  def destroy
    @menu.destroy
  end

  private
    def set_restaurant 
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def set_menu
      @menu = Menu.find(params[:id])
    end

    def menu_params
      params.require(:menu).permit(:name, :restaurant_id)
    end
end