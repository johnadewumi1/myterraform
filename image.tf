resource "oci_core_image" "tf_image" {
  #Required
  compartment_id = var.compartment_id
  instance_id = oci_core_instance.johnserver.id
}
