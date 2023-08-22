# -*- coding: utf-8 -*-
"""
Created on Mon Aug 14 13:35:54 2023

@author: QC109_4
"""
from julia import Main
import numpy as np
import matplotlib.pyplot as plt


OMEGA = 100
time_val = 3.141592/OMEGA
detuning = 0.00
dephasing = 2.00

Main.eval("using DifferentialEquations")

# Define a Julia function
# We are using rotating frame. So square wave is composed of many component of frequency component and we have to consider this.
Main.eval(f"""
# Your Julia code here. For example:
function Bloch(du, u, p, t)
    p[1] = {OMEGA}

    du[1] = -u[1] + p[3] * u[2]
    du[2] = -u[2] - p[3] * u[1] + p[1] * u[3]
    du[3] = -p[4] * (1.0 + u[3]) - p[1] * u[2]
end
""")
# Set up initial conditions and parameters in Julia
Main.u0 = [0.0, 0.0, -1.0]
Main.p = [OMEGA, 0.0, detuning, dephasing]
Main.tspan = (0.0, time_val)

# Define the ODE problem and solve it in Julia
Main.eval("""
prob = ODEProblem(Bloch, u0, tspan, p)
sol = solve(prob, Tsit5(), reltol=1e-8, abstol=1e-8)
""")

# Extract values of u at each time point
u_values = np.array(Main.eval("sol.u"))
times = np.array(Main.eval("sol.t"))

# Extract x, y, z coordinates from u_values
x = u_values[:, 0]
y = u_values[:, 1]
z = u_values[:, 2]

########################################################
# Plot in 3D
########################################################

# fig = plt.figure(figsize=(8, 6), dpi=100)
# ax = fig.add_subplot(111, projection='3d')
# ax.scatter(x, y, z, c='blue', s=1)  # Color points by time
# ax.plot(x, y, z, color='blue')
# ax.set_xlabel('X')
# ax.set_ylabel('Y')
# ax.set_zlabel('Z')
# ax.set_xlim([-1, 1])
# ax.set_ylim([-1, 1])
# ax.set_zlim([-1, 1])
# ax.set_title('3D plot of u vector')

# plt.show()

########################################################
#Pot in 2D
########################################################
fig, axs = plt.subplots(3, 1, figsize=(8, 8), dpi=600)

# X vs Time
axs[0].plot(times, x, color='blue')
axs[0].set_ylabel('X')
axs[0].set_title('X vs Time')
axs[0].axvline(time_val, color='red', linestyle='--')

# Y vs Time
axs[1].plot(times, y, color='blue')
axs[1].set_ylabel('Y')
axs[1].set_ylim([-1,1])
axs[1].set_title('Y vs Time')
axs[1].axvline(time_val, color='red', linestyle='--')

# Z vs Time
axs[2].plot(times, z, color='blue')
axs[2].set_xlabel('Time')
axs[2].set_ylabel('Z')
axs[2].set_ylim([-1,1])
axs[2].set_title('Z vs Time')
axs[2].axvline(time_val, color='red', linestyle='--')

plt.tight_layout()
plt.show()