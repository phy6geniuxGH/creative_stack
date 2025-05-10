### 240820 - Desmos 2D: Globe Modeling
- ![[Pasted image 20240820152908.png]]
- $$\begin{aligned} L_{2}\ & =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi+\frac{2\pi}{n_{num}}\right]\\
n_{num}&=24\\
G_{1}&=\ \operatorname{rotate}\left(\operatorname{translate}\left(\operatorname{dilate}\left(\left(\cos\left(a\right)\cos L_{1},\sin\ L_{1}\right),\left(0,0\right),\sin\left(0.5S_{1}^{2}\right)\right),\left(0,0\right),\left(\cos\left(0.5S_{1}^{2}\right)\cos\left(a+\frac{\pi}{2}\right),0\right)\right),\left(0,0\right),b\right)\ \operatorname{for}\ L_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right],\ S_{1}=\sqrt{2L_{2}}\\
H_{1}\left(R\right)&=\operatorname{segment}\left(G_{1}\left[\operatorname{join}\left(\left[n_{num},2n_{num},...,n_{num}^{2}\right],\left[n_{num}\left(n_{num}+1\right)\right]\right)+\operatorname{join}\left(\left[0,1,...,n_{num}\right],\left[n_{num}^{2}\right]\right)+R\right],G_{1}\left[\operatorname{join}\left(\left[2n_{num},3n_{num},...,n_{num}\left(n_{num}+1\right)\right],\left[n_{num}\right]\right)+\operatorname{join}\left(\left[1,...,n_{num}^{2}\right],\left[0\right]\right)+R\right]\right)\\
H_{2}&=\operatorname{segment}\left(G_{1}\left[\left[n_{num}\left(n_{num}+1\right)+n_{num}^{2}\right]\right],G_{1}\left[\left[n_{num}\right]\right]\right)\end{aligned} $$
