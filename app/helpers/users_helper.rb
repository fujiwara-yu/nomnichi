module UsersHelper
  def user_avatar_icon_tag(user, size = 50)
    if user and avatar_url = user.avatar_url
      sep  = (/\?/ =~ avatar_url) ? "&" : "?"
      img  = "#{avatar_url}#{sep}s=#{size}"
      name = user.ident
      image_tag(img, alt: "@#{name}", class: "avatar")
    end
  end
end
