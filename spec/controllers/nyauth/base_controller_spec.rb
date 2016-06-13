require 'rails_helper'

RSpec.describe Nyauth::BaseController do
  context 'when nyauth parent_controller is default(=ApplicationController)' do
    it_behaves_like 'Nyauth::SessionConcern'
  end

  context 'when nyauth parent_controller is another controller' do
    before do
      Nyauth.configuration.parent_controller = 'AnotherApplicationController'
      Nyauth.__send__(:remove_const, :BaseController)
      load "app/controllers/nyauth/base_controller.rb"
    end

    after do
      Nyauth.configuration.parent_controller = 'ApplicationController'
      Nyauth.__send__(:remove_const, :BaseController)
      load "app/controllers/nyauth/base_controller.rb"
    end

    it_behaves_like 'Nyauth::SessionConcern'
  end
end
