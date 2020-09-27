# [Tempest] Server Data

_The data repository for Tempest server instances_


## Prerequisites

1. [Visual C++ Redistributable 2019](https://aka.ms/vs/16/release/VC_redist.x64.exe)
    or newer
2. [Git](https://git-scm.com/download/win) to ensure a correct installation


## FiveM Server Installation

1. Create a new directory to store the server files
    ```
    C:\FXServer\server
    ```
2. Download the latest **master** branch build for Windows from the
    [artifacts server](https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/)
3. Extract the build into the directory previously created
4. See the **Create New Server Instance** section below to create a new server
    instance


## Update FiveM Server Installation

1. Download the latest **master** branch build for Windows from the
    [artifacts server](https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/)
2. Extract the build into the installation folder, overwriting files as necessary


## Create New Server Instance

1. Clone the `server-data` repository into a new folder outside of the server
    files _(Note: Be sure to change `<instance>` to the name of the instance)_
    ```
    cd C:\FXServer
    git clone https://github.com/rptempest/server-data.git <instance>
    ```
2. Modify the server configuration files as needed
    ```
    server.cfg              # Basic settings
    config/environment.cfg  # API and license keys
    config/permissions.cfg  # User permissions
    config/resources.cfg    # Resources
    config/variables.cfg    # Global variables
    ```
3. Launch the new instance from the `<instance>` folder
    _(Note: Be sure to change `<instance>` to the name of the instance)_
    ```
    cd C:\FXServer\<instance>
    C:\FXServer\server\FXServer.exe +set citizen_dir C:\FXServer\server\citizen +exec server.cfg
    ```


## Update Server Instance from Tempest GitHub

1. Change to the working directory
    _(Note: Be sure to change `<instance>` to the name of the instance)_
    ```
    cd C:\FXServer\<instance>
    ```
2. Pull the changes from the remote repository, merging changes as required
    ```
    git pull origin master
    ```


## Install Third-Party Resource

1. Change to the working directory
    _(Note: Be sure to change `<instance>` to the name of the instance)_
    ```
    cd C:\FXServer\<instance>\resources\[third-party]
    ```
2. Clone the repository to the `resources\[third-party]\<resource>` directory
    _(Note: Be sure to change `<repo>` and `<resource>` tp the proper values)_
    ```
    git clone https://github.com/<username>/<repo>.git <resource>
    ```
3. Modify the server configuration files to enable the resource
4. Stage changes
    ```
    cd C:\FXServer\<instance>
    git add .
    ```
5. Commit changes
    ```
    git commit -m "Installed <repo> resource"
    ```
6. Push the changes to the remote repository
    ```
    git push origin master
    ```

See **Update Third-Party Resource** for instructions on updating third-party
resources as needed.


## Update Third-Party Resource

1. Change to the resource folder
    _(Note: Be sure to change `<resource>` to the name of the resource)_
    ```
    cd C:\FXServer\<instance>\resources\[third-party]\<resource>
    ```
2. Pull the changes from the remote repository into your local copy, merging
    changes as required
    ```
    git checkout master && git pull
    ```


## Create Custom Resource

1. Create a new repository on GitHub
    _(Note: Enable the "Initialize this repository with a README" option when
    creating the repository)_
    https://github.com/organizations/rptempest/repositories/new
2. Clone the repository to the `resources\[tempest]\<repo>` directory
    _(Note: Be sure to change `<repo>` and `<resource>` to the proper values)_
    ```
    cd C:\FXServer\<instance>\resources\[tempest]
    git clone https://github.com/rptempest/<repo>.git <resource>
    ```
3. Download the latest release of the repository boilerplate
    https://github.com/rptempest/_template/archive/master.zip
4. Extract the boilerplate into the resource directory
5. Modify the files as needed to complete the resource
    _(Note: Only stable, working commits should be made)_
6. Stage changes to the repository
    ```
    cd C:\FXServer\<instance>\resources\[tempest]\<repo>
    git add .
    ```
7. Commit changes to the repository
    ```
    git commit -m "Initial file commit"
    ```
8. Push changes to the remote repository
    ```
    git push origin master
    ```
9. Repeat steps 5-8 to until resource development is complete


## Update Custom Resource

1. Change to the resource folder
    _(Note: Be sure to change `<resource>` to the name of the resource)_
    ```
    cd C:\FXServer\<instance>\resources\[tempest]\<resource>
    ```
2. Pull the changes from the remote repository into your local copy, merging
    changes as required
    ```
    git checkout master && git pull
    ```
3. Modify the files as needed to update the resource
    _(Note: Only stable, working commits should be made)_
4. Stage changes to the repository
    ```
    git add .
    ```
5. Commit changes to the repository
    ```
    git commit -m "Description of changes"
    ```
6. Push changes to the remote repository
    ```
    git push origin master
    ```
7. Repeat steps 3-6 to until resource development is complete


## Development Workflow

1. Change to the instance folder
    ```
    cd C:\FXServer\<instance>
    ```
2. Check that status of your working directory
    ```
    git status
    ```
3. If you have modified files or your working directory is not clean, stash
   your changes
    ```
    git stash
    ```
4. Pull the changes from the remote repository, merging changes as required
    ```
    git pull origin master
    ```
5. Apply stash to the repository
    ```
    git stash apply
    ```
6. If the stash was successfully applied, cleanup the stashes
    ```
    git stash drop
    ```
7. Modify the files as needed to update the resource
    _(Note: Only stable, working commits should be made)_
8. Stage changes to the repository
    ```
    git add .
    ```
9. Commit changes to the repository
    ```
    git commit -m "Description of changes"
    ```
10. Push changes to the remote repository
    ```
    git push origin master
    ```
11. Repeat steps 7-10 to until resource development is complete


## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available,
see the [tags on this repository](https://github.com/rptempest/server-data/releases).


## Authors

* **Grievance** - *Initial work* - [Grievance](https://github.com/GrievanceTV)


## License

This project is licensed under the Unlicense - see the **UNLICENSE** file for
details.
