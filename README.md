## Install 

### For local dev 

1. Customize `docker-compose.yml` to your dev needs, e.g. bind plugin/theme volume 
    - Look for **TODO**s in the file 
2. Open in browser and install WordPress
3. Customize `./scripts/post-install.dev.sh`, then execute command to run it in   docker:
    
    ```sh
    docker exec wordpress /var/www/post-install.dev.sh
    ```


### For Prod

For production, rather than bind mount, I recommend you customize `Dockerfile.prod` and bake your custom plugin/theme assets into the image, with multi-stage build, to get a clean and lightweight image. 

1. Customize `docker-compose.prod.yml`
    - Look for **TODO**s in the file 
2. Open in browser and install WordPress
3. Customize `./scripts/post-install.prod.sh`, then execute command to run it in   docker:
    
    ```sh
    docker exec wordpress /var/www/post-install.prod.sh
    ```

## About `post-install` Scripts

The `post-install` scripts: 
- installs recommended plugins, 
- deletes unnecesary builtin plugins, 
- disables comments, 
- configures permalink structure. 

## Configure `nginx` and `php`

Nginx and PHP config files are in the scripts directory, adjust the settings (e.g. logging, connection pool size, post_max_size etc.) to fit your needs. 
