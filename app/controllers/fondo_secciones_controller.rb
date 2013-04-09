class FondoSeccionesController < InheritedResources::Base


  def show
    @fondo_seccion = FondoSeccion.find(params[:id])
    @backgrounds = @fondo_seccion.backgrounds.all
  end

  def create
    create!{fondo_secciones_path}
  end

  def update
    update!{fondo_secciones_path}
  end

  def destroy
    update!{fondo_secciones_path}
  end


end
