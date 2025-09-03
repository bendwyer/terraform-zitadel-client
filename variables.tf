variable "zitadel_project_name" {
  description = "Name of the Zitadel project."
  type        = string
}

variable "zitadel_has_project_check" {
  default     = false
  description = "Checks if user's org has permission to this project."
  type        = bool
}

variable "zitadel_org_id" {
  description = "Organization ID."
  type        = string
}

variable "zitadel_project_role_assertion" {
  default     = false
  description = "Describes if user roles should be added to token."
  type        = bool
}

variable "zitadel_project_role_check" {
  default     = false
  description = "Checks if user has at least one role in this project."
  type        = bool
}

variable "zitadel_application_oidc_name" {
  description = "Name of the OIDC application."
  type        = string
}

variable "zitadel_application_oidc_redirect_uris" {
  description = "List of redirect URIs."
  type        = list(string)
}

variable "zitadel_post_logout_redirect_uris" {
  description = "List of post logout redirect URI's."
  type        = list(string)
}

variable "access_token_role_assertion" {
  default     = false
  description = "Access token role assertion."
  type        = bool
}

variable "zitadel_id_token_role_assertion" {
  default     = false
  description = "ID token role assertion."
  type        = bool
}

variable "zitadel_id_token_userinfo_assertion" {
  default     = false
  description = "ID token user info assertion."
  type        = bool
}

variable "zitadel_additional_origins" {
  description = "List of additional origins."
  type        = list(string)
}

variable "zitadel_skip_native_app_success_page" {
  default     = false
  description = "Skips successful login page on native apps and directly redirect the user to the callback."
  type        = bool
}

variable "zitadel_dev_mode" {
  default     = false
  description = "Dev mode."
  type        = bool
}
