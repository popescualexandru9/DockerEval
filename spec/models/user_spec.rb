# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, elasticsearch: true, type: :model do
  let!(:user) { User.create(name: 'myname') }
  
  specify do
    expect(User.all).to all(be_a(User))
  end

  it 'should be indexed' do
    # refresh the index 
    User.__elasticsearch__.refresh_index! 

    # verify your model was indexed
    expect(User.search('myname').records.length).to eq(1)
  end
end
