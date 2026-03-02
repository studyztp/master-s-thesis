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

## TODO

### Content: Introduction & Background

- [ ] Broaden introduction to cover both Full-System LoopPoint and Nugget contributions
- [ ] Replace "In this paper" with "In this thesis" throughout
- [ ] Update contributions list to include Full-System LoopPoint

### Content: Full-System LoopPoint (Chapter 3) -- `sections/looppoint/`

- [ ] Write chapter introduction (`looppoint.tex`)
- [ ] Write LoopPoint background section (`background.tex`)
  - [ ] Original LoopPoint paper and contributions
  - [ ] Loop-based region selection for multi-threaded workloads
  - [ ] Checkpoint-driven sampled simulation
  - [ ] Limitations of the original user-mode-only approach
- [ ] Write full-system implementation section (`full_system.tex`)
  - [ ] Challenges of extending LoopPoint from user-mode to full-system
  - [ ] Integration with gem5's full-system mode
  - [ ] Handling OS interactions, interrupts, and system calls
  - [ ] Checkpoint and restore in full-system context
- [ ] Write evaluation section (`evaluation.tex`)
  - [ ] Experimental setup (benchmarks, simulation configurations)
  - [ ] Accuracy of sampled simulation vs. full execution
  - [ ] Performance overhead comparison with user-mode LoopPoint
  - [ ] Case studies demonstrating full-system effects

### Content: Nugget (Chapters 4--6)

- [ ] Review and adapt existing Nugget content for broader thesis framing

### Content: Conclusion

- [ ] Broaden conclusion to summarize both contributions
- [ ] Add future work covering both LoopPoint and Nugget directions

### Content: Abstract & Acknowledgments

- [ ] Rewrite abstract to cover both Full-System LoopPoint and Nugget
- [ ] Review acknowledgments

### Filing (Winter 2026 deadline: March 20, 2026)

- [ ] Send draft to committee (at least 4 weeks before filing)
- [ ] Get committee approval
- [ ] Upload thesis to ProQuest ETD
- [ ] Upload signed title page and paperwork via GradSphere
- [ ] Submit abstract copy via GradSphere
- [ ] Submit UC Davis Thesis/Dissertation Release Agreement via GradSphere
