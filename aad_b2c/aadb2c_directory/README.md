# azurerm_aadb2c_directory

Manages an AAD B2C Directory.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.country_code** | string | False | -  |  -  | Country code of the B2C tenant. The `country_code` should be valid for the specified `data_residency_location`. See [official docs](https://aka.ms/B2CDataResidency) for valid country codes. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created. | 
| **var.data_residency_location** | string | True | -  |  `Asia Pacific`, `Australia`, `Europe`, `Global`, `United States`  | Location in which the B2C tenant is hosted and data resides. The `data_residency_location` should be valid for the specified `country_code`. See [official docs](https://aka.ms/B2CDataResidenc) for more information. Changing this forces a new AAD B2C Directory to be created. Possible values are `Asia Pacific`, `Australia`, `Europe`, `Global` and `United States`. | 
| **var.display_name** | string | False | -  |  -  | The initial display name of the B2C tenant. Required when creating a new resource. Changing this forces a new AAD B2C Directory to be created. | 
| **var.domain_name** | string | True | -  |  -  | Domain name of the B2C tenant, including the `.onmicrosoft.com` suffix. Changing this forces a new AAD B2C Directory to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the AAD B2C Directory should exist. Changing this forces a new AAD B2C Directory to be created. | 
| **var.sku_name** | string | True | -  |  `PremiumP1`, `PremiumP2`, `Standard`  | Billing SKU for the B2C tenant. Must be one of: `PremiumP1` or `PremiumP2` (`Standard` is not supported). See [official docs](https://aka.ms/b2cBilling) for more information. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the AAD B2C Directory. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **country_code** | string  | - | 
| **data_residency_location** | string  | - | 
| **display_name** | string  | - | 
| **domain_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **sku_name** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the AAD B2C Directory. | 
| **billing_type** | string  | The type of billing for the AAD B2C tenant. Possible values include: `MAU` or `Auths`. | 
| **effective_start_date** | datetime  | The date from which the billing type took effect. May not be populated until after the first billing cycle. | 
| **tenant_id** | string  | The Tenant ID for the AAD B2C tenant. | 