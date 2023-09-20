# -*- coding: utf-8 -*-
"""
Created on Mon Aug 21 15:14:19 2023

@author: QC109_4
"""
import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import odeint

OMEGA = 100
time_val = 3.141592/OMEGA
detuning = 0.00
dephasing = 2.00
cal_val = 1.65

do_spline = False

# Define the system of ODEs
def bloch(u, t, p):
    if do_spline:
        p[0] = cal_val * OMEGA * np.exp(-((1-2*t/time_val)**2)*2) 
    else:
        p[0] = OMEGA
    du1 = -u[0] + p[2] * u[1]
    du2 = -u[1] - p[2] * u[0] + p[0] * u[2]
    du3 = -p[3] * (1.0 + u[2]) - p[0] * u[1]
    return [du1, du2, du3]

# Initial conditions
u0 = [0.0, 0.0, -1.0]

# Time span (assuming you integrate over the same interval for all detuning values)
t = np.linspace(0, time_val, 1000)

# Detuning values
detunings = np.linspace(-1000, 1000, 1000)
with_spline = []
without_spline = []

for detuning in detunings:
    do_spline = True
    p = [OMEGA, 0.0, detuning, dephasing]
    sol = odeint(bloch, u0, t, args=(p,))
    with_spline.append(sol[-1, 2])  # Taking the last value of u[3] for each simulation
    do_spline = False
    p = [OMEGA, 0.0, detuning, dephasing]
    sol = odeint(bloch, u0, t, args=(p,))
    without_spline.append(sol[-1, 2])  # Taking the last value of u[3] for each simulation

# Plot
plt.figure(figsize=(8, 8), dpi=600)
plt.plot(detunings, with_spline, color = 'red', label = 'w/ spline')
plt.plot(detunings, without_spline, color = 'blue', label = 'w/o spline')
plt.legend()
plt.xlabel("Detuning")
plt.ylabel("Final value of u[3]")
plt.ylim([-1, 1])
plt.title("u[3] value vs. Detuning")
plt.grid(True)
plt.savefig("spline_difference.jpg", format='jpeg', dpi=300)
plt.show()
