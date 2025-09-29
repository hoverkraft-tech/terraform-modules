output "id" {
  description = "The ID of the repository ruleset"
  value       = github_repository_ruleset.default.id
}

output "node_id" {
  description = "The node ID of the repository ruleset"
  value       = github_repository_ruleset.default.node_id
}

output "ruleset_id" {
  description = "The ruleset ID"
  value       = github_repository_ruleset.default.ruleset_id
}
