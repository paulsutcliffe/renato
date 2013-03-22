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



  def flare_lightbox(imagen_index, imagen_show, imagen_thumb)
    link_to image_tag(imagen_index), imagen_show, :"data-target" => 'flare', :"data-flare-gallery" => 'gallery', :"data-flare-plugin" => 'shutter', :"data-flare-thumb" => imagen_thumb 
  end

end
