$$
\begin{aligned}

f_{n}\left(s\right) &=\sum_{n=1}^{\operatorname{count}\left(L\right)}\left(a\left[n\right]\ \cos\left(\frac{2\pi b\left[n\right]s}{L\left[n\right]}+\phi\left[n\right]\right)\right)\\

g_{n}\left(s\right)&=\sum_{n=1}^{\operatorname{count}\left(L\right)}\left(a\left[n\right]\ \sin\left(\frac{2\pi b\left[n\right]s}{L\left[n\right]}+\phi\left[n\right]\right)\right)\\

k&=8\\

m_{ax}&=3.8\\

m_{in}&=1.2\\

s_{eed}&=1.76\\

\phi&=\left(\left[1,...,k\right]\cdot0+1\right)\cdot\left(\operatorname{random}\left(k,s_{eed}\right)\cdot\left(m_{ax}-m_{in}+1\right)-m_{in}\right)\\

L&=\left(\left[1,...,k\right]\cdot0+1\right)\cdot\left(\operatorname{random}\left(k,s_{eed}\right)\cdot\left(m_{ax}-m_{in}+1\right)-m_{in}\right)\\

a&=\left(\left[1,...,k\right]\cdot0+1\right)\cdot\left(\operatorname{random}\left(k,s_{eed}\right)\cdot\left(m_{ax}-m_{in}+1\right)-m_{in}\right)\\

b&=\left(\left[1,...,k\right]\cdot0+1\right)\cdot\left(\operatorname{random}\left(k,s_{eed}\right)\cdot\left(m_{ax}-m_{in}+1\right)-m_{in}\right)\\

s&=14.35\\

P_{1}&=\left(f_{n}\left(t\right),t\right)\\

P_{2}&=\left(t,g_{n}\left(t\right)\right)\\

P_{31}&=\left(f_{n}\left(s\right),s\right)\\

P_{32}&=\left(s,g_{n}\left(s\right)\right)\\

P_{3s}&=\left(f_{n}\left(s\right),g_{n}\left(s\right)\right)\\

P_{3t}&=\left(f_{n}\left(t\right),g_{n}\left(t\right)\right)\\

S_{L}&=\operatorname{segment}\left(P_{31},P_{3s}\right),\operatorname{segment}\left(P_{32},P_{3s}\right)\\
\end{aligned}
$$

![[Pasted image 20250624183531.png]]