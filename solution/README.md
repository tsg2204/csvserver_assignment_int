# csvserver-solution
assignment
# Solution for Part I

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

# Solution for Part II
1. Deleted any containers from the previous part:
docker rm -f demoserver

2. Started Minikube:
minikube start

3. Created deployment.yaml:

4. Created service.yaml:

5. Created a directory called Part II: 
    mkdir "Part II"
    Moved deployment.yaml and service.yaml into the Part II directory:
    mv deployment.yaml service.yaml "Part II/"


