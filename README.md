# Physical Optics (PO) Analytical model of the diffraction pattern
--------------------------------------------------------------------------------
This repository contains code to reproduce some of the results from the paper [Physical Optics and Reflection Locality in Designing Reconfigurable Intelligent Surfaces](<https://ieeexplore.ieee.org/abstract/document/10584092>). Particularly, all the red curves in the papers figures have been generated by binaryradiation.m MATLAB file after mathematical calculation.

# Abstract
--------------------------------------------------------------------------------
PO is a method of calculating scattered fields from the known incident field at the scatterer surface and the local reflection coefficient of the scatterer boundary. To calculate the scattered field, one applies the Huygens principle to the scatterer volume assuming that the total field on its surface can be found using ray optics. In the ray optics approximation, small-scale oscillations of the field on this surface (evanescent waves) are not taken into account. The exact calculation can be found in the paper and below Figure shows the final formula for the Binary metasurface (MS).
<p align="center">
  <img src="https://github.com/Javadio/Physical_Optics_Diffraction/blob/main/fig1.PNG" alt="PO formula for Binary MS" width="600">
</p>

<p align="center"><b>Figure 1:</b> PO formula for Binary MS.</p>

# Results
--------------------------------------------------------------------------------
In the below [figure](https://github.com/Javadio/Physical_Optics_Diffraction/blob/main/fig2.jpg), you can see the generated MS diffraction pattern periods equal to $D=3.9\lambda$ (the first case) and $1.3\lambda$ (the second case). The electromagnetic size of the MS is the same in both cases $L\times L=11.7\lambda  \times 11.7\lambda$. The incident angle was set to ${\theta _i} = {15^{\circ}}$ for both TM- and TE-polarizations. The red curves show the PO calculation. By running the binaryradiation.m file, you can set the period and incident angle, and get the diffraction pattern for a binary MS. 

<p align="center">
  <img src="https://github.com/Javadio/Physical_Optics_Diffraction/blob/main/fig2.jpg" alt="PO diffraction pattern">
</p>

<p align="center"><b>Figure 2:</b> The comparison of 2D diffraction patterns plotted versus $\theta$ in the $xoz$ plane for (a) larger (3.66$\lambda$) and (b) smaller (1.1$\lambda$) period PEC/PMC binary MS. The blue and red curves correspond to the diffraction patterns obtained by numerical simulations and predicted by the PO model, respectively..</p>

# References
-------------------------------------------------------------------------------------
[A] [Shabanpour, J., Li, Y., Tretyakov, S., & Simovski, C. (2024). Physical Optics and Reflection Locality in Designing Reconfigurable Intelligent Surfaces. IEEE Open Journal of Antennas and Propagation.](<https://ieeexplore.ieee.org/abstract/document/10584092>).
