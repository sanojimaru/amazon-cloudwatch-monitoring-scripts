# Amazon CloudWatch Monitoring Scripts for EC2 Instance

## Usage

In your .bashrc or .zshrc, add these lines:

    export $AWS_ACCESS_KEY_ID="YOUR_AWS_ACCESS_KEY_ID"
    export $AWS_SECRET_KEY="YOUR_AWS_SECRET_KEY"

Then run the following command:

    ./send-reports-to-cloudwatch.sh

## Reports

- Disk space available
- Disk space utilization
- Memory available
- Memory utilization

