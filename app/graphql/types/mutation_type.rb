class Types::MutationType < GraphQL::Schema::Object
  field :create_breakpoint, mutation: Mutations::CreateBreakpoint
end