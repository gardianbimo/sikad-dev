class CreateMJurusans < ActiveRecord::Migration[5.0]
  def change
    create_table :m_jurusans do |t|
      t.string :id_jurusan, :limit => 10
      t.string :nama_jurusan, :limit => 100
      t.string :singkatan, :limit => 10
      t.string :email_jurusan, :limit => 100
      t.string :telp_jurusan, :limit => 12
      t.string :situs_jurusan, :limit => 100
      t.datetime :tanggal_berdiri
      t.string :sk_berdiri, :limit => 100
    end
  end
end
