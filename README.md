# TERRAFORM-AWS-S3
This creates an s3 bucket with policy and applies the common tags scheme.
The module uses a tagging scheme based on the map variable common_tags.
This needs to consist of as a minimum (in your *terraform.tfvars*):
```
common_tags = {
    application = "terraform"
    module      = "s3"
    environment = "develop"
}
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| common\_tags | This is a map type for applying tags on resources | map | n/a | yes |
| s3\_bucket\_force\_destroy | String Boolean to set bucket to be undeletable (well more difficult anyway) | string | n/a | yes |
| s3\_bucket\_name | The name of the bucket | string | n/a | yes |
| s3\_bucket\_policy | Iam policy to control access to the resource | string | n/a | yes |
