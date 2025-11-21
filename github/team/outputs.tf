output "id" {
  description = "The ID of the created team"
  value       = github_team.main.id
}

output "node_id" {
  description = "The Node ID of the created team"
  value       = github_team.main.node_id
}

output "slug" {
  description = "The slug of the created team"
  value       = github_team.main.node_id
}
