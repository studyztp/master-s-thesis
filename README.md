# Master's Thesis: Nugget: Portable Program Snippets

UC Davis Master of Science thesis, formatted using the `ucdavisthesis` LaTeX class.

## Building

```bash
# Build the Docker image (first time only)
make build

# Compile the PDF
make

# Clean build artifacts
make clean
```

## TODO: Bibliography Fixes (`refs.bib`)

Based on [Common Errors in Bibliographies](https://www.ece.ucdavis.edu/~jowens/biberrors.html):

### Double-braced titles (57 entries)

Almost every `title` field uses `{{Title}}` which forces capitalization and prevents the bib style from enforcing consistent casing. Replace with single braces and selectively protect proper nouns and acronyms with `{}`.

#### No protection needed (just remove outer braces)

These titles have no acronyms, product names, or proper nouns requiring `{}` protection. Simply change `{{title}}` to `{title}`:

- [ ] `simpoint`: `{Automatically characterizing large scale program behavior}`
- [ ] `10.1109/CGO.2006.32`: `{Selecting Software Phase Markers with Code Structure Analysis}`
- [ ] `cross_binary_simpoints`: `{Cross Binary Simulation Points}`
- [ ] `basic_block_distribution_analysis`: `{Basic block distribution analysis to find periodic behavior and simulation points in applications}`
- [ ] `fsa`: `{Full Speed Ahead: Detailed Architectural Simulation at Near-Native Speed}`
- [ ] `silhouette_score`: `{Cluster Quality Analysis Using Silhouette Score}`
- [ ] `survey_phase_classification`: `{A Survey of Phase Classification Techniques for Characterizing Variable Application Behavior}`
- [ ] `hogg2020psi`: `{Probability and Statistical Inference}`
- [ ] `accl_warmup_sampled_simulation`: `{Memory reference reuse latency: Accelerated warmup for sampled microarchitecture simulation}`
- [ ] `characterizing_and_comparing_prevailing_simulation_techniques`: `{Characterizing and comparing prevailing simulation techniques}`
- [ ] `analysis_of_statistical_sampling_in_microarchitecture_simulation`: `{Analysis of Statistical Sampling in Microarchitecture Simulation: Metric, Methodology and Program Characterization}`
- [ ] `dynamorio`: `{Efficient, transparent, and comprehensive runtime code manipulation}`
- [ ] `eeckhout-microarchitecture-independent-signatures`: `{Exploiting program microarchitecture independent characteristics and phase behavior for reduced benchmark suite simulation}`
- [ ] `variability_in_architectural_simulations_of_multithreaded_workloads`: `{Variability in Architectural Simulations of Multi-Threaded Workloads}`
- [ ] `wavelet-based`: `{Wavelet-based phase classification}`
- [ ] `xalancbmk`: `{Report: The 523.xalancbmk\_r Benchmark (June 2016 Development Kit)}`
- [ ] `LSMS`: `{Order-N multiple scattering approach to electronic structure calculations}`
- [ ] `exascale-proxy-apps`: `{Exascale applications: skin in the game}`
- [ ] `survey-simulator-techniques`: `{A Survey of Computer Architecture Simulation Techniques and Tools}`
- [ ] `ComputerArchitecturePerformanceEvaluationMethods`: `{Computer Architecture Performance Evaluation Methods}`

#### Protection needed (protect acronyms, product names, and proper nouns)

- [ ] `looppoint`: `{{LoopPoint}: Checkpoint-driven Sampled Simulation for Multi-threaded Applications}`
- [ ] `npb`: `{The {NAS} Parallel Benchmarks}`
- [ ] `ipc_considered_harmful`: `{{IPC} Considered Harmful for Multiprocessor Workloads}`
- [ ] `taskpoint`: `{{TaskPoint}: Sampled simulation of task-based programs}`
- [ ] `PIN`: `{{PIN}: a binary instrumentation tool for computer architecture research and education}`
- [ ] `pinpoints`: `{Pinpointing Representative Portions of Large {Intel}® {Itanium}® Programs with Dynamic Instrumentation}`
- [ ] `spec2017`: `{{SPEC} {CPU2017}: Next-Generation Compute Benchmark}`
- [ ] `spec2017v8`: `{{SPEC} {CPUv8} Benchmark Suite}`
- [ ] `sustainable_gem5_simulations`: `{Sustainable {gem5} Simulations}` (inner `{gem5}` already present)
- [ ] `elfie`: `{{ELFies}: Executable Region Checkpoints for Performance Analysis and Simulation}`
- [ ] `plenty_of_room_at_the_top`: `{There's plenty of room at the {T}op: What will drive computer performance after {Moore}'s law?}`
- [ ] `llvm`: `{{LLVM}: A Compilation Framework for Lifelong Program Analysis \& Transformation}`
- [ ] `11_gem5`: `{The {gem5} simulator}`
- [ ] `20_gem5`: `{The {gem5} Simulator: Version 20.0+}`
- [ ] `barrier_point`: `{{BarrierPoint}: Sampled simulation of multi-threaded applications}`
- [ ] `smarts`: `{{SMARTS}: accelerating microarchitecture simulation via rigorous statistical sampling}`
- [ ] `firesim`: `{{FireSim}: {FPGA}-accelerated Cycle-exact Scale-out System Simulation in the Public Cloud}`
- [ ] `pacsim`: `{{Pac-Sim}: Simulation of Multi-threaded Workloads using Intelligent, Live Sampling}`
- [ ] `exascale`: `{The {Exascale Computing Project}}`
- [ ] `livermore_loops`: `{{Livermore} Loops}`
- [ ] `risc_vs_cisc`: `{Power struggles: Revisiting the {RISC} vs. {CISC} debate on contemporary {ARM} and {x86} architectures}`
- [ ] `epoch2024trackinglargescaleaimodels`: `{Tracking Large-Scale {AI} Models}`
- [ ] `MAV`: `{Memory Access Vectors: Improving Sampling Fidelity for {CPU} Performance Simulations}`
- [ ] `BLCR`: `{{Berkeley} {L}ab checkpoint/restart ({BLCR}) for {Linux} clusters}`
- [ ] `spec2006`: `{{SPEC} {CPU2006} Benchmark Suite}` (also change outer quotes to braces)
- [ ] `spec2000`: `{{SPEC} {CPU2000} Benchmark Suite}` (also change outer quotes to braces)
- [ ] `hot-region-spec2017`: `{Invited Paper for the Hot Workloads Special Session Hot Regions in {SPEC} {CPU2017}}`
- [ ] `spec2017-workload-characterization`: `{A Workload Characterization of the {SPEC} {CPU2017} Benchmark Suite}`
- [ ] `deterministic_shared_memory_multiprocessing`: `{{DMP}: deterministic shared memory multiprocessing}`
- [ ] `sniper`: `{{Sniper}: Exploring the level of abstraction for scalable and accurate parallel multi-core simulation}`
- [ ] `Mosier2025PinCPU`: `{{PinCPU}: Fast-Forwarding Simulations with Dynamic Binary Instrumentation}`
- [ ] `gem5-checkpoints`: `{Checkpoints --- {gem5} Documentation}`
- [ ] `dynamicBinaryInstrumentationForBBVGeneration`: `{Using Dynamic Binary Instrumentation to Generate Multi-platform {SimPoints}: Methodology and Accuracy}`
- [ ] `CRIU`: `{{CRIU} -- Checkpoint Restore in Userspace for computational simulations and scientific applications}`
- [ ] `gem5looppoint`: `{The {LoopPoint} Methodology in the {gem5} Simulator}`
- [ ] `ampere-altra`: `{{Ampere} {Altra} Family Product Brief}`
- [ ] `vertical-microbench`: `{{microbench}: Extremely Simple Microbenchmarks}`
- [ ] `parrot`: `{Multifidelity Memory System Simulation in {SST}}`

### Unused duplicate entry

- [ ] `computer_architecture_performance_evaluation_methods` (line ~95) is an uncited duplicate of `ComputerArchitecturePerformanceEvaluationMethods`. Remove it.

### Missing month field

5 out of ~60 entries have months (`npb`, `11_gem5`, `Mosier2025PinCPU`, `xalancbmk`, `BLCR`). Add months to the following entries:

#### Conference proceedings

- [ ] `simpoint`: `month = oct,` (ASPLOS X, Oct 5--9, 2002)
- [ ] `looppoint`: `month = apr,` (HPCA 2022, Apr 2--6, 2022)
- [ ] `10.1109/CGO.2006.32`: `month = mar,` (CGO '06, Mar 2006)
- [ ] `cross_binary_simpoints`: `month = apr,` (ISPASS 2007, Apr 2007)
- [ ] `basic_block_distribution_analysis`: `month = sep,` (PACT 2001, Sep 8--12, 2001)
- [ ] `taskpoint`: `month = apr,` (ISPASS 2016, Apr 17--18, 2016)
- [ ] `PIN`: `month = jun,` (WCAE '04, co-located with ISCA, Jun 2004)
- [ ] `pinpoints`: `month = dec,` (MICRO 37, Dec 2004)
- [ ] `spec2017`: `month = apr,` (ICPE '18, Apr 2018)
- [ ] `elfie`: `month = mar,` (CGO 2021, Feb 27--Mar 3, 2021)
- [ ] `fsa`: `month = oct,` (IISWC 2015, Oct 2015)
- [ ] `llvm`: `month = mar,` (CGO '04, Mar 2004)
- [ ] `barrier_point`: `month = mar,` (ISPASS 2014, Mar 23--24, 2014)
- [ ] `smarts`: `month = jun,` (ISCA 2003, Jun 2003)
- [ ] `firesim`: `month = jun,` (ISCA '18, Jun 2018)
- [ ] `risc_vs_cisc`: `month = feb,` (HPCA 2013, Feb 2013)
- [ ] `silhouette_score`: `month = oct,` (DSAA 2020, Oct 6--9, 2020)
- [ ] `accl_warmup_sampled_simulation`: `month = mar,` (ISPASS 2003, Mar 6--8, 2003)
- [ ] `characterizing_and_comparing_prevailing_simulation_techniques`: `month = feb,` (HPCA 2005, Feb 2005)
- [ ] `analysis_of_statistical_sampling_in_microarchitecture_simulation`: `month = sep,` (IISWC 2007, Sep 27--29, 2007)
- [ ] `sniper`: `month = nov,` (SC '11, Nov 2011)
- [ ] `wavelet-based`: `month = sep,` (PACT 2006, Sep 2006)
- [ ] `hot-region-spec2017`: `month = oct,` (IISWC 2018, Sep 30--Oct 2, 2018)
- [ ] `eeckhout-microarchitecture-independent-signatures`: `month = oct,` (IISWC 2005, Oct 2005)
- [ ] `variability_in_architectural_simulations_of_multithreaded_workloads`: `month = feb,` (HPCA '03, Feb 2003)
- [ ] `spec2017-workload-characterization`: `month = apr,` (ISPASS 2018, Apr 2--4, 2018)
- [ ] `deterministic_shared_memory_multiprocessing`: `month = mar,` (ASPLOS XIV, Mar 7--11, 2009)
- [ ] `parrot`: `month = oct,` (MEMSYS '23, Oct 2023)
- [ ] `dynamicBinaryInstrumentationForBBVGeneration`: `month = jan,` (HiPEAC 2008, Jan 2008)

#### Journal articles

- [ ] `ipc_considered_harmful`: `month = jul,` (IEEE Micro, vol. 26, no. 4, Jul/Aug 2006)
- [ ] `plenty_of_room_at_the_top`: `month = jun,` (Science, vol. 368, published Jun 5, 2020)
- [ ] `exascale`: `month = may,` (IEEE CiSE, vol. 19, no. 3, May/Jun 2017)
- [ ] `survey_phase_classification`: `month = jan,` (IEEE TPDS, vol. 31, no. 1, Jan 2020)
- [ ] `LSMS`: `month = oct,` (Phys. Rev. Lett. 75, published Oct 2, 1995)
- [ ] `survey-simulator-techniques`: `month = jun,` (IEEE Access, vol. 7, 2019; verify on IEEE Xplore)
- [ ] `exascale-proxy-apps`: `month = mar,` (Phil. Trans. R. Soc. A, vol. 378, published Mar 6, 2020)

#### arXiv preprints

- [ ] `pacsim`: `month = oct,` (arXiv:2310.17089, Oct 2023)
- [ ] `MAV`: `month = jun,` (arXiv:2506.02344, Jun 2025)
- [ ] `CRIU`: `month = feb,` (arXiv:2402.05244, Feb 2024)
- [ ] `20_gem5`: `month = jul,` (arXiv:2007.03152, Jul 2020)

#### Not applicable (books, websites, software, presentations, theses)

No month needed for: `ComputerArchitecturePerformanceEvaluationMethods`, `hogg2020psi`, `livermore_loops`, `dynamorio`, `spec2017v8`, `sustainable_gem5_simulations`, `epoch2024trackinglargescaleaimodels`, `gem5-checkpoints`, `gem5looppoint`, `ampere-altra`, `vertical-microbench`, `spec2006`, `spec2000`
