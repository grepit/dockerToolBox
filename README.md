

![](https://d1q6f0aelx0por.cloudfront.net/icons/docker-edition-azure6.png )

### Container Tool
This container has the following tools:
- openssl
- password generator
- bcrypt
- mount script
- escaping script
- mean stack

### Clone this Repo
```sh
git clone https://github.com/nanoseconds/dockerToolBox.git
```
### How  to Run
The following scripts are under dockerToolBox/docker/toolBox 
-  For Windows:
```sh
>.\buildit.ps1
```
- For Mac /Linux
```sh
$./buildit.sh
```
Then run the followings :
```sh
> docker run --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH -dit [THE IAMGE ID FOR toolbox/sh]
> docker ps -a
> docker exec -it [the id from docker run command output ] bash
> cd dockerToolBox
