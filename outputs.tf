output "zitadel_application_oidc_client_id" {
  value     = zitadel_application_oidc.this.client_id
  sensitive = true
}

output "zitadel_application_oidc_client_secret" {
  value     = zitadel_application_oidc.this.client_secret
  sensitive = true
}
