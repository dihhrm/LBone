# -*- encoding : utf-8 -*-
class CreateOutputs < ActiveRecord::Migration
  def change
    create_table :outputs do |t|

      t.string :title
      t.text :description
      t.integer :value
      t.datetime :date
      t.references :item, index: true, foreign_key: true 
      
      t.timestamps
    end
  end
end
