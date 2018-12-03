module CurrentCart
  extend ActiveSupport::Concern

  private
  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end

  def counter_index_store
    if session[:counter].nil?
      session[:counter]=1
    else
      session[:counter]+=1
    end
  end
end