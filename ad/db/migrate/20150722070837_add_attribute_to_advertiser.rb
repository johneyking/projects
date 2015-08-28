class AddAttributeToAdvertiser < ActiveRecord::Migration
  def change
  	add_column :advertisers, :advertiser_id, :integer
  	add_column :advertisers, :name, :string
  	add_column :advertisers, :email, :string
  	add_column :advertisers, :phone, :string
  	add_column :advertisers, :account, :string
  	add_column :advertisers, :password, :string
  	add_column :advertisers, :count, :integer
  end
end
