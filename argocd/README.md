# 自定义argocd镜像

## 2025-05-14
- 需要增加额外的`yq`工具，将`jsonnet`文件渲染的结果转换为`yaml`。


## 2025-05-14
- 还原`argocd`镜像，在原始镜像`quay.io/argoproj/argocd:v2.12.1`的基础上，添加`jsonnet`工具。


## 2025-05-14
- 配置`argocd cmp`时，使用`sidecar`的方式注入，所以此时使用`busybox`镜像，然后添加`jsonnet`命令即可。


## 2025-05-14
- 在原始镜像`quay.io/argoproj/argocd:v2.12.1`的基础上，使用`USER`切换用户安装软件，导致启动镜像报错，现只添加必要的`jsonnet`即可。
- 报错信息。
  ```
  Error: container has runAsNonRoot and image has non-numeric user (argocd), cannot verify user is non-root 
  (pod: "argocd-repo-server-75bf5d64fd-m8qjr_argocd(1123d34f-d833-40ff-9098-d0c87781dc0b)", container: copyutil)
  ```


## 2025-05-14
- 在原始镜像`quay.io/argoproj/argocd:v2.12.1`的基础上，添加`jsonnet`工具。