# frozen_string_literal: true

require 'active_record'

class User < ActiveRecord::Base
  enum role: [ :admin, :default, :guest ]
  enum_helpers :role
end

RSpec.describe EnumHelpers do
  it "has a version number" do
    expect(EnumHelpers::VERSION).not_to be nil
  end

  it "adds the _options method to the class that uses it" do
    expect(User.methods).to include :role_options
  end
end
