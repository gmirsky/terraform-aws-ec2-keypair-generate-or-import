# terraform-aws-ec2-keypair-generate-or-import
Terreform script to generate or import a AWS EC2 keypair.


WORK IN PROGRESS


DO NOT USE!

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attributes | Additional attributes (e.g. `1`) | list(string) | `<list>` | no |
| delimiter | Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes` | string | `-` | no |
| environment | Environment: 'prod', 'qa', 'dev', 'poc', 'UAT' | string | `` | no |
| generate_ssh_key | If set to `true`, new SSH key pair will be created | bool | `false` | no |
| name | Application name or technology, e.g. 'rabbitmq' or 'jenkins' | string | `` | no |
| namespace | Namespace: such as organization name or cloud provider abbreviation: 'aws', 'do', 'msa' or 'gcp' | string | `` | no |
| private_key_extension | Private key extension | string | `` | no |
| public_key_extension | Public key extension | string | `.pub` | no |
| ssh_key_algorithm | SSH key algorithm | string | `RSA` | no |
| ssh_public_key_path | Path to SSH public key directory | string | - | yes |
| stage | Stage: 'prod', 'qa', 'dev', 'deploy', 'release', etc. | string | `` | no |
| tags | Additional tags (e.g. `map('cost-center','00-00000')` | map(string) | `<map>` | no |

## Outputs

| Name | Description | Sensitive |
|------|-------------|:---------:|
| key_name | Name of SSH key | no |
| private_key | Content of the generated private key | yes |
| private_key_filename | Private Key Filename | no |
| public_key | Content of the generated public key | no |
| public_key_filename | Public Key Filename | no |



