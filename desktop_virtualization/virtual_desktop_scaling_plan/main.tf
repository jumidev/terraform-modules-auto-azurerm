data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_desktop_scaling_plan" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  dynamic "schedule" { # var.schedule
    for_each = var.schedule != null ? var.schedule : []
    content {
      days_of_week                         = lookup(schedule.value, "days_of_week") # (Required) possible values: Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
      name                                 = schedule.key
      off_peak_load_balancing_algorithm    = lookup(schedule.value, "off_peak_load_balancing_algorithm")    # (Required) possible values: DepthFirst | BreadthFirst
      off_peak_start_time                  = lookup(schedule.value, "off_peak_start_time")                  # (Required) 
      peak_load_balancing_algorithm        = lookup(schedule.value, "peak_load_balancing_algorithm")        # (Required) possible values: DepthFirst | BreadthFirst
      peak_start_time                      = lookup(schedule.value, "peak_start_time")                      # (Required) 
      ramp_down_capacity_threshold_percent = lookup(schedule.value, "ramp_down_capacity_threshold_percent") # (Required) 
      ramp_down_force_logoff_users         = lookup(schedule.value, "ramp_down_force_logoff_users")         # (Required) 
      ramp_down_load_balancing_algorithm   = lookup(schedule.value, "ramp_down_load_balancing_algorithm")   # (Required) possible values: DepthFirst | BreadthFirst
      ramp_down_minimum_hosts_percent      = lookup(schedule.value, "ramp_down_minimum_hosts_percent")      # (Required) 
      ramp_down_notification_message       = lookup(schedule.value, "ramp_down_notification_message")       # (Required) 
      ramp_down_start_time                 = lookup(schedule.value, "ramp_down_start_time")                 # (Required) 
      ramp_down_stop_hosts_when            = lookup(schedule.value, "ramp_down_stop_hosts_when")            # (Required) possible values: ZeroSessions | ZeroActiveSessions
      ramp_down_wait_time_minutes          = lookup(schedule.value, "ramp_down_wait_time_minutes")          # (Required) 
      ramp_up_load_balancing_algorithm     = lookup(schedule.value, "ramp_up_load_balancing_algorithm")     # (Required) possible values: DepthFirst | BreadthFirst
      ramp_up_start_time                   = lookup(schedule.value, "ramp_up_start_time")                   # (Required) 
      ramp_up_capacity_threshold_percent   = lookup(schedule.value, "ramp_up_capacity_threshold_percent", null)
      ramp_up_minimum_hosts_percent        = lookup(schedule.value, "ramp_up_minimum_hosts_percent", null)
    }
  }

  time_zone = var.time_zone

  ########################################
  # optional vars
  ########################################

  dynamic "host_pool" { # var.host_pool
    for_each = var.host_pool != null ? var.host_pool : []
    content {
      hostpool_id          = lookup(host_pool.value, "hostpool_id")          # (Required) 
      scaling_plan_enabled = lookup(host_pool.value, "scaling_plan_enabled") # (Required) 
    }
  }

  description   = var.description
  exclusion_tag = var.exclusion_tag
  friendly_name = var.friendly_name
  tags          = var.tags
}
