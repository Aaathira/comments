class PagesController < ApplicationController
    def show
      @idea = Idea.all
    end

    def approved_idea
      @idea_approved=Idea.where(status: 'Approved').all
    end
end 
