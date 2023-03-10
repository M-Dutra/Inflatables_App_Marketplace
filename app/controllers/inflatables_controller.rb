class InflatablesController < ApplicationController
  before_action :set_inflatable, only: [:show, :edit, :update, :destroy]
  def index
    @inflatables = Inflatable.all
  end

  def show
    @booking = Booking.new
    # suggestions variable
    # where you get category of inflatable
    # limit 4
    # active records query
    # exclude from search the one already shown
    # @inflatables = Inflatable.where(category: @inflatable.category).limit(4).offset(1)
    @inflatables = Inflatable.where(category: @inflatable.category).where.not(id: @inflatable.id).limit(4)
  end

  def new
    @inflatable = Inflatable.new
  end

  def create
    @inflatable = Inflatable.new(inflatable_params)
    @inflatable.user = current_user
    if @inflatable.save
      redirect_to inflatables_path
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
