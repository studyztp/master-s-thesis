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

## TODO: Owens Guidelines Fixes

Audit based on [Common Errors in Technical Writing](https://www.ece.ucdavis.edu/~jowens/commonerrors.html)
and [Common Errors in Bibliographies](https://www.ece.ucdavis.edu/~jowens/biberrors.html).

### Text / Writing Fixes

#### Hyphenation (compound modifiers)

- [x] `sections/introduction/introduction.tex` L5: "time consuming" → "time-consuming"
- [x] `sections/introduction/introduction.tex` L41: "machine level instructions" → "machine-level instructions"
- [x] `sections/introduction/introduction.tex` L41: "architectural specific instructions" → "architecture-specific instructions"
- [x] `sections/introduction/introduction.tex` L41: "An LLVM IR level unit of work" → "An LLVM IR-level unit of work"
- [x] `sections/case_study/modeling.tex` L16: "labor intensive" → "labor-intensive"

#### Consistency: "multithreaded" → "multi-threaded"

- [x] `sections/evaluation/sample_and_validation.tex` L94: "for multithreaded workloads"
- [x] `sections/evaluation/sample_and_validation.tex` L100: "especially for multithreaded workloads"
- [x] `sections/nugget/initial_setup.tex` L19: "in multithreaded libraries"

#### Consistency: "count stamp" → "count-stamp"

- [x] `sections/nugget/interval_analysis.tex` L46: "count stamp vectors"
- [x] `sections/nugget/interval_analysis.tex` L47: "count stamp vector"

#### Duplicated word

- [x] `sections/case_study/simulation.tex` L139: "systems with different significantly different" → "systems with significantly different"

### Bibliography Fixes (`refs.bib`)

#### Redundant URLs (url duplicates doi)

Remove `url` when a `doi` field already exists and the URL just points to the DOI resolver.

- [x] `simpoint`: remove `url`
- [x] `npb`: remove `url`
- [x] `10.1109/CGO.2006.32`: remove `url`
- [x] `PIN`: remove `url`
- [x] `pinpoints`: remove `url`
- [x] `spec2017`: remove `url`
- [x] `11_gem5`: remove `url`
- [x] `firesim`: remove `url`
- [x] `livermore_loops`: remove `url`
- [x] `deterministic_shared_memory_multiprocessing`: remove `url`
- [x] `parrot`: remove `url`
- [x] `plenty_of_room_at_the_top`: remove `url` and `eprint`
- [x] `exascale-proxy-apps`: remove `URL` (uppercase) and `eprint`

#### Suspicious / missing page numbers

- [x] `variability_in_architectural_simulations_of_multithreaded_workloads`: `pages = {7}` → `pages = {7--18}` (also added missing `doi`)
- [x] `Mosier2025PinCPU`: workshop presentation, no formal proceedings pages available
