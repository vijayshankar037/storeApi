require 'rails_helper'

RSpec.describe UserDecorator do
  describe '#as_json' do
    let(:user) { stub_model User, name: 'Test User', email: 'testuser@google.com' }

    subject { user.decorate.as_json }

    its([:name]) { should eq 'Test User' }

    its([:email]) { should eq 'testuser@google.com' }
  end
end