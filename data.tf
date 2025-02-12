data "tfe_projects" "all" {
  organization = var.organization
}

data "tfe_project" "this" {
  for_each     = toset(data.tfe_projects.all.projects.*.name)
  name         = each.key
  organization = var.organization
}

data "tfe_workspace" "this" {
  for_each     = toset(flatten([for p in data.tfe_project.this : p.workspace_names]))
  name         = each.key
  organization = var.organization
}
