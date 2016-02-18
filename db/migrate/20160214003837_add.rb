class Add < ActiveRecord::Migration
  def change
    add_foreign_key :items, :users
  end
end
