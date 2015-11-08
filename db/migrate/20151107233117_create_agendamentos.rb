class CreateAgendamentos < ActiveRecord::Migration
  def change
    create_table :agendamentos do |t|

      t.belongs_to :item
      t.belongs_to :booking
      t.datetime :agendamento_date

      t.timestamps
    end
  end
end
