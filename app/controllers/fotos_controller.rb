class FotosController < InheritedResources::Base
  belongs_to :album, :finder => :find_by_slug!
#  belongs_to :categoria, :finder => :find_by_slug!

  def index
    @fotos = Foto.tipo_de_foto(params[:categoria_id])
    # or
    # @fotos = Foto.where("categoria_id = ?", params[:categoria_id])
  end

  def create
    create!{album_path(@album)}
  end
  
  def update
    update!{album_path(@album)}
  end

  def destroy
    destroy!{album_path(@album)}
  end
end
