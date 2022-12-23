`#`Task 1 - prepare a list of resources required to run a typical LAMP website in a private datacenter for one year with pricing and compare to cloud solutions.


Costs for creating a web server in a private data center depend on scale of your web-site and traffic volume - the more powerful solutions you need - the more CapEx you'll  have. But it may be cheaper in the long run for some small web-sites.
Nevertheless, equipment has to be purchased upfront for startup and maintenance (CapEx), while the public cloud does not require buying new equipment for scaling (No CapEx).

I've calculated approximate costs for a powerful (above average) on-premise servers with load balancer in private datacenter:
![alt text](https://github.com/imospan/devops_basecamp/blob/main/task1_cloud/OnPremise.png?raw=true)

The results of AWS pricing calculation shown on screenshot:
![alt text](https://github.com/imospan/devops_basecamp/blob/main/task1_cloud/AWS.png?raw=true)

Azure pricing:
![alt text](https://github.com/imospan/devops_basecamp/blob/main/task1_cloud/Azure.png?raw=true)

As you can see, equal cloud solutions are at least twice cheaper, then on-premise one.

Also, while creating our own web server, we shouldn't forget to consider all additional risks, that take place in Ukraine nowadays (such as shelling and the absence of electricity for a long period of time).
It is more preferably to create an infrastructure in the public cloud to save money, avoid war-associated risks, while having faster creation and deployment with no CapEx and much easier scaling, if needed.
