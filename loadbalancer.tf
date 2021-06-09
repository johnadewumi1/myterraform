resource "oci_load_balacer" "johnlb" {
  shape          = var.load_balancer_shape
  compartment_id = var.compartment_id
  subnet_id      = oci_core_subnet.publicsubnet.id
  display_name   = "johnlb"



  shape_details {
    #Required
    maximum_bandwidth_in_mbps = var.load_balancer_shape_details_maximum_bandwidth_in_mbps
    minimum_bandwidth_in_mbps = var.load_balancer_shape_details_minimum_bandwidth_in_mbps
  }
}

resource "oci_load_balancer_listener" "johnlbs_listener" {
  #Required
  default_backend_set_name = oci_load_balancer_backend_set.john_backend_set.name
  load_balancer_id         = oci_load_balancer.johnlb.id
  name                     = "johnlbs_listener"
  port                     = var.listener_port
  protocol                 = var.listener_protocol

}

resource "oci_load_balancer_backend_set" "john_backend_set" {
  #Required
  health_checker {
    #Required
    protocol            = var.listener_protocol
    port                = var.listener_port
    url_path            = "/"
    response_body_regex = ".*"
  }
  load_balancer_id = oci_load_balancer.johnlb.id
  name             = var.john_backend_set
  policy           = var.backend_set_policy
}

resource "oci_load_balancer_backend" "server_backend1" {
  #Required
  backendset_name  = oci_load_balancer_backend_set.john_backend_set.name
  ip_address       = var.oci_core_instance.johnserver.private_1p
  load_balancer_id = oci_load_balancer.johnlb.id
  port             = var.listener_port

  #Optional
  backup  = false
  drain   = false
  offline = false
  weight  = 1
}

resource "oci_load_balancer_backend" "server_backend2" {
  #Required
  backendset_name  = oci_load_balancer_backend_set.john_backend_set.name
  ip_address       = var.oci_core_instance.johnserver2.private_1p
  load_balancer_id = oci_load_balancer.johnlb.id
  port             = var.listener_port

  #Optional
  backup  = false
  drain   = false
  offline = false
  weight  = 1
}


output "johnlb_public_ip" {
  value = [oci_load_balancer.johnlb.ip_address]
}