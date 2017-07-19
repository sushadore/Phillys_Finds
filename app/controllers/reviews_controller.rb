class ReviewsController < ApplicationController
  before_action :authorize, only: [:secret]

  def secret
  end
  
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@review.product)
    else
      render :new
    end
  end

  def destroy
  @product = Product.find(params[:product_id])
  @review = Review.find(params[:id])
  @review.destroy
  redirect_to product_path(@review.product)
end

private
  def review_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
