# A simple gym-typescript application 

### Create a network for the docker containers

`docker network create demo`

### Build the client 

```sh
cd gym-typescript
docker build -t gym-typescript:v1 .
```

### Run the client

`docker run --name=frontend --network=demo -d -p 5173:5173 gym-typescript:v1`

### Verify the client is running

Open your browser and type `http://localhost:5173`
Or
'htttp://ip-of-instance:5173'
example
http://18.61.91.72:5173/



