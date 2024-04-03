# azurerm_cdn_frontdoor_profile



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cdn/cdn_frontdoor_profile"   
}
inputs = {
   name = "Specifies the name of the Front Door Profile"   
   resource_group_name = "${resource_group}"   
   sku_name = "Specifies the SKU for this Front Door Profile"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Front Door Profile. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where this Front Door Profile should exist. Changing this forces a new resource to be created. | 
| **sku_name** | string |  `Standard_AzureFrontDoor`, `Premium_AzureFrontDoor`  |  Specifies the SKU for this Front Door Profile. Possible values include `Standard_AzureFrontDoor` and `Premium_AzureFrontDoor`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **response_timeout_seconds** | number |  `120`  |  `16`, `240`  |  Specifies the maximum response timeout in seconds. Possible values are between `16` and `240` seconds (inclusive). Defaults to `120` seconds. | 
| **tags** | map |  -  |  -  |  Specifies a mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **tags** | map | No  | Specifies a mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of this Front Door Profile. | 
| **resource_guid** | string | No  | The UUID of this Front Door Profile which will be sent in the HTTP Header as the `X-Azure-FDID` attribute. | 

Additionally, all variables are provided as outputs.
