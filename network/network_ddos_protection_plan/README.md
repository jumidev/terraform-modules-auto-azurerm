# azurerm_network_ddos_protection_plan

Manages an AzureNetwork DDoS Protection Plan.-> **NOTE** Azure only allows `one` DDoS Protection Plan per region.~> **NOTE** The DDoS Protection Plan is a [high-cost service](https://azure.microsoft.com/en-us/pricing/details/ddos-protection/#pricing). Please keep this in mind while testing and learning.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Network DDoS Protection Plan. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the resource. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

