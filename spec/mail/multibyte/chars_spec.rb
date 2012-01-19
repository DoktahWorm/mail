# encoding: utf-8
require 'spec_helper'

describe Mail::Multibyte::Chars do
  describe 'upcase' do
    it 'should convert characters in the string to lowercase' do
      'Laurent, où sont les tests ?'.mb_chars.upcase.to_s.should == "LAURENT, OÙ SONT LES TESTS ?"
    end
  end

  describe 'downcase' do
    it 'should convert characters in the string to lowercase' do
      'VĚDA A VÝZKUM'.mb_chars.downcase.to_s.should == "věda a výzkum"
    end
  end
end