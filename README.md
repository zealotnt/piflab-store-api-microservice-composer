# docker-composer project for PIFLab API

## Quick startup for demo
```bash
sudo docker-compose up
```
- This command will start all service, database and everything is ready for used. But this way is not easy for debugging and developing (interractive shell, the gin process always run)

## Environment setup for developing
- Input these command to start the containers
```bash
sudo docker-compose up -d db_old
sudo docker-compose up -d db_product
sudo docker-compose run -p 9900:80 api_gateway bash
sudo docker-compose run -p 9901:80 product_service bash
```
- The `helper.sh` script help to expand the shell commands, to use it
```bash
source helper.sh
```


- GetCart
<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://www.lucidchart.com/documents/embeddedchart/396fb866-6723-4439-a072-8f1015af9951" id="e-BjnU.~0gYZ"></iframe></div>

- UpdateCart
<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://www.lucidchart.com/documents/embeddedchart/396fb866-6723-4439-a072-8f1015af9951" id="Z~BjlXV7VpB3"></iframe></div>

- DeleteCart
<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://www.lucidchart.com/documents/embeddedchart/396fb866-6723-4439-a072-8f1015af9951" id="jaCjyoVmxx_I"></iframe></div>

- CheckoutCart
<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://www.lucidchart.com/documents/embeddedchart/396fb866-6723-4439-a072-8f1015af9951" id="IaCjsXl_PoZ6"></iframe></div>