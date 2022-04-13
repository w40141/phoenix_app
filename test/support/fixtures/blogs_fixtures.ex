defmodule PhoenixApp.BlogsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixApp.Blogs` context.
  """

  @doc """
  Generate a article.
  """
  def article_fixture(attrs \\ %{}) do
    {:ok, article} =
      attrs
      |> Enum.into(%{
        body: "some body",
        title: "some title"
      })
      |> PhoenixApp.Blogs.create_article()

    article
  end
end
