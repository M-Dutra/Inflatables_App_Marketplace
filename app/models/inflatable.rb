class Inflatable < ApplicationRecord
  belongs_to :user
  before_action :set_inflatable, only [:show, :edit, :update, :destroy]
  def index
    @inflatables = Inflatable.all
  end

  def show
  end

  def new
  end

  def create
    @inflatable = Inflatable.new(inflatable_params)
    @inflatable.save
    redirect_to inflatable_path(@inflatable)
  end

  def edit
  end

  def update
    @inflatable.update(inflatable_params)
    redirect_to xxxxx_path
  end

  def destroy
    @inflatable.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def inflatable_params
    params.require(:inflatable).permit(:title, :description)
  end

  def set_inflatable
    @inflatable = Inflatable.find(params[:id])
  end
end
