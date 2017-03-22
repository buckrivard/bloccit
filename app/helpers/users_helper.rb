module UsersHelper
	def has_posts(user)
		if user.posts.count == 0
			"#{@user.name} hasn't posted anything just yet."
		else
			render @user.posts
		end
	end

	def has_comments(user)
		if user.comments.count == 0
			"#{@user.name} hasn't commented on anything yet"
		else
			render @user.comments
		end
	end
end
