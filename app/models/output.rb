# -*- encoding : utf-8 -*-
class Output < ActiveRecord::Base
  attr_accessible :title, :description, :value, :date, :item_id
  after_save :removeFromStock

  belongs_to :item

  default_scope :order => "date DESC"

  validates_presence_of :title

  # Após salvar a saida altera a quantidade do item no estoque
  #
  def removeFromStock
  	 
  	item.amount -= self.value	
  	item.save if item.amount > 0
  	
  end
  
end
