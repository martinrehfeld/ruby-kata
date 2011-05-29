require 'spec_helper'
require 'fizz_buzz'

describe 'FizzBuzz' do

  describe '#to_a' do
    subject { FizzBuzz.new.to_a }

    it { should be_an Array }
    it { should have(100).elements }
    its(:first) { should == 1 }
    its(:last)  { should == 'Buzz' }
    its(:third) { should == 'Fizz' }

    it 'should have FizzBuzz as its 15th element' do
      subject[14].should == 'FizzBuzz'
    end
  end

  describe '#to_s' do
    subject { FizzBuzz.new.to_s }

    it { should be_a String }
    it { should =~ /^1 2 Fizz 4 Buzz/ }
    it { should =~ /14 FizzBuzz 16/ }
    it { should =~ /Buzz$/ }
  end

end
