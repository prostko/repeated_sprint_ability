class CreatePrincipalsTicketsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :principals, :tickets
  end
end
