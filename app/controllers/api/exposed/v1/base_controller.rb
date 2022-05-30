# frozen_string_literal: true

module Api
  module Exposed
    module V1
      class BaseController < Api::Exposed::BaseController
        before_action do
          self.namespace_for_serializer = ::Api::Exposed::V1
        end
      end
    end
  end
end
