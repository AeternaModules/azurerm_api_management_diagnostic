output "api_management_diagnostics_id" {
  description = "Map of id values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_diagnostics_always_log_errors" {
  description = "Map of always_log_errors values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.always_log_errors if v.always_log_errors != null }
}
output "api_management_diagnostics_api_management_logger_id" {
  description = "Map of api_management_logger_id values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.api_management_logger_id if v.api_management_logger_id != null && length(v.api_management_logger_id) > 0 }
}
output "api_management_diagnostics_api_management_name" {
  description = "Map of api_management_name values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_diagnostics_backend_request" {
  description = "Map of backend_request values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.backend_request if v.backend_request != null && length(v.backend_request) > 0 }
}
output "api_management_diagnostics_backend_response" {
  description = "Map of backend_response values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.backend_response if v.backend_response != null && length(v.backend_response) > 0 }
}
output "api_management_diagnostics_frontend_request" {
  description = "Map of frontend_request values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.frontend_request if v.frontend_request != null && length(v.frontend_request) > 0 }
}
output "api_management_diagnostics_frontend_response" {
  description = "Map of frontend_response values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.frontend_response if v.frontend_response != null && length(v.frontend_response) > 0 }
}
output "api_management_diagnostics_http_correlation_protocol" {
  description = "Map of http_correlation_protocol values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.http_correlation_protocol if v.http_correlation_protocol != null && length(v.http_correlation_protocol) > 0 }
}
output "api_management_diagnostics_identifier" {
  description = "Map of identifier values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "api_management_diagnostics_log_client_ip" {
  description = "Map of log_client_ip values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.log_client_ip if v.log_client_ip != null }
}
output "api_management_diagnostics_operation_name_format" {
  description = "Map of operation_name_format values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.operation_name_format if v.operation_name_format != null && length(v.operation_name_format) > 0 }
}
output "api_management_diagnostics_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "api_management_diagnostics_sampling_percentage" {
  description = "Map of sampling_percentage values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.sampling_percentage if v.sampling_percentage != null }
}
output "api_management_diagnostics_verbosity" {
  description = "Map of verbosity values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.verbosity if v.verbosity != null && length(v.verbosity) > 0 }
}

