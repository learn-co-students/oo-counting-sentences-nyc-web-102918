require 'pry'

class String

  def sentence?

    if self.end_with?(".")
      return true
    else
      return false
    end
  end


  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end


  def count_sentences
     #utilizo self para hacer referencia al string que es llamado
     #con split estoy partiendo el string cuando encuentra .?! y rechaza cuando el string esta vacio
    new_array = self.split(/[.?!]/).reject {|string| string.empty?}
    return new_array.length  #Retorno el numero de setencias, new array va a contener la cantidad de elementos encontrados
  end
  end
