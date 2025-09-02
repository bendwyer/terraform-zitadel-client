# terraform-zitadel-client

Terraform module for deploying a Zitadel project and OIDC application in Zitadel.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12.2 |
| <a name="requirement_zitadel"></a> [zitadel](#requirement\_zitadel) | >= 2.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_zitadel"></a> [zitadel](#provider\_zitadel) | >= 2.2.0 |



## Resources

| Name | Type |
|------|------|
| [zitadel_application_oidc.this](https://registry.terraform.io/providers/zitadel/zitadel/latest/docs/resources/application_oidc) | resource |
| [zitadel_project.this](https://registry.terraform.io/providers/zitadel/zitadel/latest/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_zitadel_additional_origins"></a> [zitadel\_additional\_origins](#input\_zitadel\_additional\_origins) | List of additional origins. | `list(string)` | n/a | yes |
| <a name="input_zitadel_application_oidc_name"></a> [zitadel\_application\_oidc\_name](#input\_zitadel\_application\_oidc\_name) | Name of the OIDC application. | `string` | n/a | yes |
| <a name="input_zitadel_application_oidc_redirect_uris"></a> [zitadel\_application\_oidc\_redirect\_uris](#input\_zitadel\_application\_oidc\_redirect\_uris) | List of redirect URIs. | `list(string)` | n/a | yes |
| <a name="input_zitadel_post_logout_redirect_uris"></a> [zitadel\_post\_logout\_redirect\_uris](#input\_zitadel\_post\_logout\_redirect\_uris) | List of post logout redirect URI's. | `list(string)` | n/a | yes |
| <a name="input_zitadel_project_name"></a> [zitadel\_project\_name](#input\_zitadel\_project\_name) | Name of the Zitadel project. | `string` | n/a | yes |
| <a name="input_access_token_role_assertion"></a> [access\_token\_role\_assertion](#input\_access\_token\_role\_assertion) | Access token role assertion. | `bool` | `null` | no |
| <a name="input_zitadel_has_project_check"></a> [zitadel\_has\_project\_check](#input\_zitadel\_has\_project\_check) | Checks if user's org has permission to this project. | `bool` | `null` | no |
| <a name="input_zitadel_id_token_role_assertion"></a> [zitadel\_id\_token\_role\_assertion](#input\_zitadel\_id\_token\_role\_assertion) | ID token role assertion. | `bool` | `null` | no |
| <a name="input_zitadel_id_token_userinfo_assertion"></a> [zitadel\_id\_token\_userinfo\_assertion](#input\_zitadel\_id\_token\_userinfo\_assertion) | ID token user info assertion. | `bool` | `null` | no |
| <a name="input_zitadel_project_role_assertion"></a> [zitadel\_project\_role\_assertion](#input\_zitadel\_project\_role\_assertion) | Describes if user roles should be added to token. | `bool` | `null` | no |
| <a name="input_zitadel_project_role_check"></a> [zitadel\_project\_role\_check](#input\_zitadel\_project\_role\_check) | Checks if user has at least one role in this project. | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_zitadel_application_oidc_client_id"></a> [zitadel\_application\_oidc\_client\_id](#output\_zitadel\_application\_oidc\_client\_id) | n/a |
| <a name="output_zitadel_application_oidc_client_secret"></a> [zitadel\_application\_oidc\_client\_secret](#output\_zitadel\_application\_oidc\_client\_secret) | n/a |

