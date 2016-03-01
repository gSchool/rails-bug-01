class AddTimestampsToQuotes < ActiveRecord::Migration
  def change
    change_table :quotes do |t|
      t.timestamps
    end
  end
end
