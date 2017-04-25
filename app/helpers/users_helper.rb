module UsersHelper
  def user_avatar_url(user)
    # if user
      if user.facebook_picture_url.present?
        user.facebook_picture_url
      else
        "http://placehold.it/30x30"
      end
    # else
    #   "http://placehold.it/30x30"
    # end
  end
end
