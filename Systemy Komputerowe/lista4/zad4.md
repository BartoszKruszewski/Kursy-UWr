Oznaczmy $RD_\circ$ jako $IN$ oraz $RD_\bullet$ jako $OUT$

```
OUT(1) = IN(1) \ {(x, l) | l ∈ L } U {(x, 1)}
OUT(2) = IN(2)
OUT(3) = IN(3) \ {(y, l) | l ∈ L } U {(y, 3)}
OUT(4) = IN(4) \ {(y, l) | l ∈ L } U {(y, 4)}
OUT(5) = IN(5) \ {(t, l) | l ∈ L } U {(z, 5)}

IN(1) = {(x, ?), (y, ?), (z, ?)}
IN(2) = OUT(1)
IN(3) = OUT(2)
IN(4) = OUT(2)
IN(5) = OUT(3) U OUT(4)
```

Po zastosowaniu algorytmu w zbiorze IN(5)
pojawią się wartości zarówno z OUT(3) jak i OUT(4),
natomiast w rzeczywistości "wpływ" na zbiór IN(5)
będzie miał tylko jeden z tych dwóch zbiorów.