

resource "azurerm_sentinel_metadata" "this" {

  ########################################
  # required vars
  ########################################
  content_id   = var.content_id
  kind         = var.kind
  name         = var.name
  parent_id    = var.parent_id
  workspace_id = var.workspace_id

  ########################################
  # optional vars
  ########################################

  dynamic "author" { # var.author
    for_each = var.author != null ? var.author : []
    content {
      name  = author.key
      email = lookup(author.value, "email", null)
      link  = lookup(author.value, "link", null)
    }
  }


  dynamic "category" { # var.category
    for_each = var.category != null ? var.category : []
    content {
      domains   = lookup(category.value, "domains", null)
      verticals = lookup(category.value, "verticals", null)
    }
  }

  content_schema_version = var.content_schema_version
  custom_version         = var.custom_version

  dynamic "dependency" { # var.dependency
    for_each = var.dependency != null ? var.dependency : []
    content {
      contentId = lookup(dependency.value, "contentId", null)
      kind      = lookup(dependency.value, "kind", null)
      version   = lookup(dependency.value, "version", null)
      operator  = lookup(dependency.value, "operator", null)
      criteria  = lookup(dependency.value, "criteria", null)
    }
  }

  first_publish_date  = var.first_publish_date
  icon_id             = var.icon_id
  last_publish_date   = var.last_publish_date
  preview_images      = var.preview_images
  preview_images_dark = var.preview_images_dark
  providers           = var.providers

  dynamic "source" { # var.source
    for_each = var.source != null ? var.source : []
    content {
      name = source.key
      kind = lookup(source.value, "kind") # (Required) possible values: Community | LocalWorkspace | Solution | SourceRepository
    }
  }


  dynamic "support" { # var.support
    for_each = var.support != null ? var.support : []
    content {
      tier  = lookup(support.value, "tier") # (Required) possible values: Microsoft | Partner | Community
      email = lookup(support.value, "email", null)
      link  = lookup(support.value, "link", null)
      name  = support.key
    }
  }

  threat_analysis_tactics    = var.threat_analysis_tactics
  threat_analysis_techniques = var.threat_analysis_techniques
  version                    = var.version
}
