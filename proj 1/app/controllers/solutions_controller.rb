class SolutionsController < ApplicationController
  def create
    @solution = current_user.solutions.build(solution_params)
    if @solution.save
       redirect_to themes_index_path
    else
       redirect_to themes_show_path
    end
  end


  def index
  @theme = Theme.all
  @solution = Solution.all
  end

  def show
      @solution = Solution.find(params[:id])
  end

  def update
    @solution = Solution.find(params[:id])
    if @solution.update_attributes(solution_params)
         redirect_to solutions_index_path
    end
  end

  def approved_solution
    @solution_approved = Solution.where(status: 'Approved').all
  end

  private
    def solution_params
      params.require(:solution).permit(:solution, :status, :theme_id)
    end
end
