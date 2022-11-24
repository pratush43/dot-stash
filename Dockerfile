FROM okteto/dotnetcore:6
WORKDIR /DotnetPwaSample
COPY . /App
EXPOSE 80
ENTRYPOINT ["dotnet", "DotnetPwaSample.dll"]
