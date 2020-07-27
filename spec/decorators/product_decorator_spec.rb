require 'rails_helper'

RSpec.describe ProductDecorator do
  describe '#as_json' do
    let(:product) { stub_model Product, id: 1, name: 'Canon EOS R5', description: 'Canon EOS R5 Mirrorless Camera', price: 0.279e6, make: 2019 }

    subject { product.decorate.as_json }

    its([:id]) { should eq 1 }

    its([:name]) { should eq 'Canon EOS R5' }

    its([:description]) { should eq 'Canon EOS R5 Mirrorless Camera' }

    its([:price]) { should eq 0.279e6 }

    its([:make]) { should eq 2019 }

  end
end