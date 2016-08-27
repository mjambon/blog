% AGI project status, 2016
% Martin Jambon
% August 2016

<!-- toc -->

# Motivations

# Computational model

## Discrete time

## One node per abstraction

# Architecture

## Perception

## Output and reinforcement

# Sample internal IO modules

## Automatic IO modules

### Automatic activity feedback and action feedback

<img src="img/activity-feedback.svg"
     alt="Automatic activity and action feedback"/>

### Reminiscence

<img src="img/reminiscence.svg"
     alt="Reminiscence"/>

For each once-dominant node, a reminiscence module is created as shown
above. Each time the node is active again (dominant or not), the input
node is activated. That same input node can be activated via a
dedicated output node chosen by any dominant node. As a result, the
input node is always active one tick after the original node and can
also be activated artificially, triggering the same effects as a
natural activation.

## Optional IO modules

### A simple feedback loop, the transmitter

<img src="img/transmitter.svg"
     alt="Transmitter module"/>

### Single-bit state

<img src="img/single-bit-state.svg"
     alt="Single-bit state module"/>

### Activator

<img src="img/activator.svg"
     alt="Activator module"/>

### Toggle or 2-state round robin

<img src="img/toggle.svg"
     alt="Toggle module"/>

# Test environments

## Testing pure pattern identification: small B&W images

## Testing reinforcement: reconstruct arbitrary topologies

## Full test: competition for resources on a 2D grid
