class WidgetsController < ApplicationController
	def index
		@widgets = Widget.all
	end
	def new
		@widget = Widget.new
	end
	def create
		@widget = Widget.create(params[:widget])
		redirect_to root_path
	end
	def show
		@widget = Widget.find(params[:id])
	end
	def destroy
		@widget = Widget.find(params[:id])
		@widget.destroy
    	redirect_to root_path
    end
    def edit
		@widget = Widget.find(params[:id])
	end
	def update
		@widget = Widget.find(params[:id])
		@widget.update_attributes(params[:widget])
		redirect_to root_path
	end
end
