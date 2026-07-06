output "api_management_diagnostics" {
  description = "All api_management_diagnostic resources"
  value       = azurerm_api_management_diagnostic.api_management_diagnostics
}
output "api_management_diagnostics_always_log_errors" {
  description = "List of always_log_errors values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.always_log_errors]
}
output "api_management_diagnostics_api_management_logger_id" {
  description = "List of api_management_logger_id values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.api_management_logger_id]
}
output "api_management_diagnostics_api_management_name" {
  description = "List of api_management_name values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.api_management_name]
}
output "api_management_diagnostics_backend_request" {
  description = "List of backend_request values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.backend_request]
}
output "api_management_diagnostics_backend_response" {
  description = "List of backend_response values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.backend_response]
}
output "api_management_diagnostics_frontend_request" {
  description = "List of frontend_request values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.frontend_request]
}
output "api_management_diagnostics_frontend_response" {
  description = "List of frontend_response values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.frontend_response]
}
output "api_management_diagnostics_http_correlation_protocol" {
  description = "List of http_correlation_protocol values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.http_correlation_protocol]
}
output "api_management_diagnostics_identifier" {
  description = "List of identifier values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.identifier]
}
output "api_management_diagnostics_log_client_ip" {
  description = "List of log_client_ip values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.log_client_ip]
}
output "api_management_diagnostics_operation_name_format" {
  description = "List of operation_name_format values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.operation_name_format]
}
output "api_management_diagnostics_resource_group_name" {
  description = "List of resource_group_name values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.resource_group_name]
}
output "api_management_diagnostics_sampling_percentage" {
  description = "List of sampling_percentage values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.sampling_percentage]
}
output "api_management_diagnostics_verbosity" {
  description = "List of verbosity values across all api_management_diagnostics"
  value       = [for k, v in azurerm_api_management_diagnostic.api_management_diagnostics : v.verbosity]
}

