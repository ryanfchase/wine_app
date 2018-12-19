class Mutations::CreateBreakpoint < GraphQL::Schema::Mutation
  argument :description, String, required: true

  field :breakpoint, Types::BreakpointType, null: true

  def resolve(description:)
    {
      breakpoint: {
        id: "new_uuid",
        description: "woooooah #{description}",
        timestamp: Time.current
      }
    }
  end
end