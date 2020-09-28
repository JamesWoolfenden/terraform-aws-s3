# terraform-aws-s3

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-s3/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-s3)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-s3.svg)](https://github.com/JamesWoolfenden/terraform-aws-s3/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![pre-commit](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Terraform module to provision a secure Terraform S3 bucket. Has a provisioning test in its' Github actions

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

This creates an s3 bucket with policy and applies the common tags scheme.
The module uses a tagging scheme based on the map variable common_tags.
This needs to consist of as a minimum (in your **auto.tfvars**):

```HCL
common_tags = {
    application = "Terraform"
    module      = "S3"
    environment = "develop"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Inputs

| Name                    | Description                                                                 | Type     | Default                                                                                                                                                   | Required |
| ----------------------- | --------------------------------------------------------------------------- | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- | :------: |
| access_block            | n/a                                                                         | `map`    | <pre>{<br> "block_public_acls": false,<br> "block_public_policy": false,<br> "ignore_public_acls": false,<br> "restrict_public_buckets": false<br>}</pre> |    no    |
| common_tags             | This is a map type for applying tags on resources                           | `map`    | n/a                                                                                                                                                       |   yes    |
| mfa_delete              | To enable/disable MFA delete                                                | `bool`   | `true`                                                                                                                                                    |    no    |
| s3_bucket_acl           | Acl on the bucket                                                           | `string` | `"private"`                                                                                                                                               |    no    |
| s3_bucket_force_destroy | String Boolean to set bucket to be undeletable (well more difficult anyway) | `string` | n/a                                                                                                                                                       |   yes    |
| s3_bucket_name          | The name of the bucket                                                      | `string` | n/a                                                                                                                                                       |   yes    |
| s3_bucket_policy        | The IAM policy for the bucket                                               | `string` | n/a                                                                                                                                                       |   yes    |
| s3_logging              | Enable logging on s3 bucket                                                 | `bool`   | `true`                                                                                                                                                    |    no    |
| sse_algorithm           | The type of encryption algorithm to use                                     | `string` | `"aws:kms"`                                                                                                                                               |    no    |
| versioning              | Enable versioning on s3 bucket                                              | `bool`   | `true`                                                                                                                                                    |    no    |

## Outputs

| Name       | Description                   |
| ---------- | ----------------------------- |
| account_id | The AWS account number in use |
| bucket     | The bucket                    |

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

Copyright © 2019-2020 James Woolfenden

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
