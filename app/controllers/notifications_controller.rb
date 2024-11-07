class NotificationsController < ApplicationController

  def update
    notification = current_user.notifications.find(params[:id])
    notification.update(read: true)
    case notification.notifiable
    when "Book"
      redirect_to book_path(notification.notifiable)
    else
      redirect_to user_path(notification.notifiable.user)
    end
  end

end
