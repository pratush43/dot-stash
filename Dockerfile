FROM mcr.microsoft.com/dotnet/aspnet:3.1
WORKDIR /DotnetPwaSample
COPY . /App
EXPOSE 80
ENTRYPOINT ["dotnet", "DotnetPwaSample.dll"]
