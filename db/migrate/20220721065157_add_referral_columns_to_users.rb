class AddReferralColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :referral_token, :string, null: false
    add_reference :users, :referred_by, foreign_key: { to_table: :users, on_delete: :nullify }

    add_index :users, :referral_token, unique: true
  end
end
