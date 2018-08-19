# Dockerized Jekyll And Nginx
 - A template to run a Jekyll site served on Nginx using Docker build. 

### Creating A New Jekyll Blog
1. Ensure **Docker** is installed on your computer/server. 
   * https://docs.docker.com/docker-for-mac/install/
   * https://docs.docker.com/docker-for-windows/install/ 
   * https://docs.docker.com/install/linux/docker-ce/ubuntu/
2. Open a terminal and `cd` to the root of this folder.
3. Execute `docker-compose -f docker-compose-create.yml run jekyllcreate jekyll new web`. The command will initiate a new Jekyll site inside the folder named "web".
4. Build and run the new shiny Jekyll site. Execute `docker-compose -f docker-compose-dev.yml up --build; docker-compose -f docker-compose-dev.yml down`
   Once the build is complete, site is now accessible at `localhost` and served thru Nginx container. Any changes on your files are being watched.
   
### Running An Existing Jekyll Blog
1. Ensure **Docker** is installed on your computer/server. 
   * https://docs.docker.com/docker-for-mac/install/
   * https://docs.docker.com/docker-for-windows/install/ 
   * https://docs.docker.com/install/linux/docker-ce/ubuntu/
2. Inside the root of this folder, copy the folder ( including all existing files ) of your old Jekyll blog and rename it to `web`. ( Note: You can name the folder to your liking but you'll need to re-adjust the commands on **yaml** files ).
3. If you need some specific gems, you can take a look and modify the `Dockerfile`. Also, you might want to adjust the paths on your existing `_config.yml` file.
4. Open a terminal and `cd` to the root of this folder.
5. Execute `docker-compose -f docker-compose-dev.yml up --build; docker-compose -f docker-compose-dev.yml down`. The command will build your old Jekyll site and serve thru nginx container. It should be now available at `localhost` and all changes on your files are being watched.


### Deployment To Production
* `ssh` to your host server and follow one of the directions above ( depending on your needs ).
* Git clone this repo on your host server. 
* To test your installation, execute `docker-compose -f docker-compose-prod.yml up --build; docker-compose -f docker-compose-prod.yml down`
* Once everything is good and ready to go live - `docker-compose -f docker-compose-prod.yml up --build --detach`

