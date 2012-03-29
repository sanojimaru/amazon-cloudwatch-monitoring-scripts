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

Copyright (c) 2012 Hirohide Sano <sanojimaru@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
