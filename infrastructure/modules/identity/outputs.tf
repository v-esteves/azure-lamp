# AD Identity values
output "client_id" {
  value = azuread_service_principal.ad_serviceprincipal.application_id
}

output "serviceprincipal_secret" {
  sensitive = true
  value     = azuread_service_principal_password.ad_sp_password.value
}
