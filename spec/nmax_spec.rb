require 'spec_helper'

describe Nmax do
  let(:file) { File.new('spec/support/data.txt') }

  subject do
    Proc.new { |input| Nmax.start(input, file) }
  end

  it 'Returns maximum n element from the file' do
    expect{subject.call(2)}.to output("First #{2} max numbers is 88888, 10000\n").to_stdout
  end

  it 'Returns uniq number of integers' do
    expect{subject.call(4)}.to output("First #{4} max numbers is 88888, 10000, 9999, 6778\n").to_stdout
  end

  it 'Raise an exaptions' do
    subject.call
  end
end