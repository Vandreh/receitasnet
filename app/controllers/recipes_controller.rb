class RecipesController < ApplicationController
	def index
		#@recipes = Recipe.all
		@recipes = Recipe.created_at
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def update
		#fail
		@recipe = Recipe.find(params[:id])
		if  @recipe.update(recipe_params)
			redirect_to @recipe, notice:"Receita modificada com sucesso!"
		else
			render :edit
		end

	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
		if  @recipe.save
			#flash[:notice] = "Receita criada com sucesso!"
			redirect_to @recipe, notice:"Receita criada com sucesso!"
		else
			render :new
		end
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
		redirect_to recipes_url, alert:"Receita eliminada com sucesso!"
	end

	private
		def recipe_params
			params.require(:recipe).permit(:name, :stuff, :calories, :prepare_mode, :cost, :kind, :portion, :duration, :poster)
		end

end 
