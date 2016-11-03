class CreateMProdis < ActiveRecord::Migration[5.0]
  def change
    create_table :m_prodis do |t|
      t.string :id_prodi, :limit => 10
      t.string :nama_prodi, :limit => 100
      t.belongs_to :m_jurusan, foreign_key:true, index:true, unique:true
      t.string :email_prodi, :limit => 100
      t.string :telp_prodi, :limit => 12
      t.string :situs_prodi, :limit => 30
      t.date :tanggal_berdiri
      t.string :sk_berdiri, :limit => 100
    end
  end
end
