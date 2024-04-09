class CommentsController < ApplicationController
  before_action :set_post, only: %i[new create]

  def new
    # @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
      # redirect_to restaurant_path(@post)
      redirect_to post_path(@post), notice: 'Comment was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
