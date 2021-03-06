class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :authenticate_user!, except: [:index, :show]
  
  def autocomplete
    render json: Idea.search(params[:search], autocomplete: true).map(&title)    
  end


  def piechart
    @ideas = Idea.all
  end

  def date
    @ideas = Idea.all
  end

  def search
    if params[:search].present?
      @ideas = Idea.search(params[:search])
    else
      @ideas = Idea.all
    end
  end

  def index
    @ideas = Idea.all
  end

  def show
  end

  def new
    @idea = current_user.ideas.build
  end

  def edit
  end

  def create
    @idea = current_user.ideas.build(idea_params)

    respond_to do |format|
      if @idea.save
        format.html { redirect_to @idea, notice: 'Idea was successfully created.' }
        format.json { render :show, status: :created, location: @idea }
      else
        format.html { render :new }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @idea.update(idea_params)
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea }
      else
        format.html { render :edit }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @idea.destroy
    respond_to do |format|
      format.html { redirect_to ideas_url, notice: 'Idea was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @idea.upvote_by current_user
    redirect_to @idea
  end

  def downvote
    @idea.downvote_by current_user
    redirect_to @idea
  end

  private

    def set_idea
      @idea = Idea.find(params[:id])
    end

    def idea_params
      params.require(:idea).permit(:title, :description, :industry, :tags)
    end

end
