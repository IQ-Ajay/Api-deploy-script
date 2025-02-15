deployment/
│── deploy.sh
│── projects/
│   ├── pt001.conf
│   ├── pd006.conf
│   ├── wb001.conf
│── config.env
│── deploy-helper.sh


## Deploy a specific project (e.g., pt001)

```  ./deploy.sh pt001 ```

## Deploy multiple projects
``` ./deploy.sh pt001 pd006 wb001 ```


### To add a new project:

## Add a new .conf file inside projects/ with the required configurations.
## Run 
``` ./deploy.sh <new_project_name> ```
