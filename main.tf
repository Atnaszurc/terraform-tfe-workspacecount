terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~>0.67.0"
    }
  }
}

locals {
  projects = { for p in data.tfe_projects.all.projects : p.name => {
    id   = p.id
    name = p.name
    }
  }
  workspaces = { for w in data.tfe_workspace.this : w.name => {
    name              = w.name
    project_id        = w.project_id
    terraform_version = w.terraform_version
    resources         = w.resource_count
    }
  }
  workspace_info = [
    for w in local.workspaces : {
      project_name      = [for p in local.projects : p.name if p.id == w.project_id][0]
      workspace_name    = w.name
      terraform_version = w.terraform_version
      resources         = w.resources
    }
  ]
}
