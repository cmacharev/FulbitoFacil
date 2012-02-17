class Field < ActiveRecord::Base
	  belongs_to :local
	  has_many :line_items
	  
	  before_destroy :ensure_not_referenced_by_any_line_item
	  
	  private
# ensure that there are no line items referencing this product
def ensure_not_referenced_by_any_line_item
	if line_items.empty?
		return true
	else
		errors.add(:base, 'no hay Campos Seleccionados')
	return false
	end
end

	  ###validates_presence_of :descripcion, :local_id
	  #TURNOS_TYPES = [ "Manana", "Tarde", "Noche" ]
	  
	validates :tarifa, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :nombre, :caracteristicas, :presence => true
	validates :imagen, :format => {
		:with => %r{\.(gif|jpg|png)$}i,
		:message => 'El formato para las fotos es GIF, JPG or PNG.'
	}
	#validates :turno, :inclusion => TURNOS_TYPES
end
