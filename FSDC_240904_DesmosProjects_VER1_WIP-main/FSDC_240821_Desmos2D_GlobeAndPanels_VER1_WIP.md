### 240821 - Desmos 2D: Globe and Panels
- ![[Pasted image 20240821173312.png]]
- ![[Pasted image 20240821175354.png]]
- $$\begin{aligned} L_{2}\ & =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi+\frac{2\pi}{n_{num}}\right]\\
n_{num}&=36\\
G_{1}&=\ \operatorname{rotate}\left(\operatorname{translate}\left(\operatorname{dilate}\left(\left(\cos\left(a\right)\cos L_{1},\sin\ L_{1}\right),\left(0,0\right),\sin\left(0.5S_{1}^{2}\right)\right),\left(0,0\right),\left(\cos\left(0.5S_{1}^{2}\right)\cos\left(a+\frac{\pi}{2}\right),0\right)\right),\left(0,0\right),b\right)\ \operatorname{for}\ L_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right],\ S_{1}=\sqrt{2L_{2}}\\
H_{1}\left(R\right)&=\operatorname{segment}\left(G_{1}\left[\operatorname{join}\left(\left[n_{num},2n_{num},...,n_{num}^{2}\right],\left[n_{num}\left(n_{num}+1\right)\right]\right)+\operatorname{join}\left(\left[0,1,...,n_{num}\right],\left[n_{num}^{2}\right]\right)+R\right],G_{1}\left[\operatorname{join}\left(\left[2n_{num},3n_{num},...,n_{num}\left(n_{num}+1\right)\right],\left[n_{num}\right]\right)+\operatorname{join}\left(\left[1,...,n_{num}^{2}\right],\left[0\right]\right)+R\right]\right)\\
H_{2}&=\operatorname{segment}\left(G_{1}\left[\left[n_{num}\left(n_{num}+1\right)+n_{num}^{2}\right]\right],G_{1}\left[\left[n_{num}\right]\right]\right)\\ 
H_{1}\left(0\right) &\\
H_{1}\left(3\right) &\\
H_{1}\left(4\right) &\\
H_{1}\left(5\right) &\\
H_{1}\left(6\right) &\\
H_{1}\left(7\right) &\\
H_{1}\left(8\right) &\\
H_{1}\left(9\right) &\\
H_{1}\left(10\right) &\\
H_{1}\left(11\right) &\\
H_{1}\left(12\right) &\\
H_{1}\left(13\right) &\\
H_{1}\left(14\right) &\\
H_{1}\left(15\right) &\\
H_{1}\left(16\right) &\\
H_{1}\left(17\right) &\\
H_{1}\left(18\right) &\\
H_{1}\left(19\right) &\\
H_{1}\left(20\right) &\\
t_{hin}&=0.35\\
f_{ill}&=0.43\\
c_{olor}& =\operatorname{rgb}\left(210,25,120\right)\\
P_{anel}\left(c,r_{ow},c_{olumn}\right) &=\operatorname{polygon}\left(G_{1}\left[r_{ow}n_{num}+c\right],G_{1}\left[\left(r_{ow}+1\right)n_{num}+1+c\right],G_{1}\left[\left(r_{ow}+1\right)n_{num}+c_{olumn}+c\right],G_{1}\left[r_{ow}n_{num}+\left(c_{olumn}-1\right)+c\right]\right)\\
P_{anel}\left(s_{hift},r_{w}\right)\ \operatorname{for}\ r_{w} &=\left[0,1,...,17\right]\\
s_{hift} &=34\\
P_{anel1}\left(c,r_{ow}\right) &=\operatorname{polygon}\left(G_{1}\left[r_{ow}n_{num}+c\ +s_{w}\left(r_{ow}-2\right)\right],G_{1}\left[\left(r_{ow}+1\right)n_{num}+1+c+s_{w}\left(r_{ow}-2\right)\right],G_{1}\left[\left(r_{ow}+1\right)n_{num}\ +\ 2+c+s_{w}\left(r_{ow}-2\right)\right],G_{1}\left[r_{ow}n_{num}+1+c+s_{w}\left(r_{ow}-2\right)\right]\right)\\
s_{w} &=1\\
P_{anel}\left(c,r_{ow}\right) &=\operatorname{polygon}\left(G_{1}\left[r_{ow}n_{num}+c+\left(r_{ow}-2\right)\ \right],G_{1}\left[\left(r_{ow}+1\right)n_{num}+1+c\ +\left(r_{ow}-2\right)\right]\right)\\
P_{anel1}\left(s_{hift},r_{w}\right)\ \operatorname{for}\ r_{w}&=\left[-1,...,17\right]\\
P_{anel1}\left(s_{hift}-20,r_{w}\right)\ \operatorname{for}\ r_{w}&=\left[-1,...,17\right]\\
P_{anel1}\left(s_{hift}-e_{ven},r_{w}\right)\ \operatorname{for}\ r_{w}&=\left[-1,...,17\right],\ e_{ven}=\left[2,4,...,34\right]\\
\end{aligned}$$