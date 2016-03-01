class AddTimestampsToQuotes < ActiveRecord::Migration
  def change
    change_table :quotes do |t|
      t.timestamps null: false
    end
  end
end
