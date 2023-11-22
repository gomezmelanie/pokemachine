class Pokemon < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["normal", "feu", "eau", "plante", "electrik", "glace", "combat", "poison", "sol", "vol", "psy", "insecte", "roche", "sprectre","dragon"]
  POKEMONS = %i[Pikachu Dracaufeu Psykokwak Goupix Rondoudou Bulbizar]
end
