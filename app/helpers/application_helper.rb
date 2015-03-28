module ApplicationHelper
	def avatar_url(user, size, option)
		email_adress = user.email.downcase
		hash = Digest::MD5.hexdigest(email_adress)
		img = "http://www.gravatar.com/avatar/#{hash}?s=#{size}"
		profile = "http://www.gravatar.com/#{hash}"
		if option == "img"
			return img
		elsif option == "profile"
			return profile
		else
			return nil
		end
	end
end
