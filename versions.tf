terraform {
  required_version = ">= 1.12.2"

  required_providers {
    zitadel = {
      source  = "zitadel/zitadel"
      version = ">= 2.2.0"
    }
  }
}
