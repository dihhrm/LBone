class Agendamento < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :item_id, :booking_id, :agendamento_date

  belongs_to :item
  belongs_to :booking

end
