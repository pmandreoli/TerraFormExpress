
resource "openstack_networking_secgroup_v2" "tf-ftp" {
  name        = "tf-ftp"
  description = "[tf] Allow ftp active and passive connection connections"
}
resource "openstack_networking_secgroup_rule_v2" "tf-ftp-r1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "21"
  port_range_max    = "21"
  security_group_id = "${openstack_networking_secgroup_v2.tf-ftp.id}"
}
resource "openstack_networking_secgroup_rule_v2" "tf-ftp-r2" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "3000"
  port_range_max    = "3009"
  security_group_id = "${openstack_networking_secgroup_v2.tf-ftp.id}"
}
