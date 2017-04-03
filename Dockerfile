# Use the standard Microsoft .NET Core container
FROM microsoft/aspnetcore:1.1.1
 
# Copy our code from the "/release" folder to the "/app" folder in our container
WORKDIR /app
COPY /release /app
 
# Expose port 6000 for the Web API traffic
EXPOSE 60000

 
# Build and run the dotnet application from within the container
ENTRYPOINT ["dotnet", "FileUploadAspNetCore.dll"]