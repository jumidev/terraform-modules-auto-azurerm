# azurerm_virtual_desktop_scaling_plan

Manages a Virtual Desktop Scaling Plan.## Disclaimers-> **Note** Scaling Plans are currently in preview and are only supported in a limited number of regions. Both the Scaling Plan and any referenced Host Pools must be deployed in a supported region. [Autoscale (preview) for Azure Virtual Desktop host pools](https://docs.microsoft.com/azure/virtual-desktop/autoscale-scaling-plan).-> **Note** Scaling Plans require specific permissions to be granted to the Windows Virtual Desktop application before a 'host_pool' can be configured. [Required Permissions for Scaling Plans](https://docs.microsoft.com/azure/virtual-desktop/autoscale-scaling-plan#create-a-custom-rbac-role).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.location** | string | True | -  |  -  | The Azure Region where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this Virtual Desktop Scaling Plan . Changing this forces a new Virtual Desktop Scaling Plan to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Virtual Desktop Scaling Plan should exist. Changing this forces a new Virtual Desktop Scaling Plan to be created. | 
| **var.schedule** | block | True | -  |  -  | One or more `schedule` blocks. | 
| **var.host_pool** | block | False | -  |  -  | One or more `host_pool` blocks. | 
| **var.time_zone** | string | True | -  |  -  | Specifies the Time Zone which should be used by the Scaling Plan for time based events, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). | 
| **var.description** | string | False | -  |  -  | A description of the Scaling Plan. | 
| **var.exclusion_tag** | string | False | -  |  -  | The name of the tag associated with the VMs you want to exclude from autoscaling. | 
| **var.friendly_name** | string | False | -  |  -  | Friendly name of the Scaling Plan. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Virtual Desktop Scaling Plan . | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **schedule** | block  | - | 
| **host_pool** | block  | - | 
| **time_zone** | string  | - | 
| **description** | string  | - | 
| **exclusion_tag** | string  | - | 
| **friendly_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Virtual Desktop Scaling Plan. | 