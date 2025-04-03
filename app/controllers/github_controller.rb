require 'net/http'
require 'json'
require 'uri'

class GithubController < ApplicationController
  # Show the analysis page
  def analysis
  end

  # Fetch GitHub data from GitHub API
  def fetch_data
    username = params[:username]
    uri = URI("https://api.github.com/users/#{username}")
    response = Net::HTTP.get(uri)
    github_data = JSON.parse(response)

    if github_data['message'] == 'Not Found'
      flash[:alert] = "GitHub user not found. Please check the username."
      redirect_to action: 'analysis'
    else
      @github_data = github_data
      render :analysis
    end
  end
end
