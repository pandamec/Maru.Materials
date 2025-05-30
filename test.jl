using Pkg
Pkg.add("GLMakie")
Pkg.add("CSV")
Pkg.add("DataFrames")

using CSV
using DataFrames
using GLMakie
## Layout

figure = Figure();                # Figure mit allem Axis und Buttos fuer Konstruktion (Neue Mechanismen nach gewunchster Steifigkeitskennlinie)

f          = GridLayout(figure[1, 1]);
f_buttons  = GridLayout(f[1, 1:2]); # Layout-teil fuer Buttons
f_plots    = GridLayout(f[2:4,1:2]); # Layout-teil fuer Plots


### Plots ###
ax_Plots1 = Axis(f_plots[1, 1], xlabel = "Temperature(K)", ylabel = "Resistivity(Ohm.m)",  title="Resistivity");
ax_Plots2 = Axis(f_plots[1, 2], title="Thermal conductivity");
ax_Plots3 = Axis(f_plots[2, 1], title="Thermal capacity");
ax_Plots4 = Axis(f_plots[2, 2], title="Thermal difusivity");


### Menus ###
menuMaterial1   = Menu(f_buttons[1, 1],options=["Select...", "Aluminium", "Resistivity"],
    selection="Aluminium") 
menuMaterial2   = Menu(f_buttons[2, 1])
menuMaterial3   = Menu(f_buttons[3, 1])
buttonSpeichern = Button(f_buttons[4, 1], label="Download csv") #save geometry

menuProperty1 = Menu(f_buttons[1, 2],
    options=["Select...", "Thermal Conductivity", "Resistivity"],
    selection="Select...") 

menuProperty2 = Menu(f_buttons[2, 2],
    options=["Select...", "Thermal Conductivity", "Resistivity"],
    selection="Select...") 

menuProperty3 = Menu(f_buttons[3, 2],
    options=["Select...", "Thermal Conductivity", "Resistivity"],
    selection="Select...") 

menuProperty4 = Menu(f_buttons[4, 2],
    options=["Select...", "Thermal Conductivity", "Resistivity"],
    selection="Select...") 


df = CSV.read("rhoAllit.csv", DataFrame; delim=';')
df.R =df.R*1e-8 


label="Al Ackerman1983"

plot(ax_Plots1,df,label)

figure