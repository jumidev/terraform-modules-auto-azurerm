# azurerm_virtual_desktop_host_pool

Manages a Virtual Desktop Host Pool.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Virtual Desktop Host Pool. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Virtual Desktop Host Pool. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location/region where the Virtual Desktop Host Pool is located. Changing this forces a new resource to be created. | 
| **type** | string | True | -  |  `Personal`, `Pooled`  | The type of the Virtual Desktop Host Pool. Valid options are `Personal` or `Pooled`. Changing the type forces a new resource to be created. | 
| **load_balancer_type** | string | True | -  |  `BreadthFirst`, `DepthFirst`, `Persistent`  | `BreadthFirst` load balancing distributes new user sessions across all available session hosts in the host pool. Possible values are `BreadthFirst`, `DepthFirst` and `Persistent`. `DepthFirst` load balancing distributes new user sessions to an available session host with the highest number of connections but has not reached its maximum session limit threshold. `Persistent` should be used if the host pool type is `Personal` | 
| **friendly_name** | string | False | -  |  -  | A friendly name for the Virtual Desktop Host Pool. | 
| **description** | string | False | -  |  -  | A description for the Virtual Desktop Host Pool. | 
| **validate_environment** | bool | False | `False`  |  -  | Allows you to test service changes before they are deployed to production. Defaults to `false`. | 
| **start_vm_on_connect** | bool | False | `False`  |  -  | Enables or disables the Start VM on Connection Feature. Defaults to `false`. | 
| **custom_rdp_properties** | string | False | -  |  -  | A valid custom RDP properties string for the Virtual Desktop Host Pool, available properties can be [found in this article](https://docs.microsoft.com/windows-server/remote/remote-desktop-services/clients/rdp-files). | 
| **personal_desktop_assignment_type** | string | False | -  |  `Automatic`, `Direct`  | `Automatic` assignment – The service will select an available host and assign it to an user. Possible values are `Automatic` and `Direct`. `Direct` Assignment – Admin selects a specific host to assign to an user. Changing this forces a new resource to be created. | 
| **maximum_sessions_allowed** | bool | False | -  |  -  | A valid integer value from 0 to 999999 for the maximum number of users that have concurrent sessions on a session host. Should only be set if the `type` of your Virtual Desktop Host Pool is `Pooled`. | 
| **preferred_app_group_type** | string | False | `Desktop`  |  `None`, `Desktop`, `RailApplications`  | Option to specify the preferred Application Group type for the Virtual Desktop Host Pool. Valid options are `None`, `Desktop` or `RailApplications`. Default is `Desktop`. Changing this forces a new resource to be created. | 
| **scheduled_agent_updates** | block | False | -  |  -  | A `scheduled_agent_updates` block. This enables control of when Agent Updates will be applied to Session Hosts. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

