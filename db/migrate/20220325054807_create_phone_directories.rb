class CreatePhoneDirectories < ActiveRecord::Migration[7.0]
  def change
    create_table :phone_directories do |t|
      t.string :name
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
