defmodule Issues.GithubIssues do
  @github_url Application.get_env(:issues, :github_url)
  @user_agent [{"User-agent", "Elixir "}]

  def fetch(user, project) do
    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  def issues_url(user, project), do: "#{@github_url}/repos/#{user}/#{project}/issues"

  @moduledoc """
  Returns a tuple with the status code status {:ok, JSON} or {:error, JSON}
  """
  def handle_response({_, %{status_code: status_code, body: body}}) do
    {
      status_code |> check_for_error(),
      body |> Poison.Parser.parse!()
    }
  end

  defp check_for_error(200), do: :ok
  defp check_for_error(_), do: :error
end
