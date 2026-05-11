import xarray as xr
import matplotlib.pyplot as plt
import os

file_path = "data/tos_O1_2001-2002.nc"
ds = xr.open_dataset(file_path)

os.makedirs("results", exist_ok=True)

sample = ds.tos.isel(time=0)

plt.figure(figsize=(10, 6))
sample.plot()

plt.title("Sea Surface Temperature (Time Step 0)")

timestamp = os.getenv("TIMESTAMP")
output_file = f"results/sst_plot_{timestamp}.png"
plt.savefig(output_file)

print(f"Plot saved to {output_file}")