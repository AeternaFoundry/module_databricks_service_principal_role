resource "databricks_service_principal_role" "service_principal_roles" {
  for_each = var.service_principal_roles

  role                 = each.value.role
  service_principal_id = each.value.service_principal_id
  api                  = each.value.api

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

