# azurerm_network_ddos_protection_plan



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/network_ddos_protection_plan"   
}
inputs = {
   name = "Specifies the name of the Network DDoS Protection Plan..."   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
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
| **name** | string |  Specifies the name of the Network DDoS Protection Plan. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the DDoS Protection Plan | 
| **virtual_network_ids** | list | No  | A list of Virtual Network IDs associated with the DDoS Protection Plan. | 

Additionally, all variables are provided as outputs.
