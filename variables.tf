variable "service_principal_roles" {
  description = <<EOT
Map of service_principal_roles, attributes below
Required:
    - role
    - service_principal_id
Optional:
    - api
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    role                 = string
    service_principal_id = string
    api                  = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

