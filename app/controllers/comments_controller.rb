class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    if !@comment.save
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @comment.errors, status: :unprocessable_entity }
    end

    redirect_to @post
  end


  private
    def comment_params
      params.require(:comment).permit(:body, :name)
    end
end
