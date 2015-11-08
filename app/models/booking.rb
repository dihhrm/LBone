class Booking < ActiveRecord::Base
  attr_accessible :professor, :discipline, :classe, :students, :schedule, :item_name, :id_item, :booking_time

  has_many :items, through: :agendamentos
  has_many :agendamentos, as: :booking

  accepts_nested_attributes_for :items, :agendamentos

  attr_accessor :item_name, :id_item

end
