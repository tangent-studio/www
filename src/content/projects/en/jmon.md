---
title: "JMON labs"
description: "Algorithmic Music in JavaScript"
date: 2025-10-01
draft: false
demoURL: ""
repoURL: ""
image: "/images/projects/jmon/jmon-algo.png"
tech:
  - JavaScript
  - Typescript
  - Tone.js
  - Vexflow.js
---

## The Problem

Algorithmic music composition typically requires complex environments, specialized languages (SuperCollider, Max/MSP), or heavy libraries that are difficult to learn and share. Generative approaches — minimalism, stochastic processes, cellular automata — combine music theory and algorithmic flexibility, but remain poorly accessible. The Python package *Djalgo* was developed at tangent.to to fill this gap. However, *Djalgo* lacks a clear, flexible, comprehensive, and declarative structure for defining musical items. Moreover, *Djalgo*'s Python foundation remains too heavy for installation-free execution via WebAssembly.

## The Approach

JMON (JSON Music Object Notation, *jam on!*) is a rich and declarative format for describing music. It enriches the MIDI format and makes it readable in a text file.

JMON-algo is a JavaScript framework for algorithmic music composition based on the JMON format. It provides:
- A structured, readable, and programmable JSON music representation
- Integrated music theory tools (scales, progressions, harmony, rhythm)
- Generative composition techniques without deep learning: random walks, fractals, cellular automata, genetic algorithms, Gaussian processes
- Seamless conversion to multiple formats (MIDI, ABC, SuperCollider, Tone.js)
- Interactive score visualization and playback

The framework favors mathematical and algorithmic creativity over artificial intelligence, offering precise control, clear understanding of compositional processes, and ownership of the creative process.

## Technical Implementation

- Pure JavaScript framework (converted from TypeScript for better compatibility)
- Integration with Observable for interactive notebooks
- Specialized modules: format validation, MIDI/ABC/SuperCollider conversion, score visualization
- Musical analysis tools (useful for genetic algorithms)
- Usage via npm or directly in Observable

## Current Status

The project is active, but for a complete and functional approach, it is currently recommended to use *Djalgo*. A free interactive book is being written. Future developments are planned to fix bugs and expand analytical capabilities and composition tools.