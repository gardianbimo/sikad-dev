module Admin
  class MNilaisController < ApplicationController
    def index
      @nilais = MNilai.all.order(:id)
    end

    def new
      @nilai = MNilai.new
    end

    def create
      @nilai = MNilai.new(nilai_params)
      if @nilai.valid?
        if @nilai.save
          redirect_to m_nilais_path
        end
      else
        render 'new'
      end
    end

    private

    def nilai_params
      params.require(:m_nilai).permit(:nilai_huruf, :bobot, :skala)
    end

    def find_jurusan
      @nilai = MNilai.find(params[:id])
    end

  end
end