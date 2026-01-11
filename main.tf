resource "azurerm_stream_analytics_function_javascript_uda" "stream_analytics_function_javascript_udas" {
  for_each = var.stream_analytics_function_javascript_udas

  name                    = each.value.name
  script                  = each.value.script
  stream_analytics_job_id = each.value.stream_analytics_job_id

  input {
    configuration_parameter = each.value.input.configuration_parameter
    type                    = each.value.input.type
  }

  output {
    type = each.value.output.type
  }
}

