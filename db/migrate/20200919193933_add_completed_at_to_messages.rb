class AddCompletedAtToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :completed_at, :datetime
  end
end
