defmodule PhoenixDbPerf.Post do
  use PhoenixDbPerf.Web, :model

  schema "posts" do
    field :subject, :string
    field :body, :string

    timestamps
  end

  @required_fields ~w(subject body)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
