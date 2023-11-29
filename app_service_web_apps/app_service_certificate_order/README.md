# azurerm_app_service_certificate_order

Manages an App Service Certificate Order.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the certificate. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the certificate. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Currently the only valid value is `global`. | 
| **auto_renew** | bool | False | `True`  |  -  | true if the certificate should be automatically renewed when it expires; otherwise, false. Defaults to `true`. | 
| **csr** | string | False | -  |  -  | Last CSR that was created for this order. | 
| **distinguished_name** | string | False | -  |  -  | The Distinguished Name for the App Service Certificate Order. | 
| **key_size** | string | False | `2048`  |  -  | Certificate key size. Defaults to `2048`. | 
| **product_type** | string | False | `Standard`  |  -  | Certificate product type, such as `Standard` or `WildCard`. Defaults to `Standard`. | 
| **validity_in_years** | string | False | `1`  |  -  | Duration in years (must be between `1` and `3`). Defaults to `1`. | 

