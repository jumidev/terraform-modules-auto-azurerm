

resource "azurerm_spring_cloud_configuration_service" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  spring_cloud_service_id = var.spring_cloud_service_id

  ########################################
  # optional vars
  ########################################
  generation = var.generation

  dynamic "repository" { # var.repository
    for_each = var.repository != null ? var.repository : []
    content {
      label                    = lookup(repository.value, "label") # (Required) 
      name                     = repository.key
      patterns                 = lookup(repository.value, "patterns") # (Required) 
      uri                      = lookup(repository.value, "uri")      # (Required) 
      ca_certificate_id        = lookup(repository.value, "ca_certificate_id", null)
      host_key                 = lookup(repository.value, "host_key", null)
      host_key_algorithm       = lookup(repository.value, "host_key_algorithm", null)
      password                 = lookup(repository.value, "password", null)
      private_key              = lookup(repository.value, "private_key", null)
      search_paths             = lookup(repository.value, "search_paths", null)
      strict_host_key_checking = lookup(repository.value, "strict_host_key_checking", null)
      username                 = lookup(repository.value, "username", null)
    }
  }

}
