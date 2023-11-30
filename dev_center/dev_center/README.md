# azurerm_dev_center

Manages a Dev Center.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dev_center/dev_center" 
}

inputs = {
   location = "${location}" 
   name = "name of dev_center" 
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
| **var.location** | string  The Azure Region where the Dev Center should exist. Changing this forces a new Dev Center to be created. | 
| **var.name** | string  Specifies the name of this Dev Center. Changing this forces a new Dev Center to be created. | 
| **var.resource_group_name** | string  Specifies the name of the Resource Group within which this Dev Center should exist. Changing this forces a new Dev Center to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.identity** | block  An `identity` block. Specifies the Managed Identity which should be assigned to this Dev Center. | 
| **var.tags** | map  A mapping of tags which should be assigned to the Dev Center. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `principal_id` | string | No | - | The Principal ID for the System-Assigned Managed Identity assigned to this Dev Center. |
| `tenant_id` | string | No | - | The Tenant ID for the System-Assigned Managed Identity assigned to this Dev Center. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Dev Center. | 
| **dev_center_uri** | string | No  | The URI of the Dev Center. | 

Additionally, all variables are provided as outputs.
