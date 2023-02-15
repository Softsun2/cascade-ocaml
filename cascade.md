```
This concept is based on my experience with William Basinski's song Cascade. I was also inspired by Alvin Lucier's? project I Am Sitting In A Room and the nature of tape loops in general.

Sterile instructions and sedative grace magnetized once to degrade forever. Beautiful visions of the impossible self.

The original, mannual implementation, consists of a clip I recorded on my bike of a frozen lake is recycled repeatedly cutting on the most pronounced piano drop. Datamoshing and compression are used as methods of distortion and disintegration in the process of obtaining a sequence of clips in decreasing order of quality. To obtain the next clip in the sequence the previous clip is datamoshed with the original clip. Datamoshing requires the clips being moshed together to be rendered as a single clip that cuts between the two, this is what produces compression. Any pixels of the original clip that survive datamoshing exist (although compressed) in the following clips. For example an original pixel that exists in the ninth clip has been rerendered (compressed) eigth times. The function used for obtaining any clip in the sequence is explicitly defined below.

```
Let dm be a function that returns the datamoshed transition of two clips. In practice dm handles prerending the input clips.
Let second_half be a function that returns the second half of a clip.

Let f be a recursive function of n, where n is in Z and n >= 0, that returns the nth clip of the sequence.

f(n) = { original_clip, when n = 0
       { second_half(dm(orignal_clip, f(n - 1))), when n > 0
```

There's a mistake in this function. The sequence will never reach pure destruction. In the case that n > 0 the previous clip is moshed with the original clip. While structurally there will be no semblence of the original video, just an uncontrolled mess of pixels, the injected pixels from the mosh are a constant quality. Since only the surviving pixels are compressed the clip will never be compressed into oblivion. This is most noticable later on in the sequence where compression can't be seen until all the moshed pixels are wiped away. Although it was completly by mistake it is interesting to think about. Injecting the ideal pixels into a dying clip. I am unceartain if the injected pixels would take over and destroy all movement in the clip or if the movement is strong enough to wipe away the moshed pixels forever.

I followed this process mannually so there were probably numerous other mistakes made.


There is no one. I've made no one. I am no one.
```
