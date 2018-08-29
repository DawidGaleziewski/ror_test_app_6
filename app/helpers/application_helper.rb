module ApplicationHelper
  
  def gravatar_for(user, options = {size: 80}) #md5 hash of users email
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase) #we take email and turn it in md5 hash
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}" #concatenate url
    #https://apidock.com/rails/ActionView/Helpers/AssetTagHelper/image_tag
    image_tag(gravatar_url, alt: user.username, class: "img-circle")
  end
  
end
