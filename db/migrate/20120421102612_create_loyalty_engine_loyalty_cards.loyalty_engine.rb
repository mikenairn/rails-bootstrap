# This migration comes from loyalty_engine (originally 20120420193344)
class CreateLoyaltyEngineLoyaltyCards < ActiveRecord::Migration
  def change
    create_table :loyalty_engine_loyalty_cards do |t|
      t.integer :loyalty_scheme_id
      t.integer :user_id
      t.integer :stamps
      t.timestamps
    end
  end
end
