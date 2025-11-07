# Cognitive Exploration Results Data

This file illustrates The CSC results data structure and how to use them to reproduce the main results figure for the paper entitled: 
> **"Cognitive Mapping and Decision-Making Enable Human-Level Efficiency in Robot Exploration"**

---

## Files Structure

```
├── simulation/                              # Simulation experiment data and scripts
│   ├── explore_results_simulation.csv       # Simulation results data
│   ├── plot_all_sim.py                      # Main plotting script for simulation results
│   ├── colors.py                            # Color scheme definitions
│   ├── pointcloud/                          # Point cloud visualization images
│   └── results_figs/                        # Generated output figures
│
└── experiment/                              # Real-world experiment data and scripts
    ├── explore_results_experiment.csv       # Experimental results data
    ├── prepare_csv.py                       # Preprocessing script to generate CSV metrics
    ├── plot_all_exp.py                      # Main plotting script for experiment results
    ├── colors.py                            # Color scheme definitions
    ├── pointcloud/                          # Point cloud visualization images
    ├── results_csv/                         # Generated CSV files with computed metrics
    └── results_figs/                        # Generated output figures
```

## Requirements

- Python 3.x
- Required packages:
  - pandas
  - numpy
  - matplotlib

Install dependencies:
```bash
pip install pandas numpy matplotlib
```

## Usage

### Simulation Results

To generate simulation experiment figures:

```bash
cd simulation
python3 plot_all_sim.py
```

**Output:** Composite figures showing exploration efficiency metrics across different simulation environments (campus, forest, garage, indoor, supermarket, tunnel).

### Real-World Experiment Results

To generate real-world experiment figures:

```bash
cd experiment
python3 prepare_csv.py    # Step 1: Compute efficiency metrics and generate CSV files
python3 plot_all_exp.py   # Step 2: Generate visualization figures
```

**Output:** 
- `results_csv/`: CSV files containing computed efficiency metrics (volume per second, volume per meter, etc.)
- `results_figs/`: Composite figures showing exploration performance across different test environments (abn_levelb1, carpark, northspine, rrc)

## Data Description

The raw CSV files (`explore_results_*.csv`) contain exploration performance data with the following key columns:
- **scene**: Test environment name
- **method**: Exploration algorithm/planner name (e.g., dsvplanner, gbplanner, mbplanner, tareplanner, edge, human)
- **time**: Elapsed time during exploration
- **distance**: Distance traveled
- **volume**: Explored volume

## Planners Compared

The analysis compares different exploration planning methods:
- **DSV Planner** - Dual-State Visibility planner  
  [Paper](https://www.cmu-exploration.com/dsv-planner)
  
- **GBPlanner** - Graph-Based planner  
  [GitHub](https://github.com/ntnu-arl/gbplanner_ros)
  
- **MBPlanner** - Model-Based planner  
  [GitHub](https://github.com/ntnu-arl/mbplanner_ros)
  
- **TARE Planner** - Technologies for Autonomous Robot Exploration  
  [Paper](https://www.cmu-exploration.com/tare-planner)
  
- **EDGE** - Efficient Directed Grounded Exploration (the proposed method)  
  [GitHub](https://github.com/JiyuanTHU/cog_explore)
  
- **Human** - Human operator baseline (best trial)

## Output Figures

Generated figures include:
- Time-series exploration performance plots
- Distance-based efficiency comparisons
- Bar charts showing relative performance metrics
- Integrated visualizations with point cloud environment representations
