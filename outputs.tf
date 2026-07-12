output "api_management_diagnostics_always_log_errors" {
  description = "Map of always_log_errors values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.always_log_errors }
}
output "api_management_diagnostics_api_management_logger_id" {
  description = "Map of api_management_logger_id values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.api_management_logger_id }
}
output "api_management_diagnostics_api_management_name" {
  description = "Map of api_management_name values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.api_management_name }
}
output "api_management_diagnostics_backend_request" {
  description = "Map of backend_request values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.backend_request }
}
output "api_management_diagnostics_backend_response" {
  description = "Map of backend_response values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.backend_response }
}
output "api_management_diagnostics_frontend_request" {
  description = "Map of frontend_request values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.frontend_request }
}
output "api_management_diagnostics_frontend_response" {
  description = "Map of frontend_response values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.frontend_response }
}
output "api_management_diagnostics_http_correlation_protocol" {
  description = "Map of http_correlation_protocol values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.http_correlation_protocol }
}
output "api_management_diagnostics_identifier" {
  description = "Map of identifier values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.identifier }
}
output "api_management_diagnostics_log_client_ip" {
  description = "Map of log_client_ip values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.log_client_ip }
}
output "api_management_diagnostics_operation_name_format" {
  description = "Map of operation_name_format values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.operation_name_format }
}
output "api_management_diagnostics_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.resource_group_name }
}
output "api_management_diagnostics_sampling_percentage" {
  description = "Map of sampling_percentage values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.sampling_percentage }
}
output "api_management_diagnostics_verbosity" {
  description = "Map of verbosity values across all api_management_diagnostics, keyed the same as var.api_management_diagnostics"
  value       = { for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : k => v.verbosity }
}

