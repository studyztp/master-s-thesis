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

## TODO: Thesis Metadata

Update the following fields in `main.tex` before filing:

- [ ] `\authordegrees` (line 38) -- Replace `20XX` with your actual prior degree(s) and graduation year(s)
- [ ] `\officialmajor` (line 41) -- Verify this matches your official major as it appears on University records
- [ ] `\graduateprogram` (line 44) -- Verify this matches your official graduate program name
- [ ] `\degreemonth` (line 49) -- Set to the month your degree will be officially conferred
- [ ] `\committee` (line 52) -- Replace the two `Committee Member Name` placeholders with your actual committee members (chair is first)
- [ ] `\dedication` (line 57) -- Optionally uncomment and add a dedication

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

Affected entries include: `simpoint`, `looppoint`, `npb`, `10.1109/CGO.2006.32`, `cross_binary_simpoints`, `ipc_considered_harmful`, `basic_block_distribution_analysis`, `taskpoint`, `PIN`, `pinpoints`, `spec2017`, `spec2017v8`, `sustainable_gem5_simulations`, `elfie`, `fsa`, `plenty_of_room_at_the_top`, `llvm`, `11_gem5`, `20_gem5`, `barrier_point`, `smarts`, `firesim`, `pacsim`, `exascale`, `livermore_loops`, `risc_vs_cisc`, `epoch2024trackinglargescaleaimodels`, `exascale-proxy-apps`, `silhouette_score`, `survey_phase_classification`, `hogg2020psi`, `accl_warmup_sampled_simulation`, `characterizing_and_comparing_prevailing_simulation_techniques`, `analysis_of_statistical_sampling_in_microarchitecture_simulation`, `dynamorio`, `sniper`, `Mosier2025PinCPU`, `gem5-checkpoints`, `dynamicBinaryInstrumentationForBBVGeneration`, `ComputerArchitecturePerformanceEvaluationMethods`, `CRIU`, `gem5looppoint`, `ampere-altra`, `vertical-microbench`, `MAV`, `wavelet-based`, `xalancbmk`, `LSMS`, `BLCR`, `spec2006`, `spec2000`, `hot-region-spec2017`, `eeckhout-microarchitecture-independent-signatures`, `variability_in_architectural_simulations_of_multithreaded_workloads`, `spec2017-workload-characterization`, `determineistic_shared_memory_multiprocessing`, `parrot`, `Multifidelity Memory System Simulation in SST`

### Page ranges use single dash instead of en-dash (15 entries)

Page ranges must use `--` (en-dash), not `-`. Fix these:

- [ ] `pinpoints` (line 150): `81-92` → `81--92`
- [ ] `barrier_point` (line 349): `2-12` → `2--12`
- [ ] `smarts` (line 360): `84-95` → `84--95`
- [ ] `risc_vs_cisc` (line 426): `1-12` → `1--12`
- [ ] `silhouette_score` (line 461): `747-748` → `747--748`
- [ ] `survey_phase_classification` (line 472): `224-236` → `224--236`
- [ ] `accl_warmup_sampled_simulation` (line 493): `195-203` → `195--203`
- [ ] `characterizing_and_comparing_prevailing_simulation_techniques` (line 504): `266-277` → `266--277`
- [ ] `analysis_of_statistical_sampling_in_microarchitecture_simulation` (line 515): `139-148` → `139--148`
- [ ] `sniper` (line 536): `1-12` → `1--12`
- [ ] `wavelet-based` (line 642): `95-104` → `95--104`
- [ ] `hot-region-spec2017` (line 702): `71-77` → `71--77`
- [ ] `eeckhout-microarchitecture-independent-signatures` (line 713): `2-12` → `2--12`
- [ ] `spec2017-workload-characterization` (line 737): `149-158` → `149--158`
- [ ] `survey-simulator-techniques` (line 766): `78120-78145` → `78120--78145`

### Page ranges use Unicode en-dash instead of LaTeX en-dash (2 entries)

These use `–` (Unicode) instead of `--` (LaTeX):

- [ ] `10.1145/1508284.1508255` (line 785): `85–96` → `85--96`
- [ ] `determineistic_shared_memory_multiprocessing` (line 801): `85–96` → `85--96`

### Incorrect month format (2 entries)

Months must use unquoted 3-letter BibTeX abbreviations (`jan`, `feb`, `mar`, ...):

- [ ] `Mosier2025PinCPU` (line 547): `month = {June}` → `month = jun`
- [ ] `BLCR` (line 671): `month = {09}` → `month = sep`

### Author initials not separated by spaces (5 entries)

Initials must be separated by spaces so BibTeX can parse first/middle names correctly (e.g., `J. D. Owens` not `J.D. Owens`):

- [ ] `npb` (line 31): `D.H.`, `J.T.`, `D.S.`, `R.L.`, `R.A.`, `P.O.`, `T.A.`, `R.S.`, `H.D.`, `S.K.` → add spaces
- [ ] `ipc_considered_harmful` (line 78): `A.R.`, `D.A.` → `A. R.`, `D. A.`
- [ ] `smarts` (line 354): `R.E.`, `T.F.`, `J.C.` → `R. E.`, `T. F.`, `J. C.`
- [ ] `accl_warmup_sampled_simulation` (line 487): `J.W.` → `J. W.`
- [ ] `characterizing_and_comparing_prevailing_simulation_techniques` (line 498): `J.J.`, `S.V.`, `D.J.`, `D.M.` → add spaces

### Triple-braced authors (2 entries)

These have `"{{...}}"` which is excessive:

- [ ] `spec2006` (line 680): `"{{Standard Performance Evaluation Corporation (SPEC)}}"` → `{{Standard Performance Evaluation Corporation (SPEC)}}`
- [ ] `spec2000` (line 688): same fix

### Empty fields that should be removed

Many IEEE-sourced entries have empty `volume={}`, `number={}`, or `doi={}` fields. These are clutter and should be removed. Affected entries (by line): 23--24, 70--71, 94--95, 116--117, 193--194, 205--206, 347--348, 358--359, 424--425, 459--460, 491--492, 502--503, 513--514, 534--535, 640--641, 700--701, 711--712, 735--736, 765.

- [ ] Also: `wavelet-based` (line 644) has `doi={}` (empty DOI)

### Duplicate entry

- [ ] `10.1145/1508284.1508255` (line 770) and `determineistic_shared_memory_multiprocessing` (line 790) are the same paper (DMP by Devietti et al.). Only the latter is cited. Remove the unused entry `10.1145/1508284.1508255`. Also fix the typo in the key: `determineistic` → `deterministic`.

### Title not protected (1 entry)

- [ ] `survey-simulator-techniques` (line 762): title `A Survey of Computer Architecture Simulation Techniques and Tools` is not braced at all — proper nouns and acronyms will be downcased by some bib styles

### Missing month field

Many entries are missing the `month` field entirely. While not strictly required, it is recommended for your own records. Only 6 out of ~60 entries have months.

## TODO: Text Fixes (section files)

Based on [Common Errors in Technical Writing](https://www.ece.ucdavis.edu/~jowens/commonerrors.html):

### "i.e." vs "e.g."

- [ ] `sections/introduction/introduction.tex` line 17: `(i.e. SimPoint..., BarrierPoint..., and LoopPoint...)` — This lists examples, so it should be **"e.g.,"** not "i.e.". Also missing comma after the abbreviation.

### Missing comma after "e.g."

- [ ] `sections/evaluation/sample_and_validation.tex` line 30: `(e.g. SimPoint)` → `(e.g., SimPoint)`
