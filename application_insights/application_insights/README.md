# azurerm_application_insights

Manages an Application Insights component.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Application Insights component. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **application_type** | string | True | -  |  `ios`, `java`, `MobileCenter`, `Node.JS`, `other`, `phone`, `store`, `web`  | Specifies the type of Application Insights to create. Valid values are `ios` for _iOS_, `java` for _Java web_, `MobileCenter` for _App Center_, `Node.JS` for _Node.js_, `other` for _General_, `phone` for _Windows Phone_, `store` for _Windows Store_ and `web` for _ASP.NET_. Please note these values are case sensitive; unmatched values are treated as _ASP.NET_ by Azure. Changing this forces a new resource to be created. | 
| **daily_data_cap_in_gb** | int | False | -  |  -  | Specifies the Application Insights component daily data volume cap in GB. | 
| **daily_data_cap_notifications_disabled** | bool | False | -  |  -  | Specifies if a notification email will be send when the daily data volume cap is met. | 
| **retention_in_days** | string | False | `90`  |  `30`, `60`, `90`, `120`, `180`, `270`, `365`, `550`, `730`  | Specifies the retention period in days. Possible values are `30`, `60`, `90`, `120`, `180`, `270`, `365`, `550` or `730`. Defaults to `90`. | 
| **sampling_percentage** | string | False | `100`  |  -  | Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to `100`. | 
| **disable_ip_masking** | bool | False | `False`  |  -  | By default the real client IP is masked as `0.0.0.0` in the logs. Use this argument to disable masking and log the real client IP. Defaults to `false`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **workspace_id** | string | False | -  |  -  | Specifies the id of a log analytics workspace resource. | 
| **local_authentication_disabled** | bool | False | `False`  |  -  | Disable Non-Azure AD based Auth. Defaults to `false`. | 
| **internet_ingestion_enabled** | bool | False | `True`  |  -  | Should the Application Insights component support ingestion over the Public Internet? Defaults to `true`. | 
| **internet_query_enabled** | bool | False | `True`  |  -  | Should the Application Insights component support querying over the Public Internet? Defaults to `true`. | 
| **force_customer_storage_for_profiler** | bool | False | `False`  |  -  | Should the Application Insights component force users to create their own storage account for profiling? Defaults to `false`. | 

