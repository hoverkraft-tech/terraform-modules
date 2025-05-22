output "key_name" {
  description = "name of the ssh keypair uploaded"
  value       = aws_key_pair.ssh_key_pair.key_name
}

output "ssh_key_fingerprint" {
  description = "fingerprint of the ssh keypair uploaded"
  value       = aws_key_pair.ssh_key_pair.fingerprint
}
