class MProdisController < ApplicationController
  before_action :find_prodi, only: [:show, :edit, :update, :destroy]

  def index
    @prodis = MProdi.all
  end

  def new
    @prodi = MProdi.new
  end

  def create
    @prodi = MProdi.new(prodi_params)
    if @prodi.valid?
      if @prodi.save
        redirect_to m_prodis_path
      end
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @prodi.update(prodi_params)
      redirect_to m_prodi_path(@prodi)
    else
      render 'edit'
    end
  end

  def destroy
    @prodi.destroy
    redirect_to m_prodis_path
  end

  private

  def prodi_params
    params.require(:m_prodi).permit(:id_prodi, :nama_prodi, :m_jurusan_id, :email_prodi,
                                      :telp_prodi, :situs_prodi, :tanggal_berdiri, :sk_berdiri)
  end

  def find_prodi
    @prodi = MProdi.find(params[:id])
  end

end
