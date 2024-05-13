# Go Demo App With Docker And Kubernetes Deployments

## Technologies

- Go
- Docker
- Kubernetes
- GitHub Actions - CI/CD

### Technologies
The image for the Go App: https://hub.docker.com/r/berkesayin/go-demo-app/.

The image is built and pushed to `DockerHub` using `GitHub Actions` with `CI/CD`. It is continuously updated after each push to the `master` branch.

## Usage

- Use the application with Docker Image and Kubernetes deployment.

```sh
kubectl config get-contexts
# CURRENT   NAME             CLUSTER          AUTHINFO         NAMESPACE
# *         docker-desktop   docker-desktop   docker-desktop
```

Get `app.yaml` file.

```sh
kubectl apply -f app.yaml

# deployment.apps/go-demo created
# service/go-demo created
```

Check Kubernetes environments.

```sh
kubectl get deployments

# NAME      READY   UP-TO-DATE   AVAILABLE   AGE
# go-demo   1/1     1            1           28s
```

```sh
kubectl get services

# NAME         TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
# go-demo      LoadBalancer   10.102.229.174   localhost     80:32573/TCP   46s
# kubernetes   ClusterIP      10.96.0.1        <none>        443/TCP        4d17h
```

```sh
kubectl get pods

# NAME                     READY   STATUS    RESTARTS   AGE
# go-demo-56bff4d4-2nv96   1/1     Running   0          67s
```

**Application**

```sh
curl localhost:80
```

```sh
          ##         .
    ## ## ##        ==
 ## ## ## ## ##    ===
/"""""""""""""""""\___/ ===
{                       /  ===-
\______ O           __/
 \    \         __/
  \____\_______/

I'm Berke, Hello from Docker!
```
