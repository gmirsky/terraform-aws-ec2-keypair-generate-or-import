variable "region" {
  type = string
  default = "us-east-1"
  description = "AWS Region to deply into"
}

variable "namespace" {
  type        = string
  default     = "aws"
  description = "Namespace: such as organization name or cloud provider abbreviation: 'aws', 'do', 'msa' or 'gcp'"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Environment: 'prod', 'qa', 'dev', 'poc'"
}

variable "stage" {
  type        = string
  default     = "build"
  description = " 	Stage: 'source', 'build', 'deploy', 'release'"
}

variable "name" {
  type        = string
  default     = "dummy"
  description = "Application name or technology, e.g. 'rabbitmq' or 'jenkins'"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between namespace, environment, stage, name and attributes"
}

variable "attributes" {
  type        = list(string)
  default     = [1]
  description = "Additional attributes (e.g. 1)"
}

variable "tags" {
  type        = map(string)
  default     = {
    cost-center = "00-00000"
    environment = "development"
    classification = "Infrastructure"
  }
  description = "Additional tags (e.g. map('cost-center','00-00000')"
}

variable "ssh_public_key_path" {
  type        = string
  description = "Path to SSH public key directory"
  default = "~/.ssh"
}

variable "generate_ssh_key" {
  type        = bool
  default     = true
  description = "If set to true, new SSH key pair will be created"
}

variable "ssh_key_algorithm" {
  type        = string
  default     = "RSA"
  description = "SSH key algorithm"
}

variable "private_key_extension" {
  type        = string
  default     = ""
  description = "Private key extension. Usually none or .ppk"
}

variable "public_key_extension" {
  type        = string
  default     = ".pub"
  description = "Public key extension"
}
