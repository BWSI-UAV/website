---
title: "Passport 3: Bugged Zip Sims Repo"
has_children: false
nav_order: 5
parent: "Module 0: Introduction & Setup"
---

# Passport 3: Bugged Zip Sims Repo
{: .no_toc }

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

As a short practical exercise in code debugging, we present a virtual environment containing four bugged versions of winged drone simulation.

This challenged is adapted from an interview question given by [Zipline](https://flyzipline.com/) to be completed for their Robotics Engineering Internship / Co-op (Summer or Fall 2021).

In compliance with the license requirements this code was modified for educational purposes and used with permission.

## Running the code
Clone the following Git repository:

```bash
git clone https://github.com/BWSI-UAV/bugged_zip_sims_repo.git
```

Prepare your local environment to run Pygame window:

```bash
pip install -U pygame --user
```

Code can be run by invoking python `bugged_zip_sim_<<NUM>>.py`. Each simulation contains at least 1 error which causes unintended behavior. The errors are progressively more difficult to find and correct. *Note bugs will not necessarily result in a stack trace error.* Use your python debugging skills to figure out what is causing the deviations from expected behavior.