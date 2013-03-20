class AlbumesController < InheritedResources::Base

  def index
    if current_cliente
      @albumes = Album.where("cliente_id = ?", current_cliente)
    else
      @albumes = Album.all
    end
  end
 

  def show
    @album = Album.find(params[:id])
    @fotos = @album.fotos.all
  end

end
