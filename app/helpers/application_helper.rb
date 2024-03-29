module ApplicationHelper

  def gravatar_for(user, size)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "gravatar rounded-circle")
  end

  def current_user?(user)
    user == current_user
  end
end
