# azurerm_batch_certificate

Manages a certificate in an Azure Batch account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **account_name** | string | True | -  |  -  | Specifies the name of the Batch account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created. | 
| **certificate** | string | True | -  |  -  | The base64-encoded contents of the certificate. | 
| **format** | string | True | -  |  `Cer`, `Pfx`  | The format of the certificate. Possible values are `Cer` or `Pfx`. | 
| **password** | string | False | -  |  -  | The password to access the certificate's private key. This can only be specified when `format` is `Pfx`. | 
| **thumbprint** | string | True | -  |  -  | The thumbprint of the certificate. Changing this forces a new resource to be created. | 
| **thumbprint_algorithm** | string | True | -  |  -  | The algorithm of the certificate thumbprint. At this time the only supported value is `SHA1`. Changing this forces a new resource to be created. | 

