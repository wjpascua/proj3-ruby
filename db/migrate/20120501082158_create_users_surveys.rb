class CreateUsersSurveys < ActiveRecord::Migration
  def self.up
    create_table :users_surveys do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :users_surveys
  end
end
