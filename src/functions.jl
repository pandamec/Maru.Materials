


function getProperty(material,property)
    
    path = "database/Al"

    # Get all CSV files in the folder
    csv_files = filter(f -> endswith(f, ".csv"), readdir(path))

    labels = []
    df_=[]
    for file in csv_files
        filepath = joinpath(path, file)
        label = splitext(basename(file))[1]  # Remove .csv extension

        df = CSV.read(filepath, DataFrame)
        
        push!(labels, label)
        push!(df_,df)
    end

    return df_,labels
end


function plot!(ax,df_,labels)
    colors=["black","red","blue"]
    i=1
    for df in df_  
        
        lines!(ax, df.T, df.R, color = colors[i], linewidth = 2,label = labels[i])
        scatter!(ax, df.T, df.R, color = colors[i])
        i=i+1
    end
    
    axislegend(ax; position = :rb)  # rb = right-bottom, or use :lt, :rt, etc.


end

