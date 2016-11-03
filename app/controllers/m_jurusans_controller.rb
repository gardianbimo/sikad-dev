class MJurusansController < ApplicationController

  before_action :find_jurusan, only: [:show, :edit, :update, :destroy]

  def index
    @jurusans = MJurusan.all
  end

  def show
  end

  def new
    @jurusan = MJurusan.new
  end


  def create
    @jurusan = MJurusan.new(jurusan_params)
    if @jurusan.valid?
      if @jurusan.save
        redirect_to m_jurusans_path
      end
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @jurusan.update(jurusan_params)
      redirect_to m_jurusan_path(@jurusan)
    else
      render 'edit'
    end
  end

  def destroy
    @jurusan.destroy
    redirect_to m_jurusans_path
  end

  private

  def jurusan_params
    params.require(:m_jurusan).permit(:id_jurusan, :nama_jurusan, :singkatan, :email_jurusan,
                                       :telp_jurusan, :situs_jurusan, :tanggal_berdiri, :sk_berdiri)
  end

  def find_jurusan
    @jurusan = MJurusan.find(params[:id])
  end

end
