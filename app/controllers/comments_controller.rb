class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment.content=params[:content]
    @comment.post_id=params[:post_id]
    @comment.user_id=current_user.id
    @comment.save
    render json: {content: @comment.content, user_name: @comment.user.name, updated_at: @comment.updated_at}
    #redirect_to :back
  end
end
