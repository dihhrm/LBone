# -*- encoding : utf-8 -*-
class InputsController < InheritedResources::Base
	autocomplete :item, :name, :full => true
	actions :all, :except => [:show, :edit]

	def index
		@input = Input.new
		@inputs = Input.all
	end

	def create
		@input = Input.new(params[:input])
		if @input.save			
			respond_to do |format|
				flash[:notice] = "Operação realizada com sucesso."
				format.html { redirect_to inputs_path }
				format.js
			end
		else
			respond_to do |format|
				flash[:notice] = "Oops! Ocorreu um erro e o registro não pode ser salvo"
				format.html { redirect_to inputs_path }
				format.js
			end
		end
	end

end
