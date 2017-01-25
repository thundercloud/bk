class AddProductToSite < ActiveRecord::Migration
  def change
  	change_table :products do |t|
      t.belongs_to :product, index: true
    end  
  end
end
