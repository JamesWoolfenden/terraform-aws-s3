# terraform-aws-s3

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-s3/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-s3)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-s3.svg)](https://github.com/JamesWoolfenden/terraform-aws-s3/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-s3.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-s3/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-s3/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-s3&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-s3/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-s3&benchmark=INFRASTRUCTURE+SECURITY)

This ia a Terraform module to provision a secure Terraform S3 bucket. It also has a provisioning test included in its' Github actions so you can be sure each labelled version works.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing Terraform code:

```terraform
module "s3" {
  source                  = "JamesWoolfenden/s3/aws"
  version                 = "0.4.0"
  s3_bucket_force_destroy = var.s3_bucket_force_destroy
  s3_bucket_name          = var.s3_bucket_name
  s3_bucket_policy        = data.aws_iam_policy_document.s3_policy.json
  common_tags             = var.common_tags
}
```

This creates an S3 bucket with policy and applies the common tags scheme.
The module uses a tagging scheme based on the map variable common_tags.
This needs to consist of as a minimum (in your ***.auto.tfvars**):

```HCL
common_tags = {
    application = "Terraform"
    module      = "S3"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_block"></a> [access\_block](#input\_access\_block) | Settings for the public access block | `map(any)` | <pre>{<br>  "block_public_acls": true,<br>  "block_public_policy": true,<br>  "ignore_public_acls": true,<br>  "restrict_public_buckets": true<br>}</pre> | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | This is a map type for applying tags on resources | `map(any)` | n/a | yes |
| <a name="input_logging"></a> [logging](#input\_logging) | n/a | `list(string)` | `[]` | no |
| <a name="input_mfa_delete"></a> [mfa\_delete](#input\_mfa\_delete) | To enable/disable MFA delete | `bool` | `true` | no |
| <a name="input_role"></a> [role](#input\_role) | n/a | `map` | `{}` | no |
| <a name="input_s3_bucket_acl"></a> [s3\_bucket\_acl](#input\_s3\_bucket\_acl) | Acl on the bucket | `string` | `"private"` | no |
| <a name="input_s3_bucket_force_destroy"></a> [s3\_bucket\_force\_destroy](#input\_s3\_bucket\_force\_destroy) | String Boolean to set bucket to be undeletable (well more difficult anyway) | `string` | n/a | yes |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | The name of the bucket | `string` | n/a | yes |
| <a name="input_s3_bucket_policy"></a> [s3\_bucket\_policy](#input\_s3\_bucket\_policy) | The IAM policy for the bucket | `string` | n/a | yes |
| <a name="input_s3_logging"></a> [s3\_logging](#input\_s3\_logging) | Enable logging on s3 bucket | `bool` | `true` | no |
| <a name="input_sse_algorithm"></a> [sse\_algorithm](#input\_sse\_algorithm) | The type of encryption algorithm to use | `string` | `"aws:kms"` | no |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | Enable versioning on s3 bucket | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | The AWS account number in use |
| <a name="output_bucket"></a> [bucket](#output\_bucket) | The  bucket |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Instructions

## Related Projects

Check out these related projects.

- [terraform-aws-statebucket](https://github.com/jameswoolfenden/terraform-aws-statebucket) - Terraform s3 state buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-3/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-3/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-s3&url=https://github.com/JamesWoolfenden/terraform-aws-3
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-s3&url=https://github.com/JamesWoolfenden/terraform-aws-3
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-3
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-3
[share_email]: mailto:?subject=terraform-aws-s3&body=https://github.com/JamesWoolfenden/terraform-aws-3
