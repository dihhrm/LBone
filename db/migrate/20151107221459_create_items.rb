# -*- encoding : utf-8 -*-
class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.string :name
      t.integer :amount
      t.string :ref_code
	  t.string :localization      
	  t.string :classification
	  t.string :slug
	  t.text :description
	  t.text :additional_info
      
      t.timestamps
    end
    add_index :items, :slug, unique: true   
  end
end
