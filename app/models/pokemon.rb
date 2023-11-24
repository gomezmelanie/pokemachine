class Pokemon < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings
  CATEGORIES = ["normal", "feu", "eau", "plante", "electrik", "glace", "combat", "poison", "sol", "vol", "psy", "insecte", "roche", "sprectre","dragon"]
  POKEMONS = %i[Abo Abra Aéromite Akwakwak Alakazam Amonistar Amonita Aquali Arbok Arcanin Artikodin Aspicot Boustiflor Pikachu Dracaufeu Psykokwak Goupix Rondoudou Bulbizar]
  validates :price, presence: true, numericality: { only_float: true }
  validates :level, presence: true, numericality: { only_integer: true }
  validates :address, presence: true
end
