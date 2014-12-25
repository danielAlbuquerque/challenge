class TagsController < ApplicationController
  def show
  	@tag = Tag.find params[:id]
  	@posts = Tag.where(tag: @tag.tag).includes(:post)
  end
end
