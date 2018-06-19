defmodule Hello.User do
  use Hello.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps
  end

  @required_fields ~w(name email)
  @optional_fields ~w()
end