require 'spec_helper'
require 'css_class_string/view_helpers'

describe "CssClassString::Helper" do
  describe ".to_s" do

    context "when a key's value is truthy" do
      let(:hash) { {truthy: true} } 
      subject { CssClassString::Helper.new(hash).to_s } 
      
      it { should eq("truthy") }
    end

    context "when a key's value is falsy" do
      let(:hash) { {falsy: false} } 
      subject { CssClassString::Helper.new(hash).to_s } 
      
      it { should eq("") }
    end

    context "when a key is an array of two elements" do

      context "when value is truthy" do
        let(:hash) { {[:truthy, :falsy] => true} } 
        subject { CssClassString::Helper.new(hash).to_s } 
        
        it { should eq("truthy") }
      end

      context "when value is falsy" do
        let(:hash) { {[:truthy, :falsy] => false} } 
        subject { CssClassString::Helper.new(hash).to_s } 
        
        it { should eq("falsy") }
      end
      
    end

  end
end
