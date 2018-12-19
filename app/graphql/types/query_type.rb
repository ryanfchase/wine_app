module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :breakpoint, BreakpointType, null: false,
      description: "get the latest breakpoint"

    def breakpoint
      { id: "1234", description: "Dummy task", timestamp: Time.current }
    end
  end
end
