data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_hdinsight_spark_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  cluster_version     = var.cluster_version

  component_version {
    spark = lookup(component_version.value, "spark") # (Required) 
  }


  gateway {
    password = lookup(gateway.value, "password") # (Required) 
    username = lookup(gateway.value, "username") # (Required) 
  }


  roles {
    head_node      = lookup(roles.value, "head_node")      # (Required) 
    worker_node    = lookup(roles.value, "worker_node")    # (Required) 
    zookeeper_node = lookup(roles.value, "zookeeper_node") # (Required) 
  }

  tier = var.tier

  ########################################
  # optional vars
  ########################################
  encryption_in_transit_enabled = var.encryption_in_transit_enabled

  dynamic "disk_encryption" { # var.disk_encryption
    for_each = var.disk_encryption != null ? var.disk_encryption : []
    content {
      encryption_algorithm          = lookup(disk_encryption.value, "encryption_algorithm", null)
      encryption_at_host_enabled    = lookup(disk_encryption.value, "encryption_at_host_enabled", null)
      key_vault_key_id              = lookup(disk_encryption.value, "key_vault_key_id", null)
      key_vault_managed_identity_id = lookup(disk_encryption.value, "key_vault_managed_identity_id", null)
    }
  }


  dynamic "network" { # var.network
    for_each = var.network != null ? var.network : []
    content {
      connection_direction = lookup(network.value, "connection_direction", "Inbound")
      private_link_enabled = lookup(network.value, "private_link_enabled", false)
    }
  }


  dynamic "compute_isolation" { # var.compute_isolation
    for_each = var.compute_isolation != null ? var.compute_isolation : []
    content {
      compute_isolation_enabled = lookup(compute_isolation.value, "compute_isolation_enabled", null)
      host_sku                  = lookup(compute_isolation.value, "host_sku", null)
    }
  }


  dynamic "storage_account" { # var.storage_account
    for_each = var.storage_account != null ? var.storage_account : []
    content {
      is_default           = lookup(storage_account.value, "is_default")           # (Required) 
      storage_account_key  = lookup(storage_account.value, "storage_account_key")  # (Required) 
      storage_container_id = lookup(storage_account.value, "storage_container_id") # (Required) 
      storage_resource_id  = lookup(storage_account.value, "storage_resource_id", null)
    }
  }


  dynamic "storage_account_gen2" { # var.storage_account_gen2
    for_each = var.storage_account_gen2 != null ? var.storage_account_gen2 : []
    content {
      is_default                   = lookup(storage_account_gen2.value, "is_default")                   # (Required) 
      storage_resource_id          = lookup(storage_account_gen2.value, "storage_resource_id")          # (Required) 
      filesystem_id                = lookup(storage_account_gen2.value, "filesystem_id")                # (Required) 
      managed_identity_resource_id = lookup(storage_account_gen2.value, "managed_identity_resource_id") # (Required) 
    }
  }

  tls_min_version = var.tls_min_version
  tags            = var.tags

  dynamic "metastores" { # var.metastores
    for_each = var.metastores != null ? var.metastores : []
    content {

      dynamic "hive" { # metastores.value.hive
        for_each = metastores.value.hive != null ? metastores.value.hive : []
        content {
          server        = lookup(hive.value, "server")        # (Required) 
          database_name = lookup(hive.value, "database_name") # (Required) 
          username      = lookup(hive.value, "username")      # (Required) 
          password      = lookup(hive.value, "password")      # (Required) 
        }
      }


      dynamic "oozie" { # metastores.value.oozie
        for_each = metastores.value.oozie != null ? metastores.value.oozie : []
        content {
          server        = lookup(oozie.value, "server")        # (Required) 
          database_name = lookup(oozie.value, "database_name") # (Required) 
          username      = lookup(oozie.value, "username")      # (Required) 
          password      = lookup(oozie.value, "password")      # (Required) 
        }
      }


      dynamic "ambari" { # metastores.value.ambari
        for_each = metastores.value.ambari != null ? metastores.value.ambari : []
        content {
          server        = lookup(ambari.value, "server")        # (Required) 
          database_name = lookup(ambari.value, "database_name") # (Required) 
          username      = lookup(ambari.value, "username")      # (Required) 
          password      = lookup(ambari.value, "password")      # (Required) 
        }
      }

    }
  }


  dynamic "monitor" { # var.monitor
    for_each = var.monitor != null ? var.monitor : []
    content {
      log_analytics_workspace_id = lookup(monitor.value, "log_analytics_workspace_id") # (Required) 
      primary_key                = lookup(monitor.value, "primary_key")                # (Required) 
    }
  }


  dynamic "extension" { # var.extension
    for_each = var.extension != null ? var.extension : []
    content {
      log_analytics_workspace_id = lookup(extension.value, "log_analytics_workspace_id") # (Required) 
      primary_key                = lookup(extension.value, "primary_key")                # (Required) 
    }
  }


  dynamic "security_profile" { # var.security_profile
    for_each = var.security_profile != null ? var.security_profile : []
    content {
      aadds_resource_id       = lookup(security_profile.value, "aadds_resource_id")    # (Required) 
      domain_name             = lookup(security_profile.value, "domain_name")          # (Required) 
      domain_username         = lookup(security_profile.value, "domain_username")      # (Required) 
      domain_user_password    = lookup(security_profile.value, "domain_user_password") # (Required) 
      ldaps_urls              = lookup(security_profile.value, "ldaps_urls")           # (Required) 
      msi_resource_id         = lookup(security_profile.value, "msi_resource_id")      # (Required) 
      cluster_users_group_dns = lookup(security_profile.value, "cluster_users_group_dns", null)
    }
  }

}
