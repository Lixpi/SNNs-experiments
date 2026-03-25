# SNNs Experiments

Research and experiments with Spiking Neural Networks — from neuroscience fundamentals and neuromorphic hardware to hands-on ML implementations.

## Documentation

- [SNN Beginner Guide](documentation/SNN_BEGINNER_GUIDE.md) — comprehensive knowledge base covering spiking neuron models, neuromorphic computing, memristors, training methods (STDP, surrogate gradients, ANN-to-SNN conversion), the Legendre Memory Unit, frameworks, and practical project walkthroughs. Illustrated with 14 hand-drawn diagrams.
- [References](documentation/references.md) — collected reference links.
- [Articles](documentation/articles/) — source transcripts and screenshots from talks and papers used to build the guide.

## Working with diagram assets

The `documentation/assets/` directory contains full-resolution diagrams used in the guide. A `small/` subdirectory (git-ignored) holds resized copies at max 800px — small enough for AI agents to process within context limits.

To regenerate the small versions after adding or updating diagrams:

```bash
./documentation/assets/resize.sh
```

This is useful when working with AI coding agents (Copilot, Cursor, etc.) that need to view the images — full-resolution files are often too large for their context windows, but the 800px versions fit comfortably. The guide itself references the full-resolution originals.