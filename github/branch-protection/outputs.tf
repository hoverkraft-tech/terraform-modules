output "id" {
  description = "The ID of the branch protection rule"
  value       = github_branch_protection.main.id
}

output "node_id" {
  description = "The node ID of the branch protection rule"
  value       = github_branch_protection.main.node_id
}
