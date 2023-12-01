# azurerm_virtual_desktop_host_pool

Manages a Virtual Desktop Host Pool.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "desktop_virtualization/virtual_desktop_host_pool" 
}

inputs = {
   name = "name of virtual_desktop_host_pool" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   type = "type of virtual_desktop_host_pool" 
   load_balancer_type = "load_balancer_type of virtual_desktop_host_pool" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the Virtual Desktop Host Pool. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Virtual Desktop Host Pool. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The location/region where the Virtual Desktop Host Pool is located. Changing this forces a new resource to be created. | 
| **type** | string |  `Personal`, `Pooled`  |  The type of the Virtual Desktop Host Pool. Valid options are `Personal` or `Pooled`. Changing the type forces a new resource to be created. | 
| **load_balancer_type** | string |  `BreadthFirst`, `DepthFirst`, `Persistent`  |  `BreadthFirst` load balancing distributes new user sessions across all available session hosts in the host pool. Possible values are `BreadthFirst`, `DepthFirst` and `Persistent`. `DepthFirst` load balancing distributes new user sessions to an available session host with the highest number of connections but has not reached its maximum session limit threshold. `Persistent` should be used if the host pool type is `Personal` | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **friendly_name** | string |  -  |  -  |  A friendly name for the Virtual Desktop Host Pool. | 
| **description** | string |  -  |  -  |  A description for the Virtual Desktop Host Pool. | 
| **validate_environment** | bool |  `False`  |  -  |  Allows you to test service changes before they are deployed to production. Defaults to `false`. | 
| **start_vm_on_connect** | bool |  `False`  |  -  |  Enables or disables the Start VM on Connection Feature. Defaults to `false`. | 
| **custom_rdp_properties** | string |  -  |  -  |  A valid custom RDP properties string for the Virtual Desktop Host Pool, available properties can be [found in this article](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/clients/rdp-files). | 
| **personal_desktop_assignment_type** | string |  -  |  `Automatic`, `Direct`  |  `Automatic` assignment – The service will select an available host and assign it to an user. Possible values are `Automatic` and `Direct`. `Direct` Assignment – Admin selects a specific host to assign to an user. Changing this forces a new resource to be created. | 
| **maximum_sessions_allowed** | bool |  -  |  -  |  A valid integer value from 0 to 999999 for the maximum number of users that have concurrent sessions on a session host. Should only be set if the `type` of your Virtual Desktop Host Pool is `Pooled`. | 
| **preferred_app_group_type** | string |  `Desktop`  |  `None`, `Desktop`, `RailApplications`  |  Option to specify the preferred Application Group type for the Virtual Desktop Host Pool. Valid options are `None`, `Desktop` or `RailApplications`. Default is `Desktop`. Changing this forces a new resource to be created. | 
| **scheduled_agent_updates** | [block](#scheduled_agent_updates-block-structure) |  -  |  -  |  A `scheduled_agent_updates` block. This enables control of when Agent Updates will be applied to Session Hosts. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `day_of_week` | string | Yes | - | The day of the week on which agent updates should be performed. Possible values are 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', and 'Sunday' |
| `hour_of_day` | string | Yes | - | The hour of day the update window should start. The update is a 2 hour period following the hour provided. The value should be provided as a number between 0 and 23, with 0 being midnight and 23 being 11pm. A leading zero should not be used. |

### `scheduled_agent_updates` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | False | Enables or disables scheduled updates of the AVD agent components (RDAgent, Geneva Monitoring agent, and side-by-side stack) on session hosts. If this is enabled then up to two 'schedule' blocks must be defined. Default is 'false'. |
| `timezone` | string | No | UTC | Specifies the time zone in which the agent update schedule will apply, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). If 'use_session_host_timezone' is enabled then it will override this setting. Default is 'UTC' |
| `use_session_host_timezone` | bool | No | False | Specifies whether scheduled agent updates should be applied based on the timezone of the affected session host. If configured then this setting overrides 'timezone'. Default is 'false'. |
| `schedule` | [block](#scheduled_agent_updates-block-structure) | No | - | A 'schedule' block. A maximum of two blocks can be added. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Desktop Host Pool. | 

Additionally, all variables are provided as outputs.
