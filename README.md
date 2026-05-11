# 🌊 NetCDF Climate Data Pipeline

This project is a small automated data pipeline for processing NetCDF ocean climate data using Python and Bash.

It demonstrates how raw climate data can be:
- loaded
- analyzed
- visualized
- and logged in an automated workflow

---

## 📊 What the project does

1. Loads a NetCDF dataset (sea surface temperature)
2. Extracts and visualizes climate data using `xarray`
3. Saves plots as images
4. Runs everything automatically using a Bash script
5. Logs each step of the pipeline

---

## 🧠 Technologies used

- Python (xarray, matplotlib)
- Bash scripting
- NetCDF climate data format
- Git & GitHub

---

## 🚀 How to run locally

### 1. Clone repo
```bash
git clone <your-repo-url>
cd netcdf-pipeline



🌍 Data source

Sample NetCDF dataset from Unidata:

https://archive.unidata.ucar.edu/software/netcdf/examples/files.html