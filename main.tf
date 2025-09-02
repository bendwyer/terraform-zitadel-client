/**
 * # terraform-zitadel-client
 *
 * Terraform module for deploying a Zitadel project and OIDC application in Zitadel.
 *
 */

resource "zitadel_project" "this" {
  name                   = var.zitadel_project_name
  project_role_assertion = var.zitadel_project_role_assertion
  project_role_check     = var.zitadel_project_role_check
  has_project_check      = var.zitadel_has_project_check
}

resource "zitadel_application_oidc" "this" {
  project_id                  = zitadel_project.this.id
  name                        = var.zitadel_application_oidc_name
  redirect_uris               = var.zitadel_application_oidc_redirect_uris
  response_types              = ["OIDC_RESPONSE_TYPE_CODE"]
  grant_types                 = ["OIDC_GRANT_TYPE_AUTHORIZATION_CODE", "OIDC_GRANT_TYPE_REFRESH_TOKEN"]
  post_logout_redirect_uris   = var.zitadel_post_logout_redirect_uris
  app_type                    = "OIDC_APP_TYPE_WEB"
  auth_method_type            = "OIDC_AUTH_METHOD_TYPE_BASIC"
  access_token_type           = "OIDC_TOKEN_TYPE_BEARER"
  access_token_role_assertion = var.access_token_role_assertion
  id_token_role_assertion     = var.zitadel_id_token_role_assertion
  id_token_userinfo_assertion = var.zitadel_id_token_userinfo_assertion
  additional_origins          = var.zitadel_additional_origins
}
