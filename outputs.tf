output "service_principal_roles_id" {
  description = "Map of id values across all service_principal_roles, keyed the same as var.service_principal_roles except keys with no id are omitted"
  value       = { for k, v in databricks_service_principal_role.service_principal_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_principal_roles_api" {
  description = "Map of api values across all service_principal_roles, keyed the same as var.service_principal_roles except keys with no api are omitted"
  value       = { for k, v in databricks_service_principal_role.service_principal_roles : k => v.api if v.api != null && length(v.api) > 0 }
}
output "service_principal_roles_provider_config" {
  description = "Map of provider_config values across all service_principal_roles, keyed the same as var.service_principal_roles except keys with no provider_config are omitted"
  value       = { for k, v in databricks_service_principal_role.service_principal_roles : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "service_principal_roles_role" {
  description = "Map of role values across all service_principal_roles, keyed the same as var.service_principal_roles except keys with no role are omitted"
  value       = { for k, v in databricks_service_principal_role.service_principal_roles : k => v.role if v.role != null && length(v.role) > 0 }
}
output "service_principal_roles_service_principal_id" {
  description = "Map of service_principal_id values across all service_principal_roles, keyed the same as var.service_principal_roles except keys with no service_principal_id are omitted"
  value       = { for k, v in databricks_service_principal_role.service_principal_roles : k => v.service_principal_id if v.service_principal_id != null && length(v.service_principal_id) > 0 }
}

