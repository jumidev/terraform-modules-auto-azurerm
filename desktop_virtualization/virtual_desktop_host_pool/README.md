# azurerm_virtual_desktop_host_pool

Manages a Virtual Desktop Host Pool.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Virtual Desktop Host Pool. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Virtual Desktop Host Pool. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The location/region where the Virtual Desktop Host Pool is located. Changing this forces a new resource to be created. | 
| **var.type** | string | True | -  |  `Personal`, `Pooled`  |  The type of the Virtual Desktop Host Pool. Valid options are `Personal` or `Pooled`. Changing the type forces a new resource to be created. | 
| **var.load_balancer_type** | string | True | -  |  `BreadthFirst`, `DepthFirst`, `Persistent`  |  `BreadthFirst` load balancing distributes new user sessions across all available session hosts in the host pool. Possible values are `BreadthFirst`, `DepthFirst` and `Persistent`. `DepthFirst` load balancing distributes new user sessions to an available session host with the highest number of connections but has not reached its maximum session limit threshold. `Persistent` should be used if the host pool type is `Personal` | 
| **var.friendly_name** | string | False | -  |  -  |  A friendly name for the Virtual Desktop Host Pool. | 
| **var.description** | string | False | -  |  -  |  A description for the Virtual Desktop Host Pool. | 
| **var.validate_environment** | bool | False | `False`  |  -  |  Allows you to test service changes before they are deployed to production. Defaults to `false`. | 
| **var.start_vm_on_connect** | bool | False | `False`  |  -  |  Enables or disables the Start VM on Connection Feature. Defaults to `false`. | 
| **var.custom_rdp_properties** | string | False | -  |  -  |  A valid custom RDP properties string for the Virtual Desktop Host Pool, available properties can be [found in this article](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/clients/rdp-files). | 
| **var.personal_desktop_assignment_type** | string | False | -  |  `Automatic`, `Direct`  |  `Automatic` assignment – The service will select an available host and assign it to an user. Possible values are `Automatic` and `Direct`. `Direct` Assignment – Admin selects a specific host to assign to an user. Changing this forces a new resource to be created. | 
| **var.maximum_sessions_allowed** | bool | False | -  |  -  |  A valid integer value from 0 to 999999 for the maximum number of users that have concurrent sessions on a session host. Should only be set if the `type` of your Virtual Desktop Host Pool is `Pooled`. | 
| **var.preferred_app_group_type** | string | False | `Desktop`  |  `None`, `Desktop`, `RailApplications`  |  Option to specify the preferred Application Group type for the Virtual Desktop Host Pool. Valid options are `None`, `Desktop` or `RailApplications`. Default is `Desktop`. Changing this forces a new resource to be created. | 
| **var.scheduled_agent_updates** | block | False | -  |  -  |  A `scheduled_agent_updates` block. This enables control of when Agent Updates will be applied to Session Hosts. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

### `scheduled_agent_updates` block structure

> `enabled` (bool): Enables or disables scheduled updates of the AVD agent components (RDAgent, Geneva Monitoring agent, and side-by-side stack) on session hosts. If this is enabled then up to two 'schedule' blocks must be defined. Default is 'false'.
> `timezone` (string): Specifies the time zone in which the agent update schedule will apply, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). If 'use_session_host_timezone' is enabled then it will override this setting. Default is 'UTC'
> `use_session_host_timezone` (bool): Specifies whether scheduled agent updates should be applied based on the timezone of the affected session host. If configured then this setting overrides 'timezone'. Default is 'false'.
> `schedule` (block): A 'schedule' block. A maximum of two blocks can be added.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Virtual Desktop Host Pool. | 

Additionally, all variables are provided as outputs.
