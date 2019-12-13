module RamenHelper

  def clear_cart
    session[:cart] = []
  end
end
