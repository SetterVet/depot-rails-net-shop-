class StoreController < ApplicationController
  include CurrentCart
  def index
    @products = Product.order(:title)
    counter_index_store
  end
end
