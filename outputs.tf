output "key_name" {
  value = compact(concat(
    aws_key_pair.imported.*.key_name,
    aws_key_pair.generated.*.key_name
  ))[0]
  description = "Name of the SSH key"
  sensitive   = false
}

output "public_key" {
  value       = join("", tls_private_key.default.*.public_key_openssh)
  description = "Content of the generated public key"
  sensitive   = false
}

output "private_key" {
  description = "Content of the generated private key"
  value       = join("", tls_private_key.default.*.private_key_pem)
  sensitive   = true
}

output "public_key_filename" {
  description = "Public Key Filename"
  value       = local.public_key_filename
  sensitive   = false
}

output "private_key_filename" {
  description = "Private Key Filename"
  value       = local.private_key_filename
  sensitive   = false
}
