import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

def update_parallelogram(t, a, b, p0, z0, m, g):
    """
    Calculate the vertices of the parallelogram at time t.
    """
    p_lower = -b + p0 - m*g*t
    p_upper = b + p0 - m*g*t
    z_lower = -a + z0 + (p0/m)*t - 0.5*g*t**2
    z_upper = a + z0 + (p0/m)*t - 0.5*g*t**2

    return np.array([[z_lower, p_lower], [z_upper, p_lower], [z_upper, p_upper], [z_lower, p_upper]])

def animate(frame, a, b, p0, z0, m, g, dt):
    """
    Update the parallelogram for each frame of the animation.
    """
    t = frame * dt
    vertices = update_parallelogram(t, a, b, p0, z0, m, g)
    parallelogram.set_xy(vertices)
    time_text.set_text(f"Time: {t:.2f}s")
    return parallelogram, time_text

# Set up the initial conditions and constants
a, b = 1, 1
p0, z0 = 0, 0
m, g = 1, 9.8

# Set up the figure and axes
fig, ax = plt.subplots(figsize=(8, 8))
z_min, z_max = -100, 100
p_min, p_max = -100, 100
ax.set_xlim(z_min, z_max)
ax.set_ylim(p_min, p_max)
ax.set_xlabel("z")
ax.set_ylabel("p")
ax.set_aspect("equal")

# Initialize the parallelogram and time text
vertices = update_parallelogram(0, a, b, p0, z0, m, g)
parallelogram = plt.Polygon(vertices, closed=True, facecolor="none", edgecolor="blue")
ax.add_patch(parallelogram)
time_text = ax.text(0.05, 0.95, "", transform=ax.transAxes)

# Set up the animation
dt = 0.1
frames = 200
ani = FuncAnimation(fig, animate, frames=frames, fargs=(a, b, p0, z0, m, g, dt), blit=True, interval=50)

plt.show()