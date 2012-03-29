# Amazon CloudWatch Monitoring Scripts for EC2 Instance

## Usage

In your .bashrc or .zshrc, add these lines:

    export $AWS_ACCESS_KEY_ID="YOUR_AWS_ACCESS_KEY_ID"
    export $AWS_SECRET_KEY="YOUR_AWS_SECRET_KEY"

Then run the following command:

    ./send-reports-to-cloudwatch.sh

Add this command to report to CloudWatch every five minutes:

    */5 * * * * ~/amazon-cloudwatch-monitoring-scripts/send-reports-to-cloudwatch.sh 

## Reports

- Disk space available
- Disk space utilization
- Memory available
- Memory utilization

## License

This application licensed by Apache License Version 2.0.

Copyright (c) 2012 Hirohide Sano <sanojimaru@gmail.com>
