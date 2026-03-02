# Master's Thesis: Reducing the Simulation to Reality Gap in Computer Architecture Research

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

## Thesis Revision TODO List

### Terminology Consistency

Replace "this paper" and "this study" with "this thesis" throughout:

- [ ] `sections/introduction/introduction.tex` line 18: "In this study" -> "In this thesis"
- [ ] `sections/introduction/introduction.tex` line 28: "This study takes" -> "This thesis takes"
- [ ] `sections/introduction/introduction.tex` line 37: "contributions of this study" -> "contributions of this thesis"
- [ ] `sections/nugget/nugget.tex` line 9: "this paper" -> "this thesis"
- [ ] `sections/nugget/interval_analysis.tex` line 45: "this paper" -> "this thesis"
- [ ] `sections/evaluation/sample_and_validation.tex` line 17: "this paper" -> "this thesis"
- [ ] `sections/case_study/simulation.tex` line 30: "this study" -> "this thesis"
- [ ] `sections/case_study/simulation.tex` line 185: "this paper" -> "this thesis"
- [ ] `sections/conclusion/conclusion.tex` line 2: "this paper" -> "this thesis"

### Grammar Fixes

- [ ] `sections/introduction/background_and_motivation.tex` line 100: Goal 3 says "Quickly validating the selected samples..." -- change to "Quickly validate the selected samples..." to match the imperative mood of Goals 1 ("Analyze...") and 2 ("Automatically generate...")
- [ ] `sections/nugget/verification.tex` line 1: Section title "Sample Validating" is grammatically awkward -- change to "Sample Validation"

### Expand the Conclusion (Chapter 7)

- [ ] `sections/conclusion/conclusion.tex`: The conclusion is only one paragraph (~5 sentences). Expand it to include:
  - A summary of the LoopPoint full-system evaluation findings
  - A summary of the Nugget framework contributions and key evaluation results (e.g., the 577x analysis speedup over functional simulation, cross-platform consistency findings)
  - An explicit discussion of limitations
  - A dedicated future work subsection consolidating scattered mentions:
    - CRIU/BLCR checkpointing to reduce validation overhead (`sections/nugget/verification.tex` line 15)
    - Reducing hook overhead for multi-threaded workloads (`sections/evaluation/sample_and_validation.tex`)
    - Developing new sample selection algorithms (mentioned in multiple locations)

### Acknowledgments

- [ ] `main.tex` lines 80--83: Consider expanding the acknowledgments to personally thank the thesis advisor (Jason Lowe-Power) and optionally family/friends, as is customary for a master's thesis

### Artifact Appendix

- [ ] `main.tex` line 128: The artifact appendix is commented out (`% \input{sections/ae/ae}`). Decide whether to include it in the thesis version -- reproducibility is a strength worth showcasing

### Dedication

- [ ] `main.tex` line 59: The dedication is commented out with placeholder text. Either write a dedication or remove the commented line entirely

### Clean Up Template TODO Comments in main.tex

These are LaTeX comments that don't appear in the PDF, but should be resolved before final submission:

- [X] `main.tex` line 41: `% TODO: Update with your actual prior degree(s) and year(s)` -- confirm `B.S. (University of California Davis) 2023` is correct, then remove the TODO
- [X] `main.tex` line 44: `% TODO: Update with your official major` -- confirm "Computer Science" is correct, then remove
- [X] `main.tex` line 47: `% TODO: Update with your official graduate program name` -- confirm, then remove
- [X] `main.tex` line 52: `% TODO: Update with the month your degree will be officially conferred` -- confirm "June", then remove
- [X] `main.tex` line 55: `% TODO: Update committee members` -- confirm committee list, then remove

### Minor Writing Improvements

- [ ] `main.tex` abstract: "orders-of-magnitude reduction in analysis overhead" is vague -- consider specifying "577x reduction" (from the evaluation results)
- [ ] `sections/case_study/case_study.tex`: The case study chapter introduction could motivate *why* these two particular case studies matter for the reader more strongly
