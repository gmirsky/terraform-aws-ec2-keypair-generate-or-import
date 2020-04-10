resource "local_file" "public_key_openssh" {
  count      = var.generate_ssh_key == true ? 1 : 0
  depends_on = [tls_private_key.default]
  content    = tls_private_key.default[0].public_key_openssh
  filename   = local.public_key_filename
}

resource "local_file" "private_key_pem" {
  count             = var.generate_ssh_key == true ? 1 : 0
  depends_on        = [tls_private_key.default]
  sensitive_content = tls_private_key.default[0].private_key_pem
  filename          = local.private_key_filename
  file_permission   = "0600"
}
