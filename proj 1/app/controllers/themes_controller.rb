class ThemesController < ApplicationController
  def new
    @theme=Theme.new
  end

  def create
    @theme = current_user.themes.build(theme_params)
    if @theme.save
       redirect_to themes_new_path
    else
       redirect_to themes_new_path
    end
  end

  def show
    @solution = Solution.new
    @theme = Theme.find(params[:id])
  end
  def index
    @theme = Theme.all
  end
  

  private
    def theme_params
      params.require(:theme).permit(:title, :category, :problem, :status)
    end
end
