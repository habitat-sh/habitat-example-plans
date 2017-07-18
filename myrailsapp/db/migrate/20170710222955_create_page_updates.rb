class CreatePageUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :page_updates do |t|
      t.string :motd, null: false
    end
  end
end
