# azurerm_capacity_reservation_group

Manages a Capacity Reservation Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created. | 
| **zones** | string | False | -  |  -  | Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

