# frozen_string_literal: true

module Api
  module Exposed
    class BaseController < Api::BaseController
      skip_before_action :verify_authenticity_token
    end
  end
end
