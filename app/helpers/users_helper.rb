module UsersHelper

    def gravatar_for(user, size: 80)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravarar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravarar_url, alt: user.name, class: "gravatar")
    end
end
