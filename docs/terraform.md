## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| common_tags | This is a map type for applying tags on resources | map | - | yes |
| s3_bucket_acl | Acl on the bucket | string | `private` | no |
| s3_bucket_force_destroy | String Boolean to set bucket to be undeletable (well more difficult anyway) | string | - | yes |
| s3_bucket_name | The name of the bucket | string | - | yes |
| s3_bucket_policy | The IAM policy for the bucket | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| account_id | The AWS account number in use |
| bucket_domain_name | The full domain name of the bucket |
| s3_id | The id of the bucket |
