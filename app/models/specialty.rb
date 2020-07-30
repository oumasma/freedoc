class Specialty < ApplicationRecord
    has_many :doctors, through: :jointure_spes
    has_many :jointure_spes
end
