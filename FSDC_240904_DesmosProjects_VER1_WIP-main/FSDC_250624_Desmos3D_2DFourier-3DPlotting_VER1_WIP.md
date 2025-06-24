$$
\begin{aligned}
f_{n}\left(s\right)&=\sum_{n=1}^{\operatorname{count}\left(L\right)}\left(a\left[n\right]\ \cos\left(\frac{2\pi b\left[n\right]s}{L\left[n\right]}+p_{hi}\left[n\right]\right)\right)\\

g_{n}\left(s\right)&=\sum_{n=1}^{\operatorname{count}\left(L\right)}\left(a\left[n\right]\ \sin\left(\frac{2\pi b\left[n\right]s}{L\left[n\right]}+p_{hi}\left[n\right]\right)\right)\\

k&=2.8 \\
m_{ax}&=6.2  \\
m_{in}&=0.26  \\
s_{eed}&=340  \\
p_{hi}&=\left(\left[1,...,k\right]\cdot0+1\right)\cdot\left(\operatorname{random}\left(k,s_{eed}\right)\cdot\left(m_{ax}-m_{in}+1\right)-m_{in}\right)\\

L&=\left(\left[1,...,k\right]\cdot0+1\right)\cdot\left(\operatorname{random}\left(k,s_{eed}\right)\cdot\left(m_{ax}-m_{in}+1\right)-m_{in}\right)\\

a&=\left(\left[1,...,k\right]\cdot0+1\right)\cdot\left(\operatorname{random}\left(k,s_{eed}\right)\cdot\left(m_{ax}-m_{in}+1\right)-m_{in}\right)\\

b&=\left(\left[1,...,k\right]\cdot0+1\right)\cdot\left(\operatorname{random}\left(k,s_{eed}\right)\cdot\left(m_{ax}-m_{in}+1\right)-m_{in}\right)\\

s&=4.77\\

P_{1}&=\left(f_{n}\left(t\right),t,0\right)\\

P_{2}&=\left(t,g_{n}\left(t\right)\right)\\

P_{31}&=\left(f_{n}\left(s\right),s,0\right)\\

P_{31s}&=\left(f_{n}\left(s\right),s,s\right)\\

P_{32}&=\left(s,g_{n}\left(s\right),0\right)\\

P_{32s}&=\left(s,g_{n}\left(s\right),s\right)\\

P_{3s}&=\left(f_{n}\left(s\right),g_{n}\left(s\right),s\right)\\

P_{3t}&=\left(f_{n}\left(t\right),g_{n}\left(t\right),t\right)\\

S_{L}&=\operatorname{segment}\left(P_{31},P_{31s}\right),\operatorname{segment}\left(P_{32},P_{32s}\right),\operatorname{segment}\left(P_{31s},P_{3s}\right),\operatorname{segment}\left(P_{32s},P_{3s}\right)\\

\end{aligned}
$$

![[Pasted image 20250624183622.png]]