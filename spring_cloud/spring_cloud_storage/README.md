# azurerm_spring_cloud_storage

Manages a Spring Cloud Storage.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "spring_cloud/spring_cloud_storage" 
}

inputs = {
   name = "name of spring_cloud_storage" 
   spring_cloud_service_id = "spring_cloud_service_id of spring_cloud_storage" 
   storage_account_key = "storage_account_key of spring_cloud_storage" 
   storage_account_name = "storage_account_name of spring_cloud_storage" 
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
| **var.name** | string |  The name which should be used for this Spring Cloud Storage. Changing this forces a new Spring Cloud Storage to be created. | 
| **var.spring_cloud_service_id** | string |  The ID of the Spring Cloud Service where the Spring Cloud Storage should exist. Changing this forces a new Spring Cloud Storage to be created. | 
| **var.storage_account_key** | string |  The access key of the Azure Storage Account. | 
| **var.storage_account_name** | string |  The account name of the Azure Storage Account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Spring Cloud Storage. | 

Additionally, all variables are provided as outputs.
