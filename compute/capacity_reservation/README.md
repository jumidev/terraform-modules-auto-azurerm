# azurerm_capacity_reservation

Manages a Capacity Reservation within a Capacity Reservation Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/capacity_reservation" 
}

inputs = {
   name = "name of capacity_reservation" 
   capacity_reservation_group_id = "capacity_reservation_group_id of capacity_reservation" 
   sku = {
      example_sku = {
         capacity = "..."   
      }
  
   }
 
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
| **var.name** | string |  Specifies the name of this Capacity Reservation. Changing this forces a new resource to be created. | 
| **var.capacity_reservation_group_id** | string |  The ID of the Capacity Reservation Group where the Capacity Reservation exists. Changing this forces a new resource to be created. | 
| **var.sku** | block |  A `sku` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.zone** | string |  Specifies the Availability Zone for this Capacity Reservation. Changing this forces a new resource to be created. | 
| **var.tags** | map |  A mapping of tags to assign to the resource. | 

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `capacity` | int | Yes | - | Specifies the number of instances to be reserved. It must be a positive 'integer' and not exceed the quota in the subscription. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Capacity Reservation. | 

Additionally, all variables are provided as outputs.
