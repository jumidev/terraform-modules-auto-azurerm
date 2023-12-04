# azurerm_relay_namespace

Manages an Azure Relay Namespace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/relay_namespace" 
}

inputs = {
   name = "name of relay_namespace" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku_name = "sku_name of relay_namespace" 
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
| **name** | string |  Specifies the name of the Azure Relay Namespace. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Azure Relay Namespace. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the Azure Relay Namespace exists. Changing this forces a new resource to be created. | 
| **sku_name** | string |  The name of the SKU to use. At this time the only supported value is `Standard`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Azure Relay Namespace ID. | 
| **primary_connection_string** | string | No  | The primary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **secondary_connection_string** | string | No  | The secondary connection string for the authorization rule `RootManageSharedAccessKey`. | 
| **primary_key** | string | Yes  | The primary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **secondary_key** | string | Yes  | The secondary access key for the authorization rule `RootManageSharedAccessKey`. | 
| **metric_id** | string | No  | The Identifier for Azure Insights metrics. | 

Additionally, all variables are provided as outputs.
