# azurerm_aadb2c_directory

Manages an AAD B2C Directory.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **country_code** | string | False | -  |  -  | Country code of the B2C tenant. The `country_code` should be valid for the specified `data_residency_location`. See [official docs](https://aka.ms/B2CDataResidency) for valid country codes. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created. | 
| **data_residency_location** | string | True | -  |  `Asia Pacific`, `Australia`, `Europe`, `Global`, `United States`  | Location in which the B2C tenant is hosted and data resides. The `data_residency_location` should be valid for the specified `country_code`. See [official docs](https://aka.ms/B2CDataResidenc) for more information. Changing this forces a new AAD B2C Directory to be created. Possible values are `Asia Pacific`, `Australia`, `Europe`, `Global` and `United States`. | 
| **display_name** | string | False | -  |  -  | The initial display name of the B2C tenant. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created. | 
| **domain_name** | string | True | -  |  -  | Domain name of the B2C tenant, including the `.onmicrosoft.com` suffix. Changing this forces a new AAD B2C Directory to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the AAD B2C Directory should exist. Changing this forces a new AAD B2C Directory to be created. | 
| **sku_name** | string | True | -  |  `PremiumP1`, `PremiumP2`, `Standard`  | Billing SKU for the B2C tenant. Must be one of: `PremiumP1` or `PremiumP2` (`Standard` is not supported). See [official docs](https://aka.ms/b2cBilling) for more information. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the AAD B2C Directory. | 

