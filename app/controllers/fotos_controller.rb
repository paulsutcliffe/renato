class FotosController < InheritedResources::Base
  #belongs_to :album, :finder => :find_by_slug!
  #before_filter :find_album, :except => ['index']

  def index
    @fotos = Foto.tipo_de_foto(params[:categoria_id])
  end

  def new
    if !@album.nil?
      @album ||= Album.find(params[:album_id])
    end
    @foto = Foto.new
  end

  def create
    @foto = @album.fotos.build(params[:foto])

    if @foto.save
      redirect_to album_path(@album)
    else
      render :new
    end

   # create!{album_path(@album)}
  end
  
  def update
    update!{album_path(@album)}
  end

  def destroy
    destroy!{album_path(@album)}
  end

  def find_album
    @album = Album.find(params[:album_id])
  end




end
