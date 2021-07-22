output "instance" {
  value = aws_instance.instance_jenkins.public_ip
}

# output "app-ip" {
  # value = [aws_instance.app-instance.*.public_ip]
# }

output "s3-bucket" {
  value = aws_s3_bucket.terraform-state.bucket
}