module Types
  class BreakpointType < Types::BaseObject
    field :id, ID, null: false
    field :description, String, null: true
    field :timestamp, GraphQL::Types::ISO8601DateTime, null: false
  end
end
