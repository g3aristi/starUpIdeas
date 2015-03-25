class IdeasController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	#http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

	def index
    	@ideas = Idea.all
  	end

	def show
    	@idea = Idea.find(params[:id])
  	end

	def new
		@idea = Idea.new
	end

	def edit
  		@idea = Idea.find(params[:id])
	end

	def create
	  @idea = current_user.ideas.build(idea_params)
	  if @idea.save
	  	flash[:success] = "Idea created!"
    	redirect_to @idea # redirect_to: tells the browser to issue another request.
  	  else
    	render 'new' # same request is used as the form submission
  	  end
	end

	def update
	  @idea = Idea.find(params[:id])
	 
	  if @idea.update(idea_params)
	    redirect_to @idea
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @idea = Idea.find(params[:id])
	  @idea.destroy
	 
	  redirect_to ideas_path
	end
	 
	private
	def idea_params
	    params.require(:idea).permit(:title, :description)
  	end
end
