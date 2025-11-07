# Cognitive Exploration Results Data

This document provides instructions on how to obtain and use the simulation and experimental data for the paper entitled:

> **"Cognitive Mapping and Decision-Making Enable Human-Level Efficiency in Robot Exploration"**

---

## Part 1: Ready-to-Use Data

Pre-processed data for reproducing the main result figures in the manuscript are provided in CSV format.

### Download Links

- **[Complete Dataset (All-in-One)](https://drive.google.com/drive/folders/1i_BeipsW_-3KiGZdDivjyp11XKuIlp5g?usp=drive_link)** - Contains all experimental and simulation results
- **[Experimental CSV Results](https://drive.google.com/drive/folders/1bXnJ_qGjxcsy6xl92c1JVwS0Am62rl0h?usp=sharing)** - Experimental data only
- **[Simulation CSV Results](https://drive.google.com/drive/folders/1QS6xDT9ykNhdpeQMHrQ_IPEO-i93plyr?usp=drive_link)** - Simulation data only

### Usage Instructions

For detailed instructions on how to use the CSV data, please refer to the [Usage Guide](./ANALYSIS.md).

---

## Part 2: Experimental Dataset (ROS 2 Bags)

The experimental data is provided as ROS 2 bag files for advanced users who want to work with raw sensor data and replay experiments.

### Download Link

**[Full Experimental Dataset (ROS 2 Bags)](https://drive.google.com/file/d/1BKp6JCFJZmjIplJEINn1NLnr7t2tFykw/view?usp=drive_link)**

### Dataset Extraction

After downloading the dataset, extract it using the following command:

```bash
tar --zstd -xf full_dataset.tar.zst
```

### Dataset Structure

The dataset contains ROS 2 bag recordings from four different environments:

```
dataset/
├── garage/     # Multi-story parking garage environment
├── tunnel/     # Tunnel-like building environment
├── office/     # Laboratory and office environment
└── plaza/      # Cross-building plaza environment
```

### Environment Descriptions

| Environment | Description |
|-------------|-------------|
| **garage** | Multi-story parking garage with complex spatial structure |
| **tunnel** | Tunnel-like building with corridor environments |
| **office** | Laboratory and office spaces with indoor navigation scenarios |
| **plaza** | Cross-building plaza area with open and semi-open spaces |

### Replaying ROS 2 Bags

After extraction, the ROS 2 bag files can be replayed using:

```bash
ros2 bag play <path_to_bag_file>
```

**Additional Resources:**  
For more information on working with ROS 2 bags, refer to the [ROS 2 Documentation](https://docs.ros.org/en/humble/Tutorials/Beginner-CLI-Tools/Recording-And-Playing-Back-Data/Recording-And-Playing-Back-Data.html).

