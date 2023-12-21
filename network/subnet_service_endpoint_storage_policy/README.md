# azurerm_subnet_service_endpoint_storage_policy

Manages a Subnet Service Endpoint Storage Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/subnet_service_endpoint_storage_policy"   
}

inputs = {
   name = "The name which should be used for this Subnet Service Endpoint Storage Policy..."   
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
| **name** | string |  The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created. | 
| **location** | string |  The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **definition** | [block](#definition-block-structure) |  A `definition` block | 
| **tags** | map |  A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy. | 

### `definition` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this Subnet Service Endpoint Storage Policy Definition. |
| `service` | string | No | Microsoft.Storage | The type of service resources. Valid values are 'Microsoft.Storage' or 'Global'. When the 'service_resources' property contains resource IDs, this property must be 'Microsoft.Storage'. When the 'service_resources' property contains Aliases, this property must be 'Global'. Defaults to 'Microsoft.Storage'. |
| `service_resources` | list | Yes | - | Specifies a list of resources or aliases that this Subnet Service Endpoint Storage Policy Definition applies to. |
| `description` | string | No | - | The description of this Subnet Service Endpoint Storage Policy Definition. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Subnet Service Endpoint Storage Policy. | 

Additionally, all variables are provided as outputs.
