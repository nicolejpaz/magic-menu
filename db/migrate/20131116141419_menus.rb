class Menus < ActiveRecord::Migration
  def change
     create_table :menus do |t|
      t.string :title

      t.timestamps
    end

    create_table :items do |t|
      t.string :title
      t.string :cost

      t.timestamps
    end

    create_table :menus_items do |t|
      t.belongs_to :item
      t.belongs_to :menu
    end
  end
end
