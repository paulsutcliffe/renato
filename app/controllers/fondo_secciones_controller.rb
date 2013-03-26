class FondoSeccionesController < InheritedResources::Base

  def show
    @fondo_seccion = FondoSeccion.find(params[:id])
    @backgrounds = @fondo_seccion.backgrounds.all
  end
end
