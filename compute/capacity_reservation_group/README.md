# azurerm_capacity_reservation_group

Manages a Capacity Reservation Group.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created. | 
| **var.zones** | string | False | Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **zones** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Capacity Reservation Group. | 