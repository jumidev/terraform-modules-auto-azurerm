# azurerm_capacity_reservation



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/capacity_reservation"   
}
inputs = {
   name = "Specifies the name of this Capacity Reservation"   
   # capacity_reservation_group_id → set in component_inputs
   sku = {
      name = "..."      
      capacity = "..."      
   }   
}
component_inputs = {
   capacity_reservation_group_id = "path/to/capacity_reservation_group_component:id"   
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
| **name** | string |  Specifies the name of this Capacity Reservation. Changing this forces a new resource to be created. | 
| **capacity_reservation_group_id** | string |  The ID of the Capacity Reservation Group where the Capacity Reservation exists. Changing this forces a new resource to be created. | 
| **sku** | [block](#sku-block-structure) |  A `sku` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **zone** | string |  Specifies the Availability Zone for this Capacity Reservation. Changing this forces a new resource to be created. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Name of the sku, such as 'Standard_F2'. Changing this forces a new resource to be created. |
| `capacity` | number | Yes | - | Specifies the number of instances to be reserved. It must be greater than or equal to '0' and not exceed the quota in the subscription. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **capacity** | number | No  | Specifies the number of instances to be reserved. It must be greater than or equal to `0` and not exceed the quota in the subscription. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Capacity Reservation. | 

Additionally, all variables are provided as outputs.
