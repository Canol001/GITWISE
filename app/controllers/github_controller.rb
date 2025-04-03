class GithubController < ApplicationController
  require 'net/http'
  require 'json'

  def fetch_data
    username = params[:username]
    url = "https://api.github.com/users/#{username}"

    # Make a request to GitHub API
    uri = URI(url)
    response = Net::HTTP.get(uri)
    @github_data = JSON.parse(response)

    # Fetch repositories
    repos_url = @github_data['repos_url']
    repos_response = Net::HTTP.get(URI(repos_url))
    @github_data['repos'] = JSON.parse(repos_response)

    render :analysis
  end
end
