class CarpetsController < ApplicationController
  before_action :set_carpets, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @carpets = Carpet.search_by_details(params[:query])
    else
      @carpets = Carpet.all.reverse
    end
  end

  def show
  end

  def new
    @carpet = Carpet.new
  end

  def create
    @carpet = Carpet.new(carpet_params)
    @carpet.user = current_user
    @carpet.save!
    redirect_to carpet_path(@carpet)
  end

  def edit
  end

  def update
    @carpet.update(carpet_params)
    redirect_to carpet_path(@carpet)
  end

  def destroy
    @carpet.destroy
    redirect_to carpets_path, status: :see_other
  end

  private

  def carpet_params
    params.require(:carpet).permit(:name, :description, :condition, :address, :available, :user_id, :photo, :price)
  end

  def set_carpets
    @carpet = Carpet.find(params[:id])
  end
end
