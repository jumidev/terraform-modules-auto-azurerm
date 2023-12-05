# azurerm_dedicated_host_group

Manage a Dedicated Host Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "compute/dedicated_host_group"   
}

inputs = {
   name = "name of dedicated_host_group"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   platform_fault_domain_count = "platform_fault_domain_count of dedicated_host_group"   
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
| **name** | string |  Specifies the name of the Dedicated Host Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the name of the resource group the Dedicated Host Group is located in. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure location where the Dedicated Host Group exists. Changing this forces a new resource to be created. | 
| **platform_fault_domain_count** | int |  The number of fault domains that the Dedicated Host Group spans. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **automatic_placement_enabled** | bool |  `False`  |  Would virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group? Defaults to `false`. Changing this forces a new resource to be created. | 
| **zone** | string |  -  |  Specifies the Availability Zone in which this Dedicated Host Group should be located. Changing this forces a new Dedicated Host Group to be created. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dedicated Host Group. | 

Additionally, all variables are provided as outputs.
