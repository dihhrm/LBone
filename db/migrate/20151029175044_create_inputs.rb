# -*- encoding : utf-8 -*-
class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|

      t.string :title
      t.text :description
      t.integer :value
      t.datetime :date
      t.references :item, index: true, foreign_key: true 
      
      t.timestamps
    end
  end
end
