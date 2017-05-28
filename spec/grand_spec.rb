require "spec_helper"

RSpec.describe GRand do
  it 'has a version number' do
    expect(GRand::VERSION).not_to be nil
  end

  describe '.randn' do
   context 'with no args' do
     it 'returns a float' do
       expect(GRand::randn.class).to eq  Float
     end
   end

   context 'with multiple args' do
     it 'returns a vector' do
       expect(GRand::randn(1,1).class).to eq Vector
     end

     it 'returns nested vectors' do
       results = GRand::randn(2,1)
       expect(results[0].class).to eq Vector
       expect(results[1].class).to eq Vector
     end
   end
  end

  describe '.array_randn' do
   context 'with no args' do
     it 'returns a float' do
       expect(GRand::array_randn.class).to eq  Float
     end
   end

   context 'with multiple args' do
     it 'returns an array' do
       expect(GRand::array_randn(1,1).class).to eq Array
     end

     it 'returns nested arrays' do
       results = GRand::array_randn(2,1)
       expect(results[0].class).to eq Array
       expect(results[1].class).to eq Array
     end
   end
  end

  describe '.zeros' do
    it 'returns nested Vector full of zeros' do
       results = GRand::zeros(2,1)
       expect(results[0].class).to eq Vector
       expect(results[0][0]).to eq 0
       expect(results[1][0]).to eq 0
    end
  end

  describe 'monkey patches Enumerable' do
    describe '.shape' do
      it 'returns the shape of nested arrays' do
       results = GRand::randn(2,4,1)
       expect(results.shape).to eq [2,4,1]
      end
    end
  end

end
