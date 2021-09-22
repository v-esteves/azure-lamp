# AD Identity

resource "azuread_application" "ad_aplication" {
  display_name = var.name
}

resource "azuread_service_principal" "ad_serviceprincipal" {
  application_id = azuread_application.ad_aplication.application_id
}

resource "azuread_service_principal_password" "ad_sp_password" {
  service_principal_id = azuread_service_principal.ad_serviceprincipal.id
}