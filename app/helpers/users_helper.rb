module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
<<<<<<< HEAD
def gravatar_for(user)
gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
gravatar_url = "/assets/avatar.png"
image_tag(gravatar_url, alt: user.name, class: "gravatar")
end
=======
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url =
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
>>>>>>> 2b8dbfa4c988c31ac9cbc64eb779280f6f8a5386


end
