class Client < ApplicationRecord

    GENDERS = {
        0=> 'Mujer',
        1=> 'Hombre'
    }

    DOC = {
        0=> 'CC',
        1=> 'Tarjeta Identidad',
        2=> 'Cedula de Extrangero',
        3=> 'NIT',
        4=> 'Pasaporte'

    }

    validates :name, presence: true
    validates :last_name, presence: true
    validates :gender, presence: true
    validates :card_id, presence: true
    validates :id_type, presence: true
    validates :active, presence: true

 def gender_to_s
    GENDERS[gender]
 end
 def id_type_doc
     DOC[id_type]
 end   
 

end
