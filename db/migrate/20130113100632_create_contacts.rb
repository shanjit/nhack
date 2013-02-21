class CreateContacts < ActiveRecord::Migration
#  def change
#    create_table :contacts do |t|

 #     t.timestamps
 #   end

 def self.up
     create_table :contacts do |t|

         t.string "name", :limit => 255
         t.string "email", :limit => 255, :null => false
         t.text "message", :null => false
         t.timestamps

     end
  end

 def self.down
     drop_table :contacts
 end

end
