# azurerm_cdn_endpoint



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cdn/cdn_endpoint"   
}
inputs = {
   name = "Specifies the name of the CDN Endpoint"   
   resource_group_name = "${resource_group}"   
   profile_name = "The CDN Profile to which to attach the CDN Endpoint..."   
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
| **name** | string |  Specifies the name of the CDN Endpoint. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the CDN Endpoint. Changing this forces a new resource to be created. | 
| **profile_name** | string |  The CDN Profile to which to attach the CDN Endpoint. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **is_http_allowed** | bool |  `True`  |  Specifies if http allowed. Defaults to `true`. | 
| **is_https_allowed** | bool |  `True`  |  Specifies if https allowed. Defaults to `true`. | 
| **content_types_to_compress** | string |  -  |  An array of strings that indicates a content types on which compression will be applied. The value for the elements should be MIME types. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the CDN Endpoint. | 
| **fqdn** | string | No  | The Fully Qualified Domain Name of the CDN Endpoint. | 

Additionally, all variables are provided as outputs.
