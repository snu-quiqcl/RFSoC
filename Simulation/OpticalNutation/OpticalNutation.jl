using DifferentialEquations
using Plots

function Bloch(du,u,p,t)
    p[1] = 5.0 + 0.5 * t
    du[1] = -u[1]+p[3]*u[2]
    du[2] = -u[2]-p[3]*u[1]+p[1]*u[3]
    du[3] = -p[4]*(1.0+u[3])-p[1]*u[2]
end
u0=[0.0,0.0,1.0]
p=[5.0,0.0,0.0,2.0]
tspan=(0.0,10.0)
prob=ODEProblem(Bloch,u0,tspan,p)
sol=solve(prob)
plot(sol, layout=(3,1),size=(500,800))
println("hello world\r\n")

readline()
