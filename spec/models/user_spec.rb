# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User do
  let!(:user) { User.create(name: 'myname') }
  
  specify do
    expect(User.all).to all(be_a(User))
  end
end
