# Kubernetes Lab

En este laboratorio ejecutaremos una aplicación con Kubernetes que consiste de los siguientes elementos:

- Frontend
- Backend API con GraphQL
- Base de datos con MongoDB

## Taller

Crea un archio `deploy.yaml` con los siguientes elementos, recuerda separar cada uno con `---`:

## Aplicar cambios

Recuerda aplicar tus cambios cada vez que hagas un Deployment o Service con el siguiente comando:

```
kubectl apply -f deploy.yaml
```

### Deployment MongoDB

imagen: `mongo`

puertos: `27017`

variables de entorno:

- MONGO_INITDB_ROOT_USERNAME: `"root"`
- MONGO_INITDB_ROOT_PASSWORD: `"root"`

### Service MongoDB

tipo: `NodePort`

puertos:

- protocol: `TCP`
- targetPort: `27017`
- port: `27017`
- nodePort: `32017`

### Deployment Backend

imagen: `mass90/abraxas-tasks-api`

puertos: `5000`

variables de entorno:

- WORKERS: `"1"`

- MONGO_URI: `"mongodb://root:root@mongo.default.svc.cluster.local/tasks?authSource=admin"`

- MONGO_DB: `"tasks"`

### Service Backend

tipo: `NodePort`

puertos:

- protocol: `TCP`
- targetPort: `5000`
- port: `5000`
- nodePort: `30808`

### Deployment Frontend

imagen: `mass90/abraxas-tasks-client`

puertos: `3000`

variables de entorno:

- REACT_APP_GRAPHQL_URI: `"http://URL_DE_TU_AMBIENTE_CLOUD9:30808/graphql"`

### Service Frontend

tipo: `NodePort`

puertos:

- protocol: `TCP`
- targetPort: `3000`
- port: `3000`
- nodePort: `30300`

## Validar

Usa la URL de tu ambiente de Cloud9 con el puerto `30300` para ver la aplicación en ejecución.
