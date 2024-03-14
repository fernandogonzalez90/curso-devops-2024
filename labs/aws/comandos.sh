# Install CLI:
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws configure

# Test CLI:
aws iam list-users
aws s3 ls
aws sts get-caller-identity