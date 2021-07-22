resource "aws_key_pair" "mykeypair" {
    key_name = "mykeypair"
    public_key = file("./mykey.pub")
    #public_key = fileexists(var.PATH_TO_PUBLIC_KEY) ? file(var.PATH_TO_PUBLIC_KEY) : var.DUMMY_SSH_PUB_KEY
}