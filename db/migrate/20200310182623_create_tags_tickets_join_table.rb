class CreateTagsTicketsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :tags, :tickets
  end
end
