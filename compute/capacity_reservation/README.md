# azurerm_capacity_reservation

Manages a Capacity Reservation within a Capacity Reservation Group.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of this Capacity Reservation. Changing this forces a new resource to be created. | 
| **var.capacity_reservation_group_id** | string | True | The ID of the Capacity Reservation Group where the Capacity Reservation exists. Changing this forces a new resource to be created. | 
| **var.sku** | block | True | A `sku` block. | 
| **var.zone** | string | False | Specifies the Availability Zone for this Capacity Reservation. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **capacity_reservation_group_id** | string  | - | 
| **sku** | block  | - | 
| **zone** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Capacity Reservation. | 