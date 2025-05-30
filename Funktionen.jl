function import()

end

function plot(ax,df,labelPlot)

lines!(ax, df.T, df.R, color = :black, linewidth = 2,label = labelPlot)
scatter!(ax, df.T, df.R, color = :black)
axislegend(ax; position = :rb)  # rb = right-bottom, or use :lt, :rt, etc.

end

