class RemoveReputationTables < ActiveRecord::Migration

  def change
  	drop_table :rs_reputations
  	drop_table :rs_reputation_messages
  	drop_table :rs_evaluations
  end
end
