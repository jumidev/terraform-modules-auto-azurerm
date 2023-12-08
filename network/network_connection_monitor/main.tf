

resource "azurerm_network_connection_monitor" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  location           = var.location
  network_watcher_id = var.network_watcher_id

  endpoint {
    name                  = lookup(endpoint.value, "name") # (Required) 
    address               = lookup(endpoint.value, "address", null)
    coverage_level        = lookup(endpoint.value, "coverage_level", null)
    excluded_ip_addresses = lookup(endpoint.value, "excluded_ip_addresses", null)
    included_ip_addresses = lookup(endpoint.value, "included_ip_addresses", null)
    target_resource_id    = lookup(endpoint.value, "target_resource_id", null)
    filter                = lookup(endpoint.value, "filter", null)
    target_resource_type  = lookup(endpoint.value, "target_resource_type", null)
  }


  test_configuration {
    name                      = lookup(test_configuration.value, "name")     # (Required) 
    protocol                  = lookup(test_configuration.value, "protocol") # (Required) 
    test_frequency_in_seconds = lookup(test_configuration.value, "test_frequency_in_seconds", 60)
    http_configuration        = lookup(test_configuration.value, "http_configuration", null)
    icmp_configuration        = lookup(test_configuration.value, "icmp_configuration", null)
    preferred_ip_version      = lookup(test_configuration.value, "preferred_ip_version", null)
    success_threshold         = lookup(test_configuration.value, "success_threshold", null)
    tcp_configuration         = lookup(test_configuration.value, "tcp_configuration", null)
  }


  test_group {
    name                     = lookup(test_group.value, "name")                     # (Required) 
    destination_endpoints    = lookup(test_group.value, "destination_endpoints")    # (Required) 
    source_endpoints         = lookup(test_group.value, "source_endpoints")         # (Required) 
    test_configuration_names = lookup(test_group.value, "test_configuration_names") # (Required) 
    enabled                  = lookup(test_group.value, "enabled", true)
  }


  ########################################
  # optional vars
  ########################################
  notes                         = var.notes
  output_workspace_resource_ids = var.output_workspace_resource_ids
  tags                          = var.tags
}
