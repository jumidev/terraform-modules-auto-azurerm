resource "random_string" "sql_connectivity_update_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_mssql_virtual_machine" "this" {

  ########################################
  # required vars
  ########################################
  virtual_machine_id = var.virtual_machine_id

  ########################################
  # optional vars
  ########################################
  sql_license_type = var.sql_license_type
  auto_backup      = var.auto_backup

  dynamic "auto_patching" { # var.auto_patching
    for_each = var.auto_patching != null ? var.auto_patching : []
    content {
      day_of_week                            = lookup(auto_patching.value, "day_of_week")                            # (Required) possible values: Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
      maintenance_window_starting_hour       = lookup(auto_patching.value, "maintenance_window_starting_hour")       # (Required) 
      maintenance_window_duration_in_minutes = lookup(auto_patching.value, "maintenance_window_duration_in_minutes") # (Required) 
    }
  }


  dynamic "key_vault_credential" { # var.key_vault_credential
    for_each = var.key_vault_credential != null ? var.key_vault_credential : []
    content {
      name                     = key_vault_credential.key
      key_vault_url            = lookup(key_vault_credential.value, "key_vault_url")            # (Required) 
      service_principal_name   = lookup(key_vault_credential.value, "service_principal_name")   # (Required) 
      service_principal_secret = lookup(key_vault_credential.value, "service_principal_secret") # (Required) 
    }
  }

  r_services_enabled               = var.r_services_enabled
  sql_connectivity_port            = var.sql_connectivity_port # Default: 1433
  sql_connectivity_type            = var.sql_connectivity_type # Default: PRIVATE
  sql_connectivity_update_password = random_string.sql_connectivity_update_password.result
  sql_connectivity_update_username = var.sql_connectivity_update_username

  dynamic "sql_instance" { # var.sql_instance
    for_each = var.sql_instance != null ? var.sql_instance : []
    content {
      adhoc_workloads_optimization_enabled = lookup(sql_instance.value, "adhoc_workloads_optimization_enabled", false)
      collation                            = lookup(sql_instance.value, "collation", "SQL_Latin1_General_CP1_CI_AS")
      instant_file_initialization_enabled  = lookup(sql_instance.value, "instant_file_initialization_enabled", false)
      lock_pages_in_memory_enabled         = lookup(sql_instance.value, "lock_pages_in_memory_enabled", false)
      max_dop                              = lookup(sql_instance.value, "max_dop", "0")
      max_server_memory_mb                 = lookup(sql_instance.value, "max_server_memory_mb", "2147483647")
      min_server_memory_mb                 = lookup(sql_instance.value, "min_server_memory_mb", "0")
    }
  }


  dynamic "storage_configuration" { # var.storage_configuration
    for_each = var.storage_configuration != null ? var.storage_configuration : []
    content {
      disk_type             = lookup(storage_configuration.value, "disk_type")             # (Required) possible values: NEW | EXTEND | ADD
      storage_workload_type = lookup(storage_configuration.value, "storage_workload_type") # (Required) possible values: GENERAL | OLTP | DW

      dynamic "data_settings" { # storage_configuration.value.data_settings
        for_each = storage_configuration.value.data_settings != null ? storage_configuration.value.data_settings : []
        content {
          default_file_path = lookup(data_settings.value, "default_file_path") # (Required) 
          luns              = lookup(data_settings.value, "luns")              # (Required) 
        }
      }


      dynamic "log_settings" { # storage_configuration.value.log_settings
        for_each = storage_configuration.value.log_settings != null ? storage_configuration.value.log_settings : []
        content {
          default_file_path = lookup(log_settings.value, "default_file_path") # (Required) 
          luns              = lookup(log_settings.value, "luns")              # (Required) 
        }
      }

      system_db_on_data_disk_enabled = lookup(storage_configuration.value, "system_db_on_data_disk_enabled", false)

      dynamic "temp_db_settings" { # storage_configuration.value.temp_db_settings
        for_each = storage_configuration.value.temp_db_settings != null ? storage_configuration.value.temp_db_settings : []
        content {
          default_file_path      = lookup(temp_db_settings.value, "default_file_path") # (Required) 
          luns                   = lookup(temp_db_settings.value, "luns")              # (Required) 
          data_file_count        = lookup(temp_db_settings.value, "data_file_count", "8")
          data_file_size_mb      = lookup(temp_db_settings.value, "data_file_size_mb", "256")
          data_file_growth_in_mb = lookup(temp_db_settings.value, "data_file_growth_in_mb", "512")
          log_file_size_mb       = lookup(temp_db_settings.value, "log_file_size_mb", "256")
          log_file_growth_mb     = lookup(temp_db_settings.value, "log_file_growth_mb", "512")
        }
      }

    }
  }


  dynamic "assessment" { # var.assessment
    for_each = var.assessment != null ? var.assessment : []
    content {
      enabled         = lookup(assessment.value, "enabled", true)
      run_immediately = lookup(assessment.value, "run_immediately", false)

      dynamic "schedule" { # assessment.value.schedule
        for_each = assessment.value.schedule != null ? assessment.value.schedule : []
        content {
          weekly_interval    = lookup(schedule.value, "weekly_interval", null)
          monthly_occurrence = lookup(schedule.value, "monthly_occurrence", null)
          day_of_week        = lookup(schedule.value, "day_of_week") # (Required) possible values: Friday | Monday | Saturday | Sunday | Thursday | Tuesday | Wednesday
          start_time         = lookup(schedule.value, "start_time")  # (Required) 
        }
      }

    }
  }

  sql_virtual_machine_group_id = var.sql_virtual_machine_group_id

  dynamic "wsfc_domain_credential" { # var.wsfc_domain_credential
    for_each = var.wsfc_domain_credential != null ? var.wsfc_domain_credential : []
    content {
      cluster_bootstrap_account_password = lookup(wsfc_domain_credential.value, "cluster_bootstrap_account_password") # (Required) 
      cluster_operator_account_password  = lookup(wsfc_domain_credential.value, "cluster_operator_account_password")  # (Required) 
      sql_service_account_password       = lookup(wsfc_domain_credential.value, "sql_service_account_password")       # (Required) 
    }
  }

  tags = var.tags
}
