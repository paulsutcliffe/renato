class VideosController < InheritedResources::Base

  def index
    @videos = Video.paginate(:page => params[:page], :per_page => 6)

    @fondo_seccion = FondoSeccion.find_by_title('Videos')
    @backgrounds = @fondo_seccion.backgrounds.all
  end

  def create
    create!{videos_path}
  end

  def update
    update!{videos_path}
  end
end
