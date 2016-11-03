class MJurusan < ApplicationRecord
  validates :id_jurusan, :presence => true, :uniqueness => true
  validates :nama_jurusan, :singkatan, :email_jurusan,
            :telp_jurusan, :situs_jurusan, :tanggal_berdiri,
            :sk_berdiri, presence: true
  validates :nama_jurusan, length: { minimum: 7 }
  validates :id_jurusan, :numericality => true
  has_many :m_prodis, dependent: :destroy
end
