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
    if @inflatable.save
      redirect_to inflatables_path(@inflatable)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @inflatable.update(inflatable_params)
      redirect_to inflatables_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @inflatable.destroy
    redirect_to inflatables_path, status: :see_other
  end

  private

  def inflatable_params
    params.require(:inflatable).permit(:title, :description, :category, :price, :photo)
  end

  def set_inflatable
    @inflatable = Inflatable.find(params[:id])
  end
end
