/**
 * # terraform-zitadel-client
 *
 * Terraform module for deploying a Zitadel project and OIDC application in Zitadel.
 *
 */

resource "zitadel_project" "this" {
  name                   = var.zitadel_project_name
  has_project_check      = var.zitadel_has_project_check
  org_id                 = var.zitadel_org_id
  project_role_assertion = var.zitadel_project_role_assertion
  project_role_check     = var.zitadel_project_role_check
}

resource "zitadel_application_oidc" "this" {
  grant_types                  = ["OIDC_GRANT_TYPE_AUTHORIZATION_CODE", "OIDC_GRANT_TYPE_REFRESH_TOKEN"]
  name                         = var.zitadel_application_oidc_name
  project_id                   = zitadel_project.this.id
  redirect_uris                = var.zitadel_application_oidc_redirect_uris
  response_types               = ["OIDC_RESPONSE_TYPE_CODE"]
  access_token_role_assertion  = var.access_token_role_assertion
  access_token_type            = "OIDC_TOKEN_TYPE_BEARER"
  additional_origins           = var.zitadel_additional_origins
  app_type                     = "OIDC_APP_TYPE_WEB"
  auth_method_type             = "OIDC_AUTH_METHOD_TYPE_BASIC"
  dev_mode                     = var.zitadel_dev_mode
  id_token_role_assertion      = var.zitadel_id_token_role_assertion
  id_token_userinfo_assertion  = var.zitadel_id_token_userinfo_assertion
  org_id                       = var.zitadel_org_id
  post_logout_redirect_uris    = var.zitadel_post_logout_redirect_uris
  skip_native_app_success_page = var.zitadel_skip_native_app_success_page
}
