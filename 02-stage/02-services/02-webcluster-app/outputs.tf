# ////////////////////////////////////////////
# OUTPUTS
# ////////////////////////////////////////////

# Web Cluster App ALB DNS Name
output "alb_dns_name" {
  value       = module.webclusterapp.alb_dns_name
  description = "The domain name of the load balancer"
}


