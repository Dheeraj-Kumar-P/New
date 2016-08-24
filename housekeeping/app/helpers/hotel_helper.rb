# create helper
module HotelHelper
  def flash_msg
    flash[:success] = 'Successfully updated!!'
    redirect_to action: 'show', id: params[:id]
  end

  def flash_error(error, action)
    flash[:error] = error.message
    redirect_to action: action, id: session[:user_id]
  end
end
