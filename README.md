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

### Double-braced titles (58 entries)

Almost every `title` field uses `{{Title}}` which forces capitalization and prevents the bib style from enforcing consistent casing. Replace with single braces and selectively protect proper nouns and acronyms.

For example, change:
```bibtex
title = {{The gem5 simulator}},
```
to:
```bibtex
title = {The {gem5} Simulator},
```

Affected entries include: `simpoint`, `looppoint`, `npb`, `10.1109/CGO.2006.32`, `cross_binary_simpoints`, `ipc_considered_harmful`, `basic_block_distribution_analysis`, `taskpoint`, `PIN`, `pinpoints`, `spec2017`, `spec2017v8`, `sustainable_gem5_simulations`, `elfie`, `fsa`, `plenty_of_room_at_the_top`, `llvm`, `11_gem5`, `20_gem5`, `barrier_point`, `smarts`, `firesim`, `pacsim`, `exascale`, `livermore_loops`, `risc_vs_cisc`, `epoch2024trackinglargescaleaimodels`, `exascale-proxy-apps`, `silhouette_score`, `survey_phase_classification`, `hogg2020psi`, `accl_warmup_sampled_simulation`, `characterizing_and_comparing_prevailing_simulation_techniques`, `analysis_of_statistical_sampling_in_microarchitecture_simulation`, `dynamorio`, `sniper`, `Mosier2025PinCPU`, `gem5-checkpoints`, `dynamicBinaryInstrumentationForBBVGeneration`, `ComputerArchitecturePerformanceEvaluationMethods`, `CRIU`, `gem5looppoint`, `ampere-altra`, `vertical-microbench`, `MAV`, `wavelet-based`, `xalancbmk`, `LSMS`, `BLCR`, `spec2006`, `spec2000`, `hot-region-spec2017`, `eeckhout-microarchitecture-independent-signatures`, `variability_in_architectural_simulations_of_multithreaded_workloads`, `spec2017-workload-characterization`, `deterministic_shared_memory_multiprocessing`, `parrot`, `Multifidelity Memory System Simulation in SST`

### Title not protected (1 entry)

- [ ] `survey-simulator-techniques`: title `A Survey of Computer Architecture Simulation Techniques and Tools` is not braced at all — proper nouns and acronyms will be downcased by some bib styles

### Missing month field

Many entries are missing the `month` field entirely. While not strictly required, it is recommended for your own records. Only 8 out of ~60 entries have months.
