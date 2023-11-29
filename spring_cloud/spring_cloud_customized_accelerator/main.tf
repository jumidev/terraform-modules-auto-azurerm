

resource "azurerm_spring_cloud_customized_accelerator" "this" {

  ########################################
  # required vars
  ########################################

  git_repository {
    url                 = lookup(git_repository.value, "url") # (Required) 
    basic_auth          = lookup(git_repository.value, "basic_auth", null)
    branch              = lookup(git_repository.value, "branch", null)
    ca_certificate_id   = lookup(git_repository.value, "ca_certificate_id", null)
    commit              = lookup(git_repository.value, "commit", null)
    git_tag             = lookup(git_repository.value, "git_tag", null)
    interval_in_seconds = lookup(git_repository.value, "interval_in_seconds", null)
    ssh_auth            = lookup(git_repository.value, "ssh_auth", null)
    path                = lookup(git_repository.value, "path", null)
  }

  name                        = var.name
  spring_cloud_accelerator_id = var.spring_cloud_accelerator_id

  ########################################
  # optional vars
  ########################################
  accelerator_tags = var.accelerator_tags
  accelerator_type = var.accelerator_type # Default: Accelerator
  description      = var.description
  display_name     = var.display_name
  icon_url         = var.icon_url
}
