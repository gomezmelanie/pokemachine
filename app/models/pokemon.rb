class Pokemon < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["normal", "feu", "eau", "plante", "electrik", "glace", "combat", "poison", "sol", "vol", "psy", "insecte", "roche", "sprectre","dragon"]
  POKEMONS = %i[Pikachu Dracaufeu Psykokwak Goupix Rondoudou Bulbizar]

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
    against: [ :name, :category, :price, :level],
    using: {
      tsearch: { prefix: true }
    }
end
