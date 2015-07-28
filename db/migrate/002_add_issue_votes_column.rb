# Add total votes column to the issues table
class AddIssueVotesColumn < ActiveRecord::Migration
  def change
    add_column :issues, :votes, :integer, :default => 0, :null => false
  end
end

def self.down
  remove_column :issues, :votes
end