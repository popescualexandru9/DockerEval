# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'redis service' do
   let(:redis) { Redis.new}
   specify do
   
      redis.set 'key', 'value'

      expect(redis.get('key') == 'value')
   end
end