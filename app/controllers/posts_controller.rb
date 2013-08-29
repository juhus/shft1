class PostsController < ApplicationController
	before_filter :find_project, only: [:index, :create, :new]
	before_filter :authenticate_admin!

	def index
		@posts = @project.posts
		respond_to do |format|
			format.js
		end	
	end
	def new
		@post = @project.posts.new
		respond_to do |format|
			format.js
		end	
	end
	def create
		@post = @project.posts.create(params[:post])
		redirect_to root_path
	end
  	private
  		def find_project
  			@project = Project.find(params[:project_id])
  		end
end