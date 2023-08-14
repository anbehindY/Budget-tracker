class CategoryController < ApplicationController
  def index
    return unless user_signed_in?
    @categories = current_user.categories
  end
end
