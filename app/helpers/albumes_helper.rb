module AlbumesHelper


  def fotos_size(elemento)
    if elemento.size == 1
      elemento.size.to_s + ' foto'
    else
      elemento.size.to_s + ' fotos'
    end
  end

  def ultima_foto(elemento)
    ' Última foto creada el: ' + elemento.last.updated_at.to_s
  end

end
