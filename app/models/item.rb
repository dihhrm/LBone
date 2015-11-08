# -*- encoding : utf-8 -*-
class Item < ActiveRecord::Base
  # Parametros acessiveis para gravação e leitura	
  attr_accessible :name, :amount, :ref_code, :localization, :classification, :description, :additional_info
 
  #Friendly ID (Url amigável)
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  #Validações
  validates_uniqueness_of :name
  validates_presence_of :name, :amount, :ref_code, :localization, :description

  has_many :outputs
  has_many :agendamentos, as: :item
  has_many :bookings, through: :agendamentos

  accepts_nested_attributes_for :bookings, :agendamentos
 

end
