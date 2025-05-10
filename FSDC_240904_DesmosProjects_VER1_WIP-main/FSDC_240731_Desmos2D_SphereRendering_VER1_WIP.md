### 240731 - Desmos 2D: 3. Sphere Rendering in 2D Screen
- ![[Pasted image 20240731122413.png]]
$$L_{2}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right]$$
$$L_{3}=\ L_{2}\left[\operatorname{count}\left(L_{2}\right)...1\right]$$
$$i_{n}\ =\ \left[1,...,\operatorname{count}\left(L_{1}\right)\right]$$
$$\ G_{1}=\operatorname{rotate}\left(\operatorname{translate}\left(\operatorname{dilate}\left(\left(\cos\left(a\right)\cos\ L_{1},\sin L_{1}\right),\left(0,0\right),\sin\left(0.5S_{1}^{2}\right)\right),\left(0,0\right),\left(\cos\left(0.5S_{1}^{2}\right)\cos\left(a+\frac{\pi}{2}\right),0\right)\right),\left(0,0\right),b\right)\ \operatorname{for}\ L_{1}\ =\ \left[0,\frac{2\pi}{n_{num}},...,2\pi\right],\ S_{1}\ =\ \sqrt{2L_{2}}$$
$$A=\operatorname{segment}\left(G_{1}\left[mn_{num}+\left(m+1\right),...,\left(m+1\right)n_{num}+\left(m+1\right)\right],G_{1}\left[\left(m+1\right)n_{num}+\left(m+2\right),...,\left(m+2\right)n_{num}+\left(m+1\right)\right]\right)\ $$

$$n_{num}=80$$
$$a\ =0.576$$
$$b=0.157$$
$$m=21 \quad [0, \textrm{count}(L_2)]$$
