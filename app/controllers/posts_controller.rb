class PostsController < ApplicationController
	def index
		@posts = Post.all.limit(12).order(:id).reverse
	end
	def show
		if params[:id]
			@post = Post.find(params[:id])
		end
	end
	private
	def post_params
		params.require(:post).permit(:post_date, :title, :content)
	end
end