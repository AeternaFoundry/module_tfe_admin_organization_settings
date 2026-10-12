resource "tfe_admin_organization_settings" "admin_organization_settings" {
  for_each = var.admin_organization_settings

  access_beta_tools                     = each.value.access_beta_tools
  global_module_sharing                 = each.value.global_module_sharing
  module_sharing_consumer_organizations = each.value.module_sharing_consumer_organizations
  organization                          = each.value.organization
  workspace_limit                       = each.value.workspace_limit
}

