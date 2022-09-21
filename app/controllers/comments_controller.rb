class CommentsController < ApplicationController

  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = Comment.new(comment_params)
    if @comment.save!
        redirect_to prototype_path(@comment.prototype.id)
    else
      # @comment = @comment.prototype.includes(:user)
      render 'prototypes/show'
    end
    # redirect_to "/prototypes/#{@comment.prototype.id}"
  end


  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
