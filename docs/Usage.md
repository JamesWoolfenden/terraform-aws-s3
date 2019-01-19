## Usage

This creates an s3 bucket with policy and applies the common tags scheme.
The module uses a tagging scheme based on the map variable common_tags.
This needs to consist of as a minimum (in your _terraform.tfvars_):

```HCL
common_tags = {
    application = "terraform"
    module      = "s3"
    environment = "develop"
}
```
