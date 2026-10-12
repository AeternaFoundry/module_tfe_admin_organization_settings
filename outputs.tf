output "admin_organization_settings_id" {
  description = "Map of id values across all admin_organization_settings, keyed the same as var.admin_organization_settings except keys with no id are omitted"
  value       = { for k, v in tfe_admin_organization_settings.admin_organization_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "admin_organization_settings_access_beta_tools" {
  description = "Map of access_beta_tools values across all admin_organization_settings, keyed the same as var.admin_organization_settings except keys with no access_beta_tools are omitted"
  value       = { for k, v in tfe_admin_organization_settings.admin_organization_settings : k => v.access_beta_tools if v.access_beta_tools != null }
}
output "admin_organization_settings_global_module_sharing" {
  description = "Map of global_module_sharing values across all admin_organization_settings, keyed the same as var.admin_organization_settings except keys with no global_module_sharing are omitted"
  value       = { for k, v in tfe_admin_organization_settings.admin_organization_settings : k => v.global_module_sharing if v.global_module_sharing != null }
}
output "admin_organization_settings_module_sharing_consumer_organizations" {
  description = "Map of module_sharing_consumer_organizations values across all admin_organization_settings, keyed the same as var.admin_organization_settings except keys with no module_sharing_consumer_organizations are omitted"
  value       = { for k, v in tfe_admin_organization_settings.admin_organization_settings : k => v.module_sharing_consumer_organizations if v.module_sharing_consumer_organizations != null && length(v.module_sharing_consumer_organizations) > 0 }
}
output "admin_organization_settings_organization" {
  description = "Map of organization values across all admin_organization_settings, keyed the same as var.admin_organization_settings except keys with no organization are omitted"
  value       = { for k, v in tfe_admin_organization_settings.admin_organization_settings : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "admin_organization_settings_sso_enabled" {
  description = "Map of sso_enabled values across all admin_organization_settings, keyed the same as var.admin_organization_settings except keys with no sso_enabled are omitted"
  value       = { for k, v in tfe_admin_organization_settings.admin_organization_settings : k => v.sso_enabled if v.sso_enabled != null }
}
output "admin_organization_settings_workspace_limit" {
  description = "Map of workspace_limit values across all admin_organization_settings, keyed the same as var.admin_organization_settings except keys with no workspace_limit are omitted"
  value       = { for k, v in tfe_admin_organization_settings.admin_organization_settings : k => v.workspace_limit if v.workspace_limit != null }
}

