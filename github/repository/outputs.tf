output "repository_node_id" {
  description = "The Node ID of the repository."
  value       = github_repository.repository.node_id
}

output "repository_ssh_clone_url" {
  description = "URL that can be provided to git clone to clone the repository via SSH."
  value       = github_repository.repository.ssh_clone_url
}

output "repository_http_clone_url" {
  description = "URL that can be provided to git clone to clone the repository via HTTPS."
  value       = github_repository.repository.http_clone_url
}

output "repository_html_url" {
  description = "URL to the repository on the web."
  value       = github_repository.repository.html_url
}

output "repository_git_clone_url" {
  description = "URL that can be provided to git clone to clone the repository anonymously via the git protocol."
  value       = github_repository.repository.git_clone_url
}

output "repository_id" {
  description = "The ID of the repository."
  value       = github_repository.repository.id
}

output "repository_full_name" {
  description = "A string of the form 'orgname/reponame'."
  value       = github_repository.repository.full_name
}

output "repository_name" {
  description = "The name of the repository."
  value       = github_repository.repository.name
}

output "repository_default_branch" {
  description = "The name of the default branch of the repository."
  value       = "main"
}

output "repository_visibility" {
  description = "The visibility of the repository."
  value       = github_repository.repository.visibility
}
