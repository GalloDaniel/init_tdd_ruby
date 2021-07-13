require 'Calculator'

describe Calculator, "sobre a calculadora" do 

  subject(:calc) { described_class.new() } # Alterar o nome subject para calc

  context '#div' do 
    it 'divide by 0' do 
      expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError)
      expect{calc.div(3, 0)}.to raise_error("divided by 0")
      expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{calc.div(3, 0)}.to raise_error(/divided/)
    end
  end

  context '#sum' do 
    it 'positive numbers' do 
      result = calc.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'negative and positive numbers' do 
      result = calc.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'negative numbers' do 
      result = calc.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end

end