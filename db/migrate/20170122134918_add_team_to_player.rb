class AddTeamToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :team, :integer
  end
end
