class CreateLoyaltyEngineLoyaltySchemes < ActiveRecord::Migration
  def change
    create_table :loyalty_engine_loyalty_schemes do |t|
      t.integer :user_id
      t.string :name
      t.string :purchase
      t.string :redeem
      t.integer :stamps_required

      t.timestamps
    end
  end
end
