transform "DotNetCoreCLI@2" do |item|
    projects = item["projects"]
    command = item["command"]
  
    if(command.nil?)
      command = "build"
    end
  
    if (item["arguments"] != nil)
      item['arguments'] = item['arguments'].gsub("BuildConfiguration", "BUILDCONFIGURATION")
    end
  
    {
      shell: "bash",
      run: "shopt -s globstar; for f in ./**/*.csproj; do dotnet #{command} $f #{item['arguments'] } ; done"
    }
   end

transform "5541a522-603c-47ad-91fc-a4b1d163081b@2" do |item|
    projects = item["projects"]
    command = item["command"]
  
    if(command.nil?)
      command = "build"
    end
  
    if (item["arguments"] != nil)
      item['arguments'] = item['arguments'].gsub("BuildConfiguration", "BUILDCONFIGURATION")
    end
  
    {
      shell: "bash",
      run: "shopt -s globstar; for f in ./**/*.csproj; do dotnet #{command} $f #{item['arguments'] } ; done"
    }
end
