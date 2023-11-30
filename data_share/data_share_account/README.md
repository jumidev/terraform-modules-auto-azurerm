# azurerm_data_share_account

Manages a Data Share Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_share/data_share_account" 
}

inputs = {
   name = "name of data_share_account" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   identity = {
      example_identity = {
         type = "..."   
      }
  
   }
 
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
| **var.name** | string  The name which should be used for this Data Share Account. Changing this forces a new Data Share Account to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group where the Data Share Account should exist. Changing this forces a new Data Share Account to be created. | 
| **var.location** | string  The Azure Region where the Data Share Account should exist. Changing this forces a new Data Share Account to be created. | 
| **var.identity** | block  An `identity` block. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map  A mapping of tags which should be assigned to the Data Share Account. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Data Share Account. The only possible value is 'SystemAssigned'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Share Account. | 
| **principal_id** | string | No  | The Principal ID for the Service Principal associated with the Identity of this Data Share Account. | 
| **tenant_id** | string | No  | The Tenant ID for the Service Principal associated with the Identity of this Data Share Account. | 

Additionally, all variables are provided as outputs.
