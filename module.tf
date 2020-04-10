module "name-tags" {
  source      = "git::https://github.com/gmirsky/name-tags.git"
  namespace   = var.namespace
  stage       = var.stage
  environment = var.environment
  name        = var.name
  attributes  = var.attributes
  delimiter   = var.delimiter
  tags        = var.tags
}
