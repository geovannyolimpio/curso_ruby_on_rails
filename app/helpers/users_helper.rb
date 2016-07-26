module UsersHelper

  def gravatar_for_email(email, options = { size: 80, class: 'img-circle img-responsive center-block' })
    gravatar_digest = Digest::MD5::hexdigest(email.downcase)
    size = options[:size]
    html_class = options = options[:class]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_digest}?s=#{size}"
    image_tag(gravatar_url, class: html_class)
  end

end
