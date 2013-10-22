require 'spec_helper'
require 'riak'

describe "CRDTs", integration: true, test_client: true do
  describe 'configuration' do
    it "should allow default bucket-types to be configured for each data type"
    it "should allow override bucket-types for instances"
  end
  describe 'counters' do
    it 'should allow straightforward counter ops'
    it 'should allow batched counter ops'
  end
  describe 'sets' do
    it 'should allow straightforward set ops'
    it 'should allow batched set ops'
  end
  describe 'maps' do
    it 'should allow straightforward map ops'
    it 'should allow batched map ops'
    
    describe 'containing a map' do
      it 'should bubble straightforward map ops up'
      it 'should bubble inner-map batches up'
      it 'should include inner-map ops in the outer-map batch'
    end

    describe 'containing a register' do
      it 'should bubble straightforward register ops up'
      # registers don't have batch ops
    end

    describe 'containing a flag' do
      it 'should bubble straightforward flag ops up'
      # flags don't have batch ops
    end
  end
end