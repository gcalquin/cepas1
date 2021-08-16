require 'rails_helper'

RSpec.describe Strain, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it "Validacion de nombre unico" do
    should validate_uniqueness_of(:name) 
  end

  it "Validacion de campo nulo" do
    strain = Strain.new(name: nil)
    expect(strain).to be_invalid  
  end

  it "Validacion de campo vacio" do
    strain = Strain.new(name: "")
    expect(strain).to be_invalid  
  end

  it "Si es valido con un nombre" do
    strain = Strain.new(name: "Carmenere")
    expect(strain).to be_invalid  
  end

  it "Validancion de nombre unico" do
    should validate_uniqueness_of(:name) 
  end

end
