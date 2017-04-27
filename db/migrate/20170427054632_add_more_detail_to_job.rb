class AddMoreDetailToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :waga_upper_bound, :integer
    add_column :jobs, :waga_lower_bound, :integer
    add_column :jobs, :contact_email, :string
  end
end
