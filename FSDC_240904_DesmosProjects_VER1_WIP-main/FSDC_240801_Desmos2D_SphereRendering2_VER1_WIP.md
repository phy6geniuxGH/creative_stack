### 240801 - Desmos 2D: 5. Another Sphere Rendering
- ![[Pasted image 20240801114252.png]]
- ![[Sphere.png]]
- $$\ G_{1}=\operatorname{rotate}\left(\operatorname{translate}\left(\operatorname{dilate}\left(\left(\cos\left(a\right)\cos\ L_{1},\sin L_{1}\right),\left(0,0\right),\sin\left(S_{1}\right)\right),\left(0,0\right),\left(\cos\left(S_{1}\right)\cos\left(a+\frac{\pi}{2}\right),0\right)\right),\left(0,0\right),b\right)\ \operatorname{for}\ L_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right],\ S_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right]$$
$$\ G_{2}=\operatorname{rotate}\left(\operatorname{translate}\left(\operatorname{dilate}\left(\left(\cos\left(a+\frac{\pi}{2}\right)\cos\ L_{1},\sin L_{1}\right),\left(0,0\right),\sin\left(S_{1}\right)\right),\left(0,0\right),\left(\cos\left(S_{1}\right)\cos\left(a\right),0\right)\right),\left(0,0\right),b\right)\ \operatorname{for}\ L_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right],\ S_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right]$$
$$A_{1}=\operatorname{segment}\left(G_{1}\left[mn_{num}+\left(m+1\right),...,\left(m+1\right)n_{num}+\left(m+1\right)\right],G_{1}\left[\left(m+1\right)n_{num}+\left(m+2\right),...,\left(m+2\right)n_{num}+\left(m+1\right)\right]\right)\ $$
$$A_{2}=\operatorname{segment}\left(G_{2}\left[mn_{num}+\left(m+1\right),...,\left(m+1\right)n_{num}+\left(m+1\right)\right],G_{2}\left[\left(m+1\right)n_{num}+\left(m+2\right),...,\left(m+2\right)n_{num}+\left(m+1\right)\right]\right)\ $$
- $a=2.62, b=2.436,n_{num}=32, m=8$
