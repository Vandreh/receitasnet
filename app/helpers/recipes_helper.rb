module RecipesHelper

	def formata_caloria(recipe)
		if recipe.light?
			content_tag(:strong, "Light (menos de 100 calorias)")
		else
			recipe.calories
		end
	end

	def imagem(recipe)
		if recipe.poster.blank?
			image_tag('sem-imagem.jpg', size:'100')
		else
			image_tag(recipe.poster, size:'100')
		end
	end
end
