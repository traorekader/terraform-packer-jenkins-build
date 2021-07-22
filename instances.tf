data "aws_ami" "ubuntu"{
    most_recent = true
    owners = ["099720109477"]

    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
}

resource "aws_instance" "instance_jenkins" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"

    # the VPC subnet setting
    subnet_id = aws_subnet.main-public-1.id

    # set the security group for the jenkins application
    vpc_security_group_ids = [aws_security_group.jenkins-securitygroup.id]

    # set the key_name
    key_name = aws_key_pair.mykeypair.key_name

    # set user data
    user_data = data.template_cloudinit_config.cloudinit-jenkins.rendered

    # set iam instance profile
    iam_instance_profile = aws_iam_instance_profile.jenkins-role.name
}

resource "aws_ebs_volume" "jenkins-data"{
    availability_zone = "${var.AWS_REGION}a"
    size = 20
    type = "gp2"
}

resource "aws_volume_attachment" "jenkins-data-attachement" {
    device_name = var.INSTANCE_DEVICE_NAME
    volume_id = aws_ebs_volume.jenkins-data.id
    instance_id = aws_instance.instance_jenkins.id
    skip_destroy = true
}

