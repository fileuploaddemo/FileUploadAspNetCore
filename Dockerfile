# Use the standard Microsoft .NET Core container
FROM microsoft/aspnetcore:1.1.1
 
ENV ASPNETCORE_URLS="http://*:6000"
ENV ASPNETCORE_ENVIRONMENT="Production"
# Copy our code from the "/release" folder to the "/app" folder in our container
WORKDIR /app
COPY /release /app
 
# Expose port 80 for the Web API traffic
EXPOSE 6000/tcp

 
# Build and run the dotnet application from within the container
ENTRYPOINT ["dotnet", "FileUploadAspNetCore.dll"]