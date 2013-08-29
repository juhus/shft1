class ProjectsController < ApplicationController
  	before_filter :find_project, only: [:show,:edit,:update,:destroy]
	before_filter :authenticate_admin!, except: :index
	def index
		@projects=Project.all
		respond_to do |format|
			format.js
			format.html
		end
	end
	def create
		@project=Project.create(params[:project])
		redirect_to root_path
	end
	def new
		@project = Project.new
		respond_to do |format|
			format.js
		end
	end
	def show
		@projects=Project.all
	end
	def edit
	  	respond_to do |format|
			format.js
		end
	end
	def update
		@project.update_attributes(params[:project])
		redirect_to root_path
	end
	def destroy
		@project.destroy
		redirect_to root_path
	end
	
	private
		def find_project
		  @project =Project.find(params[:id])
		end
end
