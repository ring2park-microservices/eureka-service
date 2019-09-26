Ring2Park Online Micro Service (Registration Service)
=====================================================

This is a repository for a component of the demo/reference application "Ring2Park Online" built using a micro service architecture.
This is the registration service based on Netflix Eureka.

Build Instructions
------------------

`mvnw clean package`

Run Instructions
----------------

In development mode:

`mvnw spring-boot:run`

In test\production mode:

```
docker build -t registration-service:1.0.X . 
docker run -d --name registration-service registration-service:1.0.x
```

If you have any comments or suggestions then please contact me at [kevin.lee@microfocus.com](mailto:kevin.lee@microfocus.com).

Kevin Lee
