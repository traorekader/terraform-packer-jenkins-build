resource "aws_iam_role" "jenkins-role"{
    name = "jenkins-role"
    assume_role_policy = file("./assume_role.json")
}

resource "aws_iam_instance_profile" "jenkins-role"{
    name = "jenkins-role"
    role = aws_iam_role.jenkins-role.id
}

resource "aws_iam_role_policy" "jenkins-admin-policy"{
    name = "jenkins-admin-role-policy"
    role = aws_iam_role.jenkins-role.id
    policy = jsonencode({
        "Version":"2012-10-17",
        "Statement" : [
            {
                "Action":["*"],
                "Effect":"Allow",
                "Resource":"*"
            }
        ]
    })
}