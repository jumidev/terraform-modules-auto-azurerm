# azurerm_media_services_account

Manages a Media Services Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_services_account" 
}

inputs = {
   name = "name of media_services_account" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   storage_account = "storage_account of media_services_account" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Media Services Account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Media Services Account. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.storage_account** | block | True | -  |  One or more `storage_account` blocks. | 
| **var.encryption** | block | False | -  |  An `encryption` block. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  Whether public network access is allowed for this server. Defaults to `true`. | 
| **var.storage_authentication_type** | string | False | -  |  Specifies the storage authentication type. Possible value is `ManagedIdentity` or `System`. | 
| **var.key_delivery_access_control** | block | False | -  |  A `key_delivery_access_control` block. | 
| **var.tags** | map | False | -  |  A mapping of tags assigned to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Media Services Account. | 
| **identity** | block | No  | An `identity` block. | 
| **current_key_identifier** | string | No  | The current key used to encrypt the Media Services Account, including the key version. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
