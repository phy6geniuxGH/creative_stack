### 240807 - Desmos 2D: 8. Conditional Colors
- ![[Pasted image 20240807121440.png]]
- $$\begin{aligned} S_{1}&=\operatorname{polygon}\left(x_{1},y_{1}\right)\\
C &=\ \left[\operatorname{rgb}\left(0,0,0\right),\operatorname{rgb}\left(255,231,76\right),\ \operatorname{rgb}\left(255,89,100\right),\ 
\operatorname{rgb}\left(53,167,255\right)\right]\\
c &=\ a_{1}\to a_{1}+1\\
a_{1}&=3\\
d=&0.2\\
c_{olor1}& =\ \left\{a_{1}=\ 1:C\left[1\right],\ a_{1}=2:C\left[2\right],\ a_{1}=3:C\left[3\right],a_{1}=4:C\left[4\right]\right\}\\
c_{olor2}& =\ \left\{a_{1}=\ 1:C\left[2\right],\ a_{1}=2:C\left[3\right],\ a_{1}=3:C\left[4\right],a_{1}=4:C\left[1\right]\right\}\\
c_{olor3}& =\ \left\{a_{1}=\ 1:C\left[3\right],\ a_{1}=2:C\left[4\right],\ a_{1}=3:C\left[1\right],a_{1}=4:C\left[2\right]\right\}\\
c_{olor4}& =\ \left\{a_{1}=\ 1:C\left[4\right],\ a_{1}=2:C\left[1\right],\ a_{1}=3:C\left[2\right],a_{1}=4:C\left[3\right]\right\}\\
C_{G}& =\left[c_{olor1},c_{olor2},c_{olor3}\right]\\
S_{x}\left(x\right)& =\ \operatorname{translate}\left(x,\ \operatorname{vector}\left(\left(0,0\right),\left(2+d,0\right)\right)\right)\\
S_{y}\left(y\right)& =\ \operatorname{translate}\left(y,\ \operatorname{vector}\left(\left(0,0\right),\left(0,2+d\right)\right)\right)\\
f_{x}\left(n\right)&=S_{x}\left(f_{x}\left(n-1\right)\right)\\
f_{y}\left(n\right)&=S_{y}\left(f_{y}\left(n-1\right)\right)\\
f_{y}\left(0\right)& =\ S_{1}\\
f_{x}\left(0\right)& =\ S_{1}\\
& f_{x}\left(1\right)\\
& f_{x}\left(2\right)\\
& f_{x}\left(3\right)\\
& f_{y}\left(1\right)\\
& f_{y}\left(2\right)\\
& f_{y}\left(3\right)\\
\end{aligned}$$