resource "aws_key_pair" "generated" {
  count      = var.generate_ssh_key == true ? 1 : 0
  depends_on = [tls_private_key.default]
  key_name   = module.name-tags.id
  public_key = tls_private_key.default[0].public_key_openssh
}

resource "aws_key_pair" "imported" {
  count      = var.generate_ssh_key == false ? 1 : 0
  key_name   = module.name-tags.id
  public_key = file(local.public_key_filename)
}

