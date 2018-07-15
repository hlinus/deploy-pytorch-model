# Serving your trained PyTorch model as REST API

This repository is a [fork](https://github.com/L1aoXingyu/deploy-pytorch-model) 
containerizing the original application. This code is for development only 
and should not be used in production. 
  
## Requirements

- docker (tested with version 18.03.1-ce, build 9ee9f40)
- docker-compose (tested with version 1.21.2, build a133471)

## Starting the Flask web server container

```bash
$ docker-compose up
```

```bash
Recreating deploy-pytorch-model_server_1 ... done
Attaching to deploy-pytorch-model_server_1
server_1  | Downloading: "https://download.pytorch.org/models/resnet50-19c8e357.pth" to /root/.torch/models/resnet50-19c8e357.pth
100.0%Loading PyTorch model and Flask starting server ...
server_1  | Please wait until server has fully started
server_1  |  * Serving Flask app "run_pytorch_server" (lazy loading)
server_1  |  * Environment: production
server_1  |    WARNING: Do not use the development server in a production environment.
server_1  |    Use a production WSGI server instead.
server_1  |  * Debug mode: off
server_1  | 
server_1  |  * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
```

You can now access the REST API via `http://127.0.0.1:5000/predict`

## Submitting requests to the API

```bash
python simple_request.py --file dog.jpg
```

```bash
1. beagle: 0.9503
2. Walker hound, Walker foxhound: 0.0321
3. English foxhound: 0.0035
```


## Acknowledgement
This repository refers to [jrosebr1/simple-keras-rest-api](https://github.com/jrosebr1/simple-keras-rest-api), and thank the author again.