class IdeasController < ApplicationController
  def new
   @idea = Idea.new
   @category = Category.all
   @ideas = current_user.ideas.all
  end
  
  def create
    @idea = current_user.ideas.build(idea_params)
    if @idea.save
       redirect_to root_path
    else
       redirect_to ideas_new_path
    end
  end

  def show
    @idea = Idea.find(params[:id])
  end
  
  def update
    @idea = Idea.find(params[:id])
    if @idea.update_attributes(idea_params)
       if current_user.email.start_with?("tcs")
         redirect_to pages_show_path
       else 
         redirect_to ideas_new_path
       end
    else
       redirect_to pages_show_path
    end
  end

  private
    def idea_params
      params.require(:idea).permit(:title, :category_id, :description, :status)
    end
end
