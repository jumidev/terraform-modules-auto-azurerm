# azurerm_netapp_snapshot

Manages a NetApp Snapshot.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "netapp/netapp_snapshot"   
}

inputs = {
   name = "The name of the NetApp Snapshot"   
   resource_group_name = "${resource_group}"   
   account_name = "The name of the NetApp account in which the NetApp Pool should be created..."   
   pool_name = "The name of the NetApp pool in which the NetApp Volume should be created..."   
   volume_name = "The name of the NetApp volume in which the NetApp Snapshot should be created..."   
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
| **name** | string |  The name of the NetApp Snapshot. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created. | 
| **account_name** | string |  The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created. | 
| **pool_name** | string |  The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created. | 
| **volume_name** | string |  The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the NetApp Snapshot. | 

Additionally, all variables are provided as outputs.
