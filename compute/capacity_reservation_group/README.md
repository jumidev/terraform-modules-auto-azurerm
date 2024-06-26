# azurerm_capacity_reservation_group



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/capacity_reservation_group"   
}
inputs = {
   name = "Specifies the name of this Capacity Reservation Group..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **zones** | list |  Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Capacity Reservation Group. | 

Additionally, all variables are provided as outputs.
