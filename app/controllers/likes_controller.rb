class LikesController < ApplicationController
    def index
    end
    def show
	redirect_to :back
    end
    def new
	redirect_to "/likes/create"
    end
    def create
	@like=Like.new
	@like.user_id=current_user.id
	@like.post_id=params[:post_id]
	@like.save
	redirect_to :root
    end
    def destroy
	@like=Like.find(params[:like_id])
	@like.destroy
	redirect_to :back
    end
end
