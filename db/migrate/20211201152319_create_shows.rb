class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |given|
      given.string :name
      given.string :network
      given.string :day
      given.integer :rating
    end
  end
end
