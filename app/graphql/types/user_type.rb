module Types
  class UserType < Types::BaseObject

    field :id, types.Int, null: false
    field :email, types.String, null:false

  end
end


