class TagsController < ApplicationController


	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def edit
		@article = Tag.find(params[:id])
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "Tag #{@tag.name}  deleted!"
	end
end
