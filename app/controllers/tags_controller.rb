class TagsController < ApplicationController
def index
  @tag = Tag.all
  end

def show
  @tag = Tag.find(params[:id])
end

def destroy
 @tag = Tag.find(params[:id])
 @tag.destroy(article_params)

 flash.notice = "Tag '#{@tag.title}' Deleted!"

redirect_to tag_path(@tag)

end
end
