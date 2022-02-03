require_relative '../lib/caesar'
require 'rspec'

describe Ceasar_c do
  describe "#caesar_cipher?" do
    it "will return letter + number letter a + 2 = c" do
        code = Ceasar_c.new("hello", 3)
        expect(code.caesar_cipher?).to eql("khoor")
    end
  end
end