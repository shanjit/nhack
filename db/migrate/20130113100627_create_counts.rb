class CreateCounts < ActiveRecord::Migration
 # def change
 #   create_table :counts do |t|
#
#      t.timestamps
 #   end
#  end

  def self.up
      create_table :counts do |t|
          t.string "email", :limit => 255, :null => false
          t.string "track", :limit => 10, :null => false
          t.timestamps
      end
  end

  def self.down 
      drop_table :counts
  end

end
