

resource "azurerm_cosmosdb_cassandra_table" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  cassandra_keyspace_id = var.cassandra_keyspace_id

  schema {
    column        = lookup(schema.value, "column")        # (Required) 
    partition_key = lookup(schema.value, "partition_key") # (Required) 
    cluster_key   = lookup(schema.value, "cluster_key", null)
  }


  ########################################
  # optional vars
  ########################################
  throughput             = var.throughput
  default_ttl            = var.default_ttl
  analytical_storage_ttl = var.analytical_storage_ttl

  dynamic "autoscale_settings" { # var.autoscale_settings
    for_each = var.autoscale_settings != null ? var.autoscale_settings : []
    content {
      max_throughput = lookup(autoscale_settings.value, "max_throughput", null)
    }
  }

}
