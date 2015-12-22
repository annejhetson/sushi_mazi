class CreateMenus < ActiveRecord::Migration
  def change
    create_table :starters do |t|
      t.string 'name', limit: 255, null: false
      t.float 'price', limit: 15
      t.string 'description'
      t.string 'gf'
      t.index 'name'
    end

    create_table :salads do |t|
      t.string 'name', limit: 255, null: false
      t.float 'price', limit: 15
      t.string 'description'
      t.string 'gf'
      t.index 'name'
    end

    create_table :platters do |t|
      t.string 'name', limit: 255, null: false
      t.float 'price', limit: 15
      t.string 'description'
      t.string 'gf'
      t.index 'name'
    end

    create_table :lunch_rolls do |t|
      t.string 'name', limit: 255, null: false
      t.float 'price', limit: 15
      t.string 'description'
      t.string 'gf'
      t.index 'name'
    end

    create_table :signature_rolls do |t|
      t.string 'name', limit: 255, null: false
      t.float 'price', limit: 15
      t.string 'description'
      t.string 'gf'
      t.index 'name'
    end

    create_table :special_rolls do |t|
      t.string 'name', limit: 255, null: false
      t.float 'price', limit: 15
      t.string 'description'
      t.string 'gf'
      t.index 'name'
    end

    create_table :sushis do |t|
      t.string 'name', limit: 255, null: false
      t.string 'price1', limit: 15, null: false
      t.string 'price2', limit: 15, null: false
      t.index 'name'
    end

    create_table :hh_items do |t|
      t.string 'name', limit: 255, null: false
      t.float 'price', limit: 15
      t.string 'description'
      t.string 'gf'
      t.index 'name'
    end
  end
end
