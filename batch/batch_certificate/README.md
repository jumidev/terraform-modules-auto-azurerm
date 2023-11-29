# azurerm_batch_certificate

Manages a certificate in an Azure Batch account.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.account_name** | string | True | -  |  Specifies the name of the Batch account. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created. | 
| **var.certificate** | string | True | -  |  The base64-encoded contents of the certificate. | 
| **var.format** | string | True | `Cer`, `Pfx`  |  The format of the certificate. Possible values are `Cer` or `Pfx`. | 
| **var.password** | string | False | -  |  The password to access the certificate's private key. This can only be specified when `format` is `Pfx`. | 
| **var.thumbprint** | string | True | -  |  The thumbprint of the certificate. Changing this forces a new resource to be created. | 
| **var.thumbprint_algorithm** | string | True | -  |  The algorithm of the certificate thumbprint. At this time the only supported value is `SHA1`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **account_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **certificate** | string  | - | 
| **format** | string  | - | 
| **password** | string  | - | 
| **thumbprint** | string  | - | 
| **thumbprint_algorithm** | string  | - | 
| **id** | string  | The ID of the Batch Certificate. | 
| **name** | string  | The generated name of the certificate. | 
| **public_data** | string  | The public key of the certificate. | 