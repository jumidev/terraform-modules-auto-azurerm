# azurerm_capacity_reservation_group

Manages a Capacity Reservation Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/capacity_reservation_group" 
}

inputs = {
   name = "name of capacity_reservation_group" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created. | 
| **var.zones** | string | False | Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Capacity Reservation Group. | 

Additionally, all variables are provided as outputs.
