locals {
  public_key_filename  = format("%s/%s%s", var.ssh_public_key_path, module.name-tags.id, var.public_key_extension)
  private_key_filename = format("%s/%s%s", var.ssh_public_key_path, module.name-tags.id, var.private_key_extension)
}
