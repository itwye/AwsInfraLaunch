> #### launch aws simple infrastructure

- create keypair
- create security group,open 80,443,8080 ports.
- create load balancer
- launch ec2 instances,instances are distributed in different available zones.
- initialize ec2 instances,install jdk and tomcat.
- add ec2 instances to load balancer

> #### usage

- step one

$export AWS_ACCESS_KEY_ID=XXXXXXXXXXXX
$export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXX

- step two

$ssh-keygen -t rsa 

- step three

modify the file of "vars.yml" according to your needs.

- step four

$ansible-playbook -i inventory.ini main.yml 

- step five

check the deploy result by input url of "$your_elb_dns_name" in your brower.

you will see the homepage of tomcat.

> ##### other

write by itwye , itwye@qq.com