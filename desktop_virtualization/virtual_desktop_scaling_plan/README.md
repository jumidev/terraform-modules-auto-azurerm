# azurerm_virtual_desktop_scaling_plan

Manages a Virtual Desktop Scaling Plan.## Disclaimers-> **Note** Scaling Plans are currently in preview and are only supported in a limited number of regions. Both the Scaling Plan and any referenced Host Pools must be deployed in a supported region. [Autoscale (preview) for Azure Virtual Desktop host pools](https://docs.microsoft.com/azure/virtual-desktop/autoscale-scaling-plan).-> **Note** Scaling Plans require specific permissions to be granted to the Windows Virtual Desktop application before a 'host_pool' can be configured. [Required Permissions for Scaling Plans](https://docs.microsoft.com/azure/virtual-desktop/autoscale-scaling-plan#create-a-custom-rbac-role).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "desktop_virtualization/virtual_desktop_scaling_plan" 
}

inputs = {
   location = "${location}" 
   name = "name of virtual_desktop_scaling_plan" 
   resource_group_name = "${resource_group}" 
   schedule = {
      example_schedule = {
         days_of_week = "..."   
         off_peak_load_balancing_algorithm = "..."   
         off_peak_start_time = "..."   
         peak_load_balancing_algorithm = "..."   
         peak_start_time = "..."   
         ramp_down_capacity_threshold_percent = "..."   
         ramp_down_force_logoff_users = "..."   
         ramp_down_load_balancing_algorithm = "..."   
         ramp_down_minimum_hosts_percent = "..."   
         ramp_down_notification_message = "..."   
         ramp_down_start_time = "..."   
         ramp_down_stop_hosts_when = "..."   
         ramp_down_wait_time_minutes = "..."   
         ramp_up_load_balancing_algorithm = "..."   
         ramp_up_start_time = "..."   
      }
  
   }
 
   time_zone = "time_zone of virtual_desktop_scaling_plan" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.location** | string |  The Azure Region where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created. | 
| **var.name** | string |  The name which should be used for this Virtual Desktop Scaling Plan . Changing this forces a new Virtual Desktop Scaling Plan to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created. | 
| **var.schedule** | block |  One or more `schedule` blocks. | 
| **var.time_zone** | string |  Specifies the Time Zone which should be used by the Scaling Plan for time based events, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.host_pool** | block |  One or more `host_pool` blocks. | 
| **var.description** | string |  A description of the Scaling Plan. | 
| **var.exclusion_tag** | string |  The name of the tag associated with the VMs you want to exclude from autoscaling. | 
| **var.friendly_name** | string |  Friendly name of the Scaling Plan. | 
| **var.tags** | map |  A mapping of tags which should be assigned to the Virtual Desktop Scaling Plan . | 

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days_of_week` | string | Yes | - | A list of Days of the Week on which this schedule will be used. Possible values are 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', and 'Sunday' |
| `off_peak_load_balancing_algorithm` | string | Yes | - | The load Balancing Algorithm to use during Off-Peak Hours. Possible values are 'DepthFirst' and 'BreadthFirst'. |
| `off_peak_start_time` | string | Yes | - | The time at which Off-Peak scaling will begin. This is also the end-time for the Ramp-Down period. The time must be specified in 'HH:MM' format. |
| `peak_load_balancing_algorithm` | string | Yes | - | The load Balancing Algorithm to use during Peak Hours. Possible values are 'DepthFirst' and 'BreadthFirst'. |
| `peak_start_time` | string | Yes | - | The time at which Peak scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in 'HH:MM' format. |
| `ramp_down_capacity_threshold_percent` | string | Yes | - | This is the value in percentage of used host pool capacity that will be considered to evaluate whether to turn on/off virtual machines during the ramp-down and off-peak hours. For example, if capacity threshold is specified as 60% and your total host pool capacity is 100 sessions, autoscale will turn on additional session hosts once the host pool exceeds a load of 60 sessions. |
| `ramp_down_force_logoff_users` | string | Yes | - | Whether users will be forced to log-off session hosts once the 'ramp_down_wait_time_minutes' value has been exceeded during the Ramp-Down period. Possible |
| `ramp_down_load_balancing_algorithm` | string | Yes | - | The load Balancing Algorithm to use during the Ramp-Down period. Possible values are 'DepthFirst' and 'BreadthFirst'. |
| `ramp_down_minimum_hosts_percent` | int | Yes | - | The minimum percentage of session host virtual machines that you would like to get to for ramp-down and off-peak hours. For example, if Minimum percentage of hosts is specified as 10% and total number of session hosts in your host pool is 10, autoscale will ensure a minimum of 1 session host is available to take user connections. |
| `ramp_down_notification_message` | string | Yes | - | The notification message to send to users during Ramp-Down period when they are required to log-off. |
| `ramp_down_start_time` | string | Yes | - | The time at which Ramp-Down scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in 'HH:MM' format. |
| `ramp_down_stop_hosts_when` | string | Yes | - | Controls Session Host shutdown behaviour during Ramp-Down period. Session Hosts can either be shutdown when all sessions on the Session Host have ended, or when there are no Active sessions left on the Session Host. Possible values are 'ZeroSessions' and 'ZeroActiveSessions'. |
| `ramp_down_wait_time_minutes` | int | Yes | - | The number of minutes during Ramp-Down period that autoscale will wait after setting the session host VMs to drain mode, notifying any currently signed in users to save their work before forcing the users to logoff. Once all user sessions on the session host VM have been logged off, Autoscale will shut down the VM. |
| `ramp_up_load_balancing_algorithm` | string | Yes | - | The load Balancing Algorithm to use during the Ramp-Up period. Possible values are 'DepthFirst' and 'BreadthFirst'. |
| `ramp_up_start_time` | string | Yes | - | The time at which Ramp-Up scaling will begin. This is also the end-time for the Ramp-Up period. The time must be specified in 'HH:MM' format. |
| `ramp_up_capacity_threshold_percent` | string | No | - | This is the value of percentage of used host pool capacity that will be considered to evaluate whether to turn on/off virtual machines during the ramp-up and peak hours. For example, if capacity threshold is specified as '60%' and your total host pool capacity is '100' sessions, autoscale will turn on additional session hosts once the host pool exceeds a load of '60' sessions. |
| `ramp_up_minimum_hosts_percent` | int | No | - | Specifies the minimum percentage of session host virtual machines to start during ramp-up for peak hours. For example, if Minimum percentage of hosts is specified as '10%' and total number of session hosts in your host pool is '10', autoscale will ensure a minimum of '1' session host is available to take user connections. |

### `host_pool` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `hostpool_id` | string | Yes | - | The ID of the HostPool to assign the Scaling Plan to. |
| `scaling_plan_enabled` | bool | Yes | - | Specifies if the scaling plan is enabled or disabled for the HostPool. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Desktop Scaling Plan. | 

Additionally, all variables are provided as outputs.
