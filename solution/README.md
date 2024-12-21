# csvserver_assignment

# Solution for Part I - attached scrrenshot in Part I Folder

## Steps executed:

1. Ran the container `demoserver:1.0`:
   ```bash
   docker run -d --name demoserver -p 9393:9300 demoserver:1.0

2.  Wrote the gencsv.sh script to generate the inputdata file:

3. Ran the container with the generated inputdata:
    docker run -d -v $(pwd)/inputFile:/csvserver/inputdata -e CSVSERVER_BORDER=Orange -p 9393:9300 demoserver:1.0

4.  Accessed the application at http://localhost:9393.

5. Stopped and removed the container after testing:
docker stop demoserver
docker rm demoserver

6. Create part-1-cmd with the command used to run the container in step 3 (Added App Screenshot as well):
    docker run -d -v $(pwd)/inputFile:/csvserver/inputdata -e CSVSERVER_BORDER=Orange -p 9393:9300 demoserver:1.0

7. Generate part-1-output:
    curl -o ./part-1-output http://localhost:9393/raw

8. Generate part-1-logs:
   docker logs demoserver >& part-1-logs

9. Create a directory called Part I and move all the files (gencsv.sh, inputdata, part-1-cmd, part-1-output, part-1-logs) into it:
mkdir "Part I"
mv gencsv.sh inputdata part-1-cmd part-1-output part-1-logs "Part I/"

# Solution for Part II -attached scrrenshot in Part II Folder
1. Deleted any containers from the previous part:
docker stop demoserver
docker rm -f demoserver

2. Started Minikube:
minikube start

3. Create the inputdata-config ConfigMap
kubectl create configmap inputdata-config --from-file=inputFile=inputFile


4. Created deployment.yaml:

5. Created service.yaml:

6.  Use environment variable CSVSERVER_BORDER

7. Use environment variable CSVSERVER_BORDER

8. Expose the Deployment - service.yml

9. Verify the Deployment and Service
kubectl get pods
kubectl get services
minikube service csvserver-service