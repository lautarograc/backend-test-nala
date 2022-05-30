class Api::Exposed::V2::BaseController < Api::Exposed::BaseController
  before_action do
    self.namespace_for_serializer = ::Api::Exposed::V2
  end
end
