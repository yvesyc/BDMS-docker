
<h2 align="center">
  <img height="160" width="240" src="https://github.com/yvesyc/bdms-Server/blob/master/gms-ui/src/assets/logo.png?raw=true" alt="yvesyc / bdms-Server">
  <br>
  bdms Docker
  <br>
  <br>


[![Docker Image Version](https://img.shields.io/docker/v/yvesyc/bdms-server-all?style=for-the-badge&label=bdms-server-all)](https://hub.docker.com/r/yvesyc/bdms-server-all)
[![Docker Image Version](https://img.shields.io/docker/v/yvesyc/bdms-server?style=for-the-badge&label=bdms-server)](https://hub.docker.com/r/yvesyc/bdms-server)
[![Docker Image Version](https://img.shields.io/docker/v/yvesyc/beidou-ui?style=for-the-badge&label=beidou-ui)](https://hub.docker.com/r/yvesyc/beidou-ui)

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/yvesyc/bdms-docker/release.yaml?style=for-the-badge&label=release%20build)
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/yvesyc/bdms-docker/nightly.yaml?style=for-the-badge&label=nightly%20build)

</h2>

<br>

# 通过Docker部署yvesyc

[视频教程](https://www.bilibili.com/video/BV12j6WYDEuQ/)

### 先决条件
* 已安装 Docker && Docker-compose 

### 示例

使用稳定版

```shell
# 使用稳定的构建（github release） 

# docker.io 源
# yvesyc/bdms-server-all:<版本号>

# ghcr.io 源
# ghcr.io/beidoums/bdms-server-all:<版本号>

git clone https://github.com/yvesyc/bdms-docker && cd bdms-docker
# 一键创建容器并启动
sudo docker compose -f docker-compose-release.yml up -d
# 关闭服务
sudo docker compose -f docker-compose-release.yml stop
# 开启服务(需要创建过)
sudo docker compose -f docker-compose-release.yml start
# 重启服务
sudo docker compose -f docker-compose-release.yml restart
# 查看日志
sudo docker compose -f docker-compose-release.yml logs --tail 500


# 服务器配置文件位置
# bdms-server-nightly/application.yml

# 脚本位置
# bdms-server-nightly/scripts
# bdms-server-nightly/scripts-zh-CN

# wz位置
# bdms-server-nightly/wz
# bdms-server-nightly/wz-zh-CN
```


使用尝鲜版
 
```shell
# 要使用最新的构建 (每日定时构建)  

# docker.io 源
# yvesyc/beidou-ui:nightly
# yvesyc/bdms-server:nightly

# ghcr.io 源
# ghcr.io/beidoums/beidou-ui:nightly
# ghcr.io/beidoums/bdms-server:nightly

git clone https://github.com/yvesyc/bdms-docker && cd bdms-docker

# 先修改 docker-compose-nightly.yml 中的 ip 设置 ...
# 若要访问管理页面， 还需设置app.vue
# 目前不用提供 nginx-ui.conf 了 

sudo docker compose -f docker-compose-nightly.yml up -d
sudo docker compose -f docker-compose-nightly.yml stop
sudo docker compose -f docker-compose-nightly.yml start
sudo docker compose -f docker-compose-nightly.yml restart
sudo docker compose -f docker-compose-nightly.yml logs --tail 500

# 服务器配置文件位置
# bdms-server-nightly/application.yml

# 脚本位置
# bdms-server-nightly/scripts
# bdms-server-nightly/scripts-zh-CN

# wz位置
# bdms-server-nightly/wz
# bdms-server-nightly/wz-zh-CN
```


### 若有连接问题 检查 `application.yml` 中的 ip 配置 

### 镜像名解释

`bdms-server-all:<version>` 为带有版本号的稳定版

`bdms-server:nightly` , `beidou-ui:nightly` 是每日五点基于最新代码构建的尝鲜版，前后端分开打包，需要一起安装，推荐使用 `docker-compose`
