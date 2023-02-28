class InflatablesController < ApplicationController
  before_action :set_inflatable, only: [:show, :edit, :update, :destroy]
  def index
    @inflatables = Inflatable.all
  end

  def show
  end

  def new
    @inflatable = Inflatable.new
  end

  def create
    @inflatable = Inflatable.new(inflatable_params)
    @inflatable.save
    redirect_to inflatables_path(@inflatable)
  end

  def edit
  end

  def update
    @inflatable.update(inflatable_params)
    redirect_to inflatables_path

  end

  def destroy
    @inflatable.destroy
    redirect_to inflatables_path, status: :see_other
  end

  private

  def inflatable_params
    params.require(:inflatable).permit(:title, :description, :category, :price)
  end

  def set_inflatable
    @inflatable = Inflatable.find(params[:id])
  end
end
