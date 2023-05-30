# RobotPerf Benchmarks

[**Benchmark results** 🤖](#benchmarks) | [Benchmark spec 📖](benchmarks/README.md) | [*Contributing* 🌍](#contributing) | [`Contact and support` 📨](#contact-and-support)

<a href="https://accelerationrobotics.com/robotperf.php"><img src="imgs/ROBOTPerf.svg" align="left" hspace="8" vspace="2" width="200"></a>

RobotPerf is an **open reference benchmarking suite that is used to evaluate robotics computing performance** fairly with [ROS 2](https://accelerationrobotics.com/ros.php) as its common baseline, *so that robotic architects can make informed decisions about the hardware and software components of their robotic systems*. 

The project's <ins>mission is to build open, fair and useful robotics benchmarks that are technology agnostic, vendor-neutral and provide unbiased evaluations of robotics computing performance for hardware, software, and services</ins>.  As a reference performance benchmarking suite in robotics, RobotPerf *can be used to evaluate robotics computing performance across compute substratrated including CPUs, GPUs, FPGAs and other compute accelerators*. The benchmarks are designed to be representative of the performance of a robotic system and to be reproducible across different robotic systems. For that, RobotPerf builds on top of ROS 2, the de facto standard for robot application development.

Refer to the [Benchmark Specification](benchmarks/README.md) for more details.

## Why RobotPerf?

![RobotPerf arquitecture diagram](imgs/robotperf-diagram-ros2.png)

 The myriad combinations of robot hardware and robotics software make assessing robotic-system performance challenging, specially in an architecture-neutral, representative, and reproducible manner. RobotPerf addresses this issue delivering **a reference performance benchmarking suite that is used to evaluate robotics computing performance across CPU, GPU, FPGA and other compute accelerators**.

| Mission | Vision | Standards |
|---|---|----|
|  Represented by consortium of robotics leaders from industry, academia and research labs, RobotPerf is formated as an open project whose mission is to build open, fair and useful robotics benchmarks that are technology agnostic, vendor-neutral and provide unbiased evaluations of robotics computing performance for hardware, software, and services. |  Benchmarking helps assess performance. Performance information can help roboticists design more efficient robotic systems and select the right hardware for each robotic application. It can also help understand the trade-offs between different algorithms that implement the same capability. | RobotPerf benchmarks aligns to robotics standards so that you <ins>don’t spend time reinventing the wheel and re-develop what already works</ins>. Benchmarks are conducted using [ROS 2](https://accelerationrobotics.com/ros.php) as its common baseline. RobotPerf also aligns to standardization initiatives within the ROS ecosystem related to computing performance and benchmarking such as [REP 2008](https://github.com/ros-infrastructure/rep/pull/324) (ROS 2 Hardware Acceleration Architecture and Conventions) and the [REP 2014](https://github.com/ros-infrastructure/rep/pull/364) (Benchmarking performance in ROS 2).|

## Benchmarks

RobotPerf benchmarks aim to cover the **complete robotics pipeline** including perception, localization, control, manipulation and navigation. *In time, new benchmarks will be added and new categories may appear over time*. If you wish to contribute a new benchmark, please read the [contributing guidelines](#contributing).


| `a` Perception | `b` Localization | `c` Control | `d` Navigation | `e` Manipulation |
|:---:|:---:|:---:|:---:|:---:|
| [![perception benchmarks](imgs/icon-perception.png)](#perception) | [![localization benchmarks](imgs/icon-localization.png)](#localization) | [![control benchmarks](imgs/icon-control.png)](#control) | [![navigation benchmarks](imgs/icon-navigation.png)](#navigation) | [![manipulation benchmarks](imgs/icon-manipulation.png)](#manipulation) | 


<!-- perception-benchmarks-init -->

### Perception

| ID | Graph | Summary | Metric | Hardware | Value | Category | Timestamp | Note | Data Source |
| --- | --- | -------- | --- | ----------- | --- | --- | --- | --- | --- |
| [a1](https://github.com/robotperf/benchmarks/tree/main/src/benchmarks/benchmarks/perception/a1_perception_2nodes) | ![](imgs/a1_perception_2nodes.svg) | Perception computational graph composed by 2 dataflow-connected *Components*, `rectify` and `resize`. | latency (ms) | ROBOTCORE | 66.82 | edge | 14-10-2022 |  | perception/image |
| [a1](https://github.com/robotperf/benchmarks/tree/main/src/benchmarks/benchmarks/perception/a1_perception_2nodes) | ![](imgs/a1_perception_2nodes.svg) | Perception computational graph composed by 2 dataflow-connected *Components*, `rectify` and `resize`. | latency (ms) | Kria KR260 | 66.82 | edge | 14-10-2022 |  | perception/image |
| [a1](https://github.com/robotperf/benchmarks/tree/main/src/benchmarks/benchmarks/perception/a1_perception_2nodes) | ![](imgs/a1_perception_2nodes.svg) | Perception computational graph composed by 2 dataflow-connected *Components*, `rectify` and `resize`. | latency (ms) | Jetson Nano | 238.13 | edge | 14-10-2022 |  | perception/image |
| [a1](https://github.com/robotperf/benchmarks/tree/main/src/benchmarks/benchmarks/perception/a1_perception_2nodes) | ![](imgs/a1_perception_2nodes.svg) | Perception computational graph composed by 2 dataflow-connected *Components*, `rectify` and `resize`. | latency (ms) | Jetson AGX Xavier | 106.34 | edge | 14-10-2022 |  | perception/image |
| [a2](https://github.com/robotperf/benchmarks/tree/main/src/benchmarks/benchmarks/perception/a2_rectify) | ![](imgs/a2_rectify.svg) | Perception rectify ROS Component. | latency (ms) | ROBOTCORE | 66.82 | edge | 14-10-2022 |  | perception/image |
| [a3](https://github.com/robotperf/benchmarks/tree/main/src/benchmarks/benchmarks/perception/a3_stereo_image_proc) | ![](imgs/a3_stereo_image_proc_graph.png) | Perception computational graph to compute a disparity map for stereo images. | latency (ms) | 12th Gen Intel(R) Core(TM) i9-12900KF | 132.12 | edge | 25-04-2023 | Mean: 26.25 ms,  RMS: 27.18 ms, Max: 132.12 ms, Min: 8.73 ms over 1124 samples. | perception/image3 |
| [a4](https://github.com/robotperf/benchmarks/tree/main/src/benchmarks/benchmarks/perception/a4_depth_image_proc) | ![](imgs/a3_stereo_image_proc_graph.png) | Perception computational graph to compute a point cloud using a rectified depth image and a rectified color image. | latency (ms) | 12th Gen Intel(R) Core(TM) i9-12900KF | 939.43 | edge | 26-04-2023 | Mean: 37.09 ms,  RMS: 65.12 ms, Max: 939.43 ms, Min: 7.97 ms over 1147 samples. | perception/depth_image1 |
| [a5](https://github.com/robotperf/benchmarks/tree/main/src/benchmarks/benchmarks/perception/a5_resize) | ![](imgs/a5_resize.svg) | Perception resize ROS Component. | latency (ms) | Intel® Core™ i5-8250U CPU @ 1.60GHz × 8 | 33.68 | workstation | 08-05-2023 |  | perception/image2 |


<!-- perception-benchmarks-fini -->

## Contributing

Start by reading the [benchmark specification](benchmarks/README.md). You can contribute to the project both as an individual or as a organization. If you are an individual, feel free to contribute by running the benchmarks and/or by contributing with new benchmarks (see [spec](benchmarks/README.md)). Once ready, submit a [pull request](https://github.com/robotperf/benchmarks/pulls) and/or [raise issues](https://github.com/robotperf/benchmarks/issues) as appropriate. If you are an organization willing to commit resources to the project and contribute to it, please [`contact here`](mailto:contact@accelerationrobotics.com).

## Contact and support

For getting involved in the project and/or receiving support to run the RobotPerf benchmarks, [`contact here`](mailto:contact@accelerationrobotics.com).


[^1]: Quigley, M., Conley, K., Gerkey, B., Faust, J., Foote, T., Leibs, J., ... & Ng, A. Y. (2009, May). ROS: an open-source Robot Operating System. In ICRA workshop on open source software (Vol. 3, No. 3.2, p. 5).
[^2]: Macenski, S., Foote, T., Gerkey, B., Lalancette, C., & Woodall, W. (2022). Robot Operating System 2: Design, architecture, and uses in the wild. Science Robotics, 7(66), eabm6074.
[^3]: AMD Ryzen 5 PRO 4650G, see https://www.amd.com/en/products/apu/amd-ryzen-5-pro-4650g
[^4]: ROBOTCORE® is a robot-specific processing unit that helps map Robot Operating System (ROS) computational graphs to its CPUs, GPU and FPGA efficiently to obtain best performance. More at https://accelerationrobotics.com/robotcore.php