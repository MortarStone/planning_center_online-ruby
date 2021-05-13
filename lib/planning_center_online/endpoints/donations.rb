# frozen_string_literal: true

module PlanningCenterOnline
  module Endpoints
    module Donations
      def donation(id, params = {})
        get(
          "giving/v2/donations/#{id}",
          params
        )
      end

      def donations(params = {})
        # We need to order the donations by a value (created_at being the default),
        # because the results are not consistently ordered without it.
        get(
          'giving/v2/donations',
          { order: :created_at }.merge(params)
        )
      end
    end
  end
end
