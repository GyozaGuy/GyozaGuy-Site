class HomeController < ApplicationController
	def index
		@post = Post.last
		@comments = Comment.all.order(:comment_time).limit(12).reverse
	end
end