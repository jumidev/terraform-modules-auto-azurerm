

resource "azurerm_network_function_collector_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  traffic_collector_id = var.traffic_collector_id
  location             = var.location

  ipfx_emission {
    destination_types = lookup(ipfx_emission.value, "destination_types") # (Required) 
  }


  ipfx_ingestion {
    source_resource_ids = lookup(ipfx_ingestion.value, "source_resource_ids") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
