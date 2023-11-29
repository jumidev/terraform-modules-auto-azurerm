# azurerm_capacity_reservation

Manages a Capacity Reservation within a Capacity Reservation Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of this Capacity Reservation. Changing this forces a new resource to be created. | 
| **capacity_reservation_group_id** | string | True | -  |  -  | The ID of the Capacity Reservation Group where the Capacity Reservation exists. Changing this forces a new resource to be created. | 
| **sku** | block | True | -  |  -  | A `sku` block. | 
| **zone** | string | False | -  |  -  | Specifies the Availability Zone for this Capacity Reservation. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

