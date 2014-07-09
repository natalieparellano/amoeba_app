class Act < ActiveRecord::Base
  has_many :amoeba_acts
  has_many :amoebas, through: :amoeba_acts 
  accepts_nested_attributes_for :amoeba_acts 
end
