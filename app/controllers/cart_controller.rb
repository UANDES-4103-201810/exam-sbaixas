class CartController < ApplicationController
	def add_to_cart
		@crust = Crust.find(cart_params[:crust_id])
		@recipe = Recipe.find(cart_params[:recipe_id])
		@pizza = Pizza.new(crust: @crust, recipe: @recipe)
		if !@cart.include?(@pizza)
        	@cart.push(@pizza)
        	respond_to do |format|
		      format.html { redirect_to cart_show_cart_path}
		      format.json { head :no_content }
		    end   
        end

	end

	def delete_item
		puts(params["id"])
		@cart.delete(@cart.index(params["id"].to_i))
		redirect_to cart_show_cart_path
		   
	end

	def show_cart
	end

	def cart_params
      params.require(:pizza).permit(:crust_id, :recipe_id)
    end
end
