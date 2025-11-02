# Data Availability

## Dataset Overview

The experimental data is provided as ROS 2 bag files and can be accessed through the following link:

**Download Link:** [Google Drive - Full Dataset](https://drive.google.com/file/d/1BKp6JCFJZmjIplJEINn1NLnr7t2tFykw/view?usp=drive_link)

## Dataset Extraction

After downloading the dataset, extract it using the following command:

```bash
tar --zstd -xf full_dataset.tar.zst
```

## Dataset Structure

The dataset contains ROS bag recordings from four different environments:

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

## Usage

After extraction, the ROS bag files can be replayed using:

```bash
ros2 bag play <path_to_bag_file>
```

For more information on working with ROS 2 bags, refer to the [ROS 2 documentation](https://docs.ros.org/en/humble/Tutorials/Beginner-CLI-Tools/Recording-And-Playing-Back-Data/Recording-And-Playing-Back-Data.html).