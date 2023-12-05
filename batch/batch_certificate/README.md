# azurerm_batch_certificate

Manages a certificate in an Azure Batch account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "batch/batch_certificate"   
}

inputs = {
   account_name = "Specifies the name of the Batch account"   
   resource_group_name = "${resource_group}"   
   certificate = "The base64-encoded contents of the certificate"   
   format = "The format of the certificate"   
   thumbprint = "The thumbprint of the certificate"   
   thumbprint_algorithm = "The algorithm of the certificate thumbprint"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **account_name** | string |  -  |  Specifies the name of the Batch account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created. | 
| **certificate** | string |  -  |  The base64-encoded contents of the certificate. | 
| **format** | string |  `Cer`, `Pfx`  |  The format of the certificate. Possible values are `Cer` or `Pfx`. | 
| **thumbprint** | string |  -  |  The thumbprint of the certificate. Changing this forces a new resource to be created. | 
| **thumbprint_algorithm** | string |  -  |  The algorithm of the certificate thumbprint. At this time the only supported value is `SHA1`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **password** | string |  The password to access the certificate's private key. This can only be specified when `format` is `Pfx`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Batch Certificate. | 
| **name** | string | No  | The generated name of the certificate. | 
| **public_data** | string | No  | The public key of the certificate. | 

Additionally, all variables are provided as outputs.
