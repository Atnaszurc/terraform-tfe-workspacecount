terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.63.0"
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
    }
  }
  workspace_info = [
    for w in local.workspaces : {
      project_name      = [for p in local.projects : p.name if p.id == w.project_id][0]
      workspace_name    = w.name
      terraform_version = w.terraform_version
    }
  ]
}

output "Workspaces" {
  value = local.workspace_info
}
