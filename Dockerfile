FROM gostbaducking1/menu-test:1
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
