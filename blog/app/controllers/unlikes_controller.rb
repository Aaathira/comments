class UnlikesController < ApplicationController
def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.create(params[:unlike])
    redirect_to post_path(@post)
  end
end
