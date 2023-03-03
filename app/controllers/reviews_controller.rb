class ReviewsController < ApplicationController
  before_action :set_inflatable, only: %i[new create]
  def new
    @inflatable = Inflatable.find(params[:inflatable_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.inflatable = @inflatable
    if @review.save
      redirect_to inflatable_path(@inflatable)
    else
      render "inflatables/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to inflatable_path(@review.inflatable), status: :see_other
  end

  private

  def set_inflatable
    @inflatable = Inflatable.find(params[:inflatable_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
