

resource "azurerm_shared_image_gallery" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  description = var.description

  dynamic "sharing" { # var.sharing
    for_each = var.sharing != null ? var.sharing : []
    content {
      permission = lookup(sharing.value, "permission") # (Required) possible values: Community | Groups | Private

      dynamic "community_gallery" { # sharing.value.community_gallery
        for_each = sharing.value.community_gallery != null ? sharing.value.community_gallery : []
        content {
          eula            = lookup(community_gallery.value, "eula")            # (Required) 
          prefix          = lookup(community_gallery.value, "prefix")          # (Required) 
          publisher_email = lookup(community_gallery.value, "publisher_email") # (Required) 
          publisher_uri   = lookup(community_gallery.value, "publisher_uri")   # (Required) 
        }
      }

    }
  }

  tags = var.tags
}
