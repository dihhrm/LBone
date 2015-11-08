# -*- encoding : utf-8 -*-
class Input < ActiveRecord::Base
  attr_accessible :title, :description, :value, :date, :item_id
  after_save :addInStock

  belongs_to :item

  default_scope :order => "date DESC"

  validates_presence_of :title

  # Após salvar a entrada altera a quantidade do item no estoque
  #
  def addInStock
  	item.amount += self.value	
  	item.save
  else
  	return false
  end

end
