# frozen_string_literal: true

RSpec.describe EnumHelpers do
  it "has a version number" do
    expect(EnumHelpers::VERSION).not_to be nil
  end

  context "in the class context" do
    it "adds the _options method" do
      expect(User).to respond_to :role_options
    end
  end

  context "in the instance context" do
    it "adds the _name method" do
      expect(User.new).to respond_to :role_name
    end
  end
end
