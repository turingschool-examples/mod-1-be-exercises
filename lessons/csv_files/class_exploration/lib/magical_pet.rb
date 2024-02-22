class MagicalPet
  attr_reader :id, :name, :pet_owner_id
  def initialize(id,name,pet_owner_id)
    @id = id
    @name = name
    @pet_owner_id = pet_owner_id
  end
end