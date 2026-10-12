variable "admin_organization_settings" {
  description = <<EOT
Map of admin_organization_settings, attributes below
Optional:
    - access_beta_tools
    - global_module_sharing
    - module_sharing_consumer_organizations
    - organization
    - workspace_limit
EOT

  type = map(object({
    access_beta_tools                     = optional(bool)
    global_module_sharing                 = optional(bool)
    module_sharing_consumer_organizations = optional(set(string))
    organization                          = optional(string)
    workspace_limit                       = optional(number)
  }))
}

