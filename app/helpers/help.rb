def order
  if session[:order_id]
    Order.find(session[:order_id])
  end
end
