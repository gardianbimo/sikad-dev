class CreateMNilais < ActiveRecord::Migration[5.0]
  def change
    create_table :m_nilais do |t|
      t.string :nilai_huruf, limit: 2
      t.integer :skala,  limit: 3
      t.integer :bobot, limit: 3
      t.timestamps
    end
  end
end
