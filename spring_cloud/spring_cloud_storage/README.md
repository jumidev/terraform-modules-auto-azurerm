# azurerm_spring_cloud_storage

Manages a Spring Cloud Storage.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "spring_cloud/spring_cloud_storage"   
}

inputs = {
   name = "The name which should be used for this Spring Cloud Storage..."   
   # spring_cloud_service_id → set in component_inputs
   storage_account_key = "The access key of the Azure Storage Account"   
   # storage_account_name → set in component_inputs
}

component_inputs = {
   spring_cloud_service_id = "path/to/spring_cloud_service_component:id"   
   storage_account_name = "path/to/storage_account_component:name"   
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
| **name** | string |  The name which should be used for this Spring Cloud Storage. Changing this forces a new Spring Cloud Storage to be created. | 
| **spring_cloud_service_id** | string |  The ID of the Spring Cloud Service where the Spring Cloud Storage should exist. Changing this forces a new Spring Cloud Storage to be created. | 
| **storage_account_key** | string |  The access key of the Azure Storage Account. | 
| **storage_account_name** | string |  The account name of the Azure Storage Account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Storage. | 

Additionally, all variables are provided as outputs.
