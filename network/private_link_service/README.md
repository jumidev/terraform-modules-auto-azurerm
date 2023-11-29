# azurerm_private_link_service

Manages a Private Link Service.-> **NOTE** Private Link is now in [GA](https://docs.microsoft.com/en-gb/azure/private-link/).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of this Private Link Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Private Link Service should exist. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **nat_ip_configuration** | block | True | -  |  -  | One or more (up to 8) `nat_ip_configuration` block. | 
| **load_balancer_frontend_ip_configuration_ids** | list | True | -  |  -  | A list of Frontend IP Configuration IDs from a Standard Load Balancer, where traffic from the Private Link Service should be routed. You can use Load Balancer Rules to direct this traffic to appropriate backend pools where your applications are running. Changing this forces a new resource to be created. | 
| **auto_approval_subscription_ids** | list | False | -  |  -  | A list of Subscription UUID/GUID's that will be automatically be able to use this Private Link Service. | 
| **enable_proxy_protocol** | bool | False | -  |  -  | Should the Private Link Service support the Proxy Protocol? | 
| **fqdns** | string | False | -  |  -  | List of FQDNs allowed for the Private Link Service. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **visibility_subscription_ids** | list | False | -  |  -  | A list of Subscription UUID/GUID's that will be able to see this Private Link Service. | 

