class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new # Pour le formulaire de création de commentaire
    @comments = @post.comments.order(created_at: :desc) # Récupère tous les commentaires associés au post
  end

end
