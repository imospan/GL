Task 4: deploy LAMP stack on a GCP instance.
-----------------
Firstly, I've created an instance with Google Cloud SDK Shell:
```shell
gcloud compute instances create gltask-instance --project=gltask --zone=us-east1-b --machine-type=e2-medium --network-interface=network-tier=PREMIUM,subnet=default --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=440317626118-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server --create-disk=auto-delete=yes,boot=yes,device-name=GLtask-instance,image=projects/centos-cloud/global/images/centos-7-v20221206,mode=rw,size=20,type=projects/gltask/zones/us-east1-b/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any
```
The result can be seen on a console screen:
![screen1](https://user-images.githubusercontent.com/106439773/209690413-89eac8da-f865-4b90-b612-16330e392185.png)

Then I've copied a [Bash script](https://github.com/imospan/devops_basecamp/blob/main/task4_gcp/lamp.sh), made it executable with `chmod +x` and runned.
After script complition I could check that a simple web-page was created:

![screen2](https://user-images.githubusercontent.com/106439773/209690757-934ad658-d774-4656-8cd7-cd9773e6ccb9.png)
