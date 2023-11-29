data "azurerm_shared_image_gallery" "this" {
  name                = var.shared_image_gallery_name
  resource_group_name = var.shared_image_gallery_resource_group_name == null ? null : var.shared_image_gallery_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_shared_image" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  gallery_name        = data.azurerm_shared_image_gallery.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  identifier {
    offer     = lookup(identifier.value, "offer")     # (Required) 
    publisher = lookup(identifier.value, "publisher") # (Required) 
    sku       = lookup(identifier.value, "sku")       # (Required) 
  }

  os_type = var.os_type

  ########################################
  # optional vars
  ########################################

  dynamic "purchase_plan" { # var.purchase_plan
    for_each = var.purchase_plan != null ? var.purchase_plan : []
    content {
      name      = purchase_plan.key
      publisher = lookup(purchase_plan.value, "publisher", null)
      product   = lookup(purchase_plan.value, "product", null)
    }
  }

  description                         = var.description
  disk_types_not_allowed              = var.disk_types_not_allowed
  end_of_life_date                    = var.end_of_life_date
  eula                                = var.eula
  specialized                         = var.specialized
  architecture                        = var.architecture       # Default: x64
  hyper_v_generation                  = var.hyper_v_generation # Default: V1
  max_recommended_vcpu_count          = var.max_recommended_vcpu_count
  min_recommended_vcpu_count          = var.min_recommended_vcpu_count
  max_recommended_memory_in_gb        = var.max_recommended_memory_in_gb
  min_recommended_memory_in_gb        = var.min_recommended_memory_in_gb
  privacy_statement_uri               = var.privacy_statement_uri
  release_note_uri                    = var.release_note_uri
  trusted_launch_supported            = var.trusted_launch_supported
  trusted_launch_enabled              = var.trusted_launch_enabled
  confidential_vm_supported           = var.confidential_vm_supported
  confidential_vm_enabled             = var.confidential_vm_enabled
  accelerated_network_support_enabled = var.accelerated_network_support_enabled
  tags                                = var.tags
}
