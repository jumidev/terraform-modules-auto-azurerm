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

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/capacity_reservation" 
}

inputs = {
   name = "name of capacity_reservation" 
   capacity_reservation_group_id = "capacity_reservation_group_id of capacity_reservation" 
   sku = "sku of capacity_reservation" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```