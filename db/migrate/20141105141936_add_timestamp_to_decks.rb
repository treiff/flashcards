class AddTimestampToDecks < ActiveRecord::Migration
  def change
    change_table :decks do |t|
      t.timestamps
    end
  end
end
