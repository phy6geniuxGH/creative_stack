### 240729 - Desmos 2D: 2. Hexagonal Polyhedra with Effects 3D Rotation in 2D screen
$$
P_{1}\ =\ \left(\left(\cos c\right)\cos\ a,\ \sin\ a\right)
$$
$$P_{2}\ =\ \left(-\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ \cos\ \left(a-\frac{\pi}{6}\right)\right)
$$

$$P_{3}\ =\ \left(\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),\sin\ \left(a-\frac{\pi}{3}\right)\right)
$$
$$P_{4}\ =\ \left(-\left(\cos c\right)\cos\ \left(a\right),\ -\sin\ a\right)$$
$$P_{5}\ =\ \left(\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ -\cos\ \left(a-\frac{\pi}{6}\right)\right)
$$
$$P_{6}\ =\ \left(-\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),-\sin\ \left(a-\frac{\pi}{3}\right)\right)$$
$$S_{1}\ =\ s\left(\left(\cos c\right)\cos\ a,\ \sin\ a\right),s\left(-\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ \cos\ \left(a-\frac{\pi}{6}\right)\right),s\left(-\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),-\sin\ \left(a-\frac{\pi}{3}\right)\right),s\left(-\left(\cos c\right)\cos\ \left(a\right),\ -\sin\ a\right),s\left(\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ -\cos\ \left(a-\frac{\pi}{6}\right)\right),s\left(\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),\sin\ \left(a-\frac{\pi}{3}\right)\right),s\left(\left(\cos c\right)\cos\ a,\ \sin\ a\right)$$
$$S_{2}\ =\ \frac{1}{s}\left(\left(\cos c\right)\cos\ a,\ \sin\ a\right),\frac{1}{s}\left(-\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ \cos\ \left(a-\frac{\pi}{6}\right)\right),\frac{1}{s}\left(-\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),-\sin\ \left(a-\frac{\pi}{3}\right)\right),\frac{1}{s}\left(-\left(\cos c\right)\cos\ \left(a\right),\ -\sin\ a\right),\frac{1}{s}\left(\left(\cos c\right)\sin\ \left(a-\frac{\pi}{6}\right),\ -\cos\ \left(a-\frac{\pi}{6}\right)\right),\frac{1}{s}\left(\left(\cos c\right)\cos\ \left(a-\frac{\pi}{3}\right),\sin\ \left(a-\frac{\pi}{3}\right)\right),\frac{1}{s}\left(\left(\cos c\right)\cos\ a,\ \sin\ a\right)$$

$$G_{1}=\operatorname{rotate}\left(\operatorname{dilate}\left(\operatorname{translate}\left(\operatorname{polygon}\left(P_{1},P_{2},P_{6},P_{4},P_{5},P_{3}\right),\left(\cos b,0\right),p_{xy1}\right),p_{xy1},s\right),\left(0,0\right),\ d\right)
$$
$$G_{2}=\operatorname{rotate}\left(\operatorname{dilate}\left(\operatorname{translate}\left(\operatorname{polygon}\left(P_{1},P_{2},P_{6},P_{4},P_{5},P_{3}\right),\left(-\cos b,0\right),p_{xy2}\right),p_{xy2},\frac{1}{s}\right),\left(0,0\right),d\right)$$
$$G_{3}=\operatorname{rotate}\left(\operatorname{dilate}\left(\operatorname{translate}\left(\operatorname{polygon}\left(P_{1},P_{2},P_{6},P_{4},P_{5},P_{3}\right),\left(0,0\right),\left(0,0\right)\right),\left(0,0\right),1.5\right),\left(0,0\right),d\right)$$

$$T_{1}=\ \operatorname{segment}\left(S_{a},S_{b}\right)$$
$$T_{2}=\operatorname{segment}\left(S_{a},S_{c}\right)
$$
$$T_{3}=\operatorname{segment}\left(S_{c},S_{d}\right)$$
$$T_{4}=\operatorname{segment}\left(S_{d},S_{b}\right)$$
$$S_{a}\ =\ \operatorname{rotate}\left(\operatorname{translate}\left(S_{1},\ \left(\cos b,0\right),p_{xy1}\right),\left(0,0\right),d\right)$$
$$S_{b}\ =\ \operatorname{rotate}\left(\operatorname{translate}\left(S_{2},\ \left(-\cos b,0\right),p_{xy2}\right),\left(0,0\right),d\right)$$
$$S_{c}\ =\ \operatorname{dilate}\left(\operatorname{rotate}\left(\operatorname{translate}\left(S_{1},\ \left(0.25\cos b,0\right),p_{xy1}\right),\left(0,0\right),d\right),p_{xy1},1.5\right)$$
$$S_{d}\ =\ \operatorname{dilate}\left(\operatorname{rotate}\left(\operatorname{translate}\left(S_{2},\ \left(-0.25\cos b,0\right),p_{xy2}\right),\left(0,0\right),d\right),p_{xy1},1.5\right)$$
$$\operatorname{segment}\left(S_{a},\left(0,0\right)\right)$$
$$\operatorname{segment}\left(S_{b},\left(0,0\right)\right)$$
$$\operatorname{segment}\left(S_{c},\left(0,0\right)\right)$$
$$\operatorname{segment}\left(S_{d},\left(0,0\right)\right)$$
$$\operatorname{circle}\left(P_{1},r_{c}\right),\operatorname{circle}\left(P_{2},r_{c}\right),\operatorname{circle}\left(P_{3},r_{c}\right),\operatorname{circle}\left(P_{4},r_{c}\right),\operatorname{circle}\left(P_{5},r_{c}\right),\operatorname{circle}\left(P_{6},r_{c}\right)$$
$$G_{4}=\operatorname{polygon}\left(P_{1},P_{2},P_{6},P_{4},P_{5},P_{3}\right)$$
$$G_{5}=\operatorname{rotate}\left(\operatorname{dilate}\left(\operatorname{polygon}\left(P_{1},-P_{2},P_{6},-P_{4},P_{5},-P_{3}\right),\left(0,0\right),0.5\right),\left(0,0\right),-f\right)$$
$$\begin{aligned} 

s & = [-2,2] \; \textrm{face scale}\\
a & = [0,2\pi] \; \textrm{x-rotation}\\
b & = [0,2\pi] \; \textrm{z-rotation}\\
c & = b+\dfrac{\pi}{2} \; \textrm{z-rotation}\\
d & = [0,2\pi] \; \textrm{y-rotation}\\
p_{xy1} & =\ \left(0,0\right)\\
p_{xy2} & =\ \left(0,0\right)\\
f & = [0,2\pi] \; \textrm{triangle rotation}\\
r_c & = [0.1,3] \; \textrm{circles scaling}\\



\end{aligned}$$
- ![[Pasted image 20240729135353.png]]
