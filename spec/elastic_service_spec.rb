# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'elastic search service' do
  let!(:user) { User.create(name: 'myname') }
  it 'should return correct results when queried' do   
    User.__elasticsearch__.refresh_index!   
    expect(User.search("name:#{user.name}").records.first.name).to eq(user.name) 
  end 
end