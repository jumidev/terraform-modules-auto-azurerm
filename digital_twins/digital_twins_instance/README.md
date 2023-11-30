# azurerm_digital_twins_instance

Manages a Digital Twins instance.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "digital_twins/digital_twins_instance" 
}

inputs = {
   name = "name of digital_twins_instance" 
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
| **var.name** | string  The name which should be used for this Digital Twins instance. Changing this forces a new Digital Twins instance to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created. | 
| **var.location** | string  The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.identity** | block  An `identity` block. | 
| **var.tags** | map  A mapping of tags which should be assigned to the Digital Twins instance. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Digital Twins instance. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Digital Twins instance. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Digital Twins instance. | 
| **host_name** | string | No  | The API endpoint to work with this Digital Twins instance. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
