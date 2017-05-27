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
     it 'returns an array' do
       expect(GRand::randn(1,1).class).to eq Array
     end

     it 'returns nested arrays' do
       results = GRand::randn(2,1)
       expect(results[0].class).to eq Array
       expect(results[1].class).to eq Array
     end
   end
  end

end
