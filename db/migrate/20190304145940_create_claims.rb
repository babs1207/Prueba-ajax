class CreateClaims < ActiveRecord::Migration[5.2]
  def change
    create_table :claims do |t|
      t.string :content
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
