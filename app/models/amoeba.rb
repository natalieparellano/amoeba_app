class Amoeba < ActiveRecord::Base
  belongs_to :talent
  has_many :amoeba_acts
  has_many :acts, through: :amoeba_acts

  # How to assign the generation to 1 if it is not initialized from split? 

  def split
    2.times do
      self.class.create(
        name: self.name, 
        generation: self.generation+1,
        talent: self.talent,
        acts: self.acts)
    end 
    self.destroy
  end 
end
