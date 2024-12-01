class CreateContactInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_informations do |t|
      t.references :contactable, polymorphic: true, null: false
      t.string :email
      t.string :phone
      t.string :fax
      t.string :contact_person
      t.text :note
      t.boolean :is_primary, default: true

      t.timestamps
    end
  end
end
