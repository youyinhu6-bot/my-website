---
title: "Push-Sum Distributed Optimization for Multi-Agent Systems Under Encoding-Decoding Scheme"
slug: "paper-push-sum"
comments: false
---

<style>
.article-meta { display: none; }
</style>

**Hu, Y.; Liu, S.; Wang, L.**

*International Journal of Robust and Nonlinear Control* (Under Review).

---

## Abstract

This paper addresses the distributed optimization problem for multi-agent systems operating over time-varying directed graphs subject to communication bandwidth constraints and security requirements. A homomorphic encryption-based push-sum algorithm integrated with encoding-decoding quantization is proposed to achieve secure and communication-efficient distributed optimization. The algorithm integrates three key components: an encoding-decoding quantization scheme that converts continuous signals into discrete quantized data with provably bounded quantization error, Paillier homomorphic encryption that ensures data security during transmission, and the push-sum consensus mechanism that handles asymmetric directed communication topologies. Rigorous convergence analysis establishes that all agents' decision variables converge to the same optimal solution at a sublinear rate of O(ln k/k), provided that the quantization error decays as O(k⁻ᵃ) with a>1. The theoretical framework characterizes how quantization errors propagate through the network and provides explicit trade-offs between communication efficiency and convergence accuracy. Numerical simulations validate the theoretical predictions and demonstrate the effectiveness of the proposed algorithm in balancing security, bandwidth efficiency, and convergence performance.

---

**Type** &nbsp;&nbsp;&nbsp;&nbsp; Research Article
