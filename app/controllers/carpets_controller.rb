class CarpetsController < ApplicationController
  before_action :set_carpets, only: [:show, :edit, :update, :destroy]
  def index
    @carpets = Carpet.all
  end

  def show
  end

  def new
    @carpet = Carpet.new
  end

  def create
    @carpet = Carpet.new(carpet_params)
    @carpet.save
    redirect_to carpets_path
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
    params.require(:carpet).permit(:name, :description, :condition, :address, :available, :user_id)
  end

  def set_carpets
    @carpet = Carpet.find(params[:id])
  end
end