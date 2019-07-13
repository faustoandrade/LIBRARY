class PagesController < ApplicationController
  # Lo que estamos haciendo en este método es retornando el código HTML que queremos que aparezca en el navegador.
  def home
    #render html: '<h1> Hola Rails</h1>'.html_safe
    @name = 'Fausto'
  end
end
