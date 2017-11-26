def current_user
  if session[:user_id]
    return User.find(session[:user_id])
  else
    return nil
  end
end

def order
  if session[:order_id]
    Order.find(session[:order_id])
  end
end
