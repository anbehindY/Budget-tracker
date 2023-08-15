class CategoryController < ApplicationController
  def index
    return unless user_signed_in?
    @categories = current_user.categories
  end

  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.create(category_params)
    if @category.save
      redirect_to category_index_path
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
