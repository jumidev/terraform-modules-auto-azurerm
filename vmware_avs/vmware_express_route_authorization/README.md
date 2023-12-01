# azurerm_vmware_express_route_authorization

Manages an Express Route VMware Authorization.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "vmware_avs/vmware_express_route_authorization" 
}

inputs = {
   name = "name of vmware_express_route_authorization" 
   private_cloud_id = "private_cloud_id of vmware_express_route_authorization" 
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
| **name** | string |  The name which should be used for this Express Route VMware Authorization. Changing this forces a new VMware Authorization to be created. | 
| **private_cloud_id** | string |  The ID of the VMware Private Cloud in which to create this Express Route VMware Authorization. Changing this forces a new VMware Authorization to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the VMware Authorization. | 
| **express_route_authorization_id** | string | No  | The ID of the Express Route Circuit Authorization. | 
| **express_route_authorization_key** | string | No  | The key of the Express Route Circuit Authorization. | 

Additionally, all variables are provided as outputs.
