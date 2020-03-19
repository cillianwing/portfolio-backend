class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :email
      t.text :password_digest
      t.text :first_name
      t.text :last_name
      t.text :phone_number
      t.text :street
      t.text :city
      t.text :state
      t.integer :zip_code
      t.text :linkedin_url
      t.text :github_url

      t.timestamps
    end
  end
end
