# azurerm_spring_cloud_storage

Manages a Spring Cloud Storage.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Spring Cloud Storage. Changing this forces a new Spring Cloud Storage to be created. | 
| **spring_cloud_service_id** | string | True | -  |  -  | The ID of the Spring Cloud Service where the Spring Cloud Storage should exist. Changing this forces a new Spring Cloud Storage to be created. | 
| **storage_account_key** | string | True | -  |  -  | The access key of the Azure Storage Account. | 
| **storage_account_name** | string | True | -  |  -  | The account name of the Azure Storage Account. | 

