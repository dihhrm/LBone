# -*- encoding : utf-8 -*-
class ItemsController < InheritedResources::Base
	actions :all, except: [:show]
 	

 	def index
 		@items = Item.all
 		@outputs = Output.all
 		@inputs = Input.all	
 	end

	# Calcular o total de Itens, Saidas e Entradas  
	def calculaTotal(valor)
		quantidade = 0
		valor.map { |i| quantidade += i.amount } unless valor.blank? || valor.nil?
		return quantidade
	end

	# Calcular o total de Saidas e Entradas  
	def calculaInpOut(valor)
		quantidade = 0
		valor.map { |i| quantidade += i.value } unless valor.blank? || valor.nil?
		return quantidade
	end


	# Transformo o metodo calculaTotal em um helper para ser chamado direto na view
	helper_method :calculaTotal, :calculaInpOut
end
