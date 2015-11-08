# -*- encoding : utf-8 -*-
class OutputsController < InheritedResources::Base

	autocomplete :item, :name, :full => true
	actions :all, :except => [:show, :edit]

	def index
		@output = Output.new
		@outputs = Output.all
	end

	def create
		@output = Output.new(params[:output])

		if @output.save
			respond_to do |format|
				flash[:notice] = "Operação realizada com sucesso."
				format.html { redirect_to outputs_path }
				format.js
			end
		else
			respond_to do |format|
				flash[:notice] = "Oops! Ocorreu um erro e o registro não pode ser salvo"
				format.html { redirect_to outputs_path }
				format.js
			end
		end

	end

end
