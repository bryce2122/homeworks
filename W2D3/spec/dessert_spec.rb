require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:ice_cream) {Dessert.new("ice_cream",1,"Me")}
  let(:chef) { double("chef",:titleize => "Chef Me the Great Baker") }

  describe "#initialize" do
    it "sets a type" do
      expect(ice_cream.type).to eql("ice_cream")
    end

    it "sets a quantity" do
      expect(ice_cream.quantity).to eql(1)
    end

    it "starts ingredients as an empty array" do
      expect(ice_cream.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{!ice_cream.quantity.is_a?(Integer)}.to raise_error(ArgumentError)
  end

  describe "#add_ingredient" do
    before(:each) do
      ice_cream.add_ingredient("chocolate syrup")
    end
    it "adds an ingredient to the ingredients array" do
      expect(ice_cream.ingredients).to include("chocolate syrup")
    end

  end

  describe "#mix!" do
      ice_cream.add_ingredient("chocolate syrup")
      ice_cream.add_ingredient("walnuts")
      ice_cream.add_ingredient("cherries")
      ice_cream.add_ingredient("cream")
      ice_cream.add_ingredient("bannanas")





    it "shuffles the ingredient array"
      expect(ice_cream).to not_eql(ice_cream.mix!)
  end
end

  describe "#eat" do
    before(:each) do
    total = quantity
    ice_cream.eat(5)
    end
    it "subtracts an amount from the quantity" do
      expect(quantity).to be < total
    end
    it "raises an error if the amount is greater than the quantity" do
      expect{ice_cream.eat(5)}.to raise_error("not enough left")
  end
end
  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(ice_cream.serve).to eql("Chef Me the Great Baker")

  end
end
  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do


  end
end
end
