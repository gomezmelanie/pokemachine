class Pokemon < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  CATEGORIES = ["normal", "feu", "eau", "plante", "electrik", "glace", "combat", "poison", "sol", "vol", "psy", "insecte", "roche", "sprectre","dragon"]
  POKEMONS = %i[Pikachu Dracaufeu Psykokwak Goupix Rondoudou Bulbizar]
end
