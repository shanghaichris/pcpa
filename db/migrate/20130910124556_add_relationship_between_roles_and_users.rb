class AddRelationshipBetweenRolesAndUsers < ActiveRecord::Migration
  def change
  	create_join_table :roles, :users, id: :false, force: :true do |t|
    	t.integer :roles_id,null: :false
    	t.integer :users_id, null: :false
  	end
  end
end
