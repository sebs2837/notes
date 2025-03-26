#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.8": *
#import "@sebs/notes:0.0.1": notes

#show: notes.with(
    title: [Introduction into machine learning],
)
#show: codly-init.with(
)
 = Introduction

#codly(
    header: [*Simple NAND Preceptron*],
    languages: codly-languages,
    number-format: none,
    zebra-fill: none,
)
```python
import random

def print_learning_results(weight):
    print(f"w0 = {weight[0]:5.2f} w1 = {weight[1]:5.2f} w2 = {weight[2]:5.2f}")

def compute_output(w, x):
    z = 0.0
    for (i, weight) in enumerate(w):
        z += x[i] * weight
    if z < 0:
        return -1
    else:
        return 1


random.seed(7)
LEARNING_RATE = 0.1
index_list = [0, 1, 2, 3]

x_train = [(1.0, -1.0, -1.0),
           (1.0, -1.0, 1.0),
           (1.0, 1.0, -1.0),
           (1.0, 1.0, 1.0)]
y_train = [1.0, 1.0, 1.0, 1.0]
w = [0.2, -0.6, 0.25]

if __name__ == "__main__":
    ALL_CORRECT = False
    while not ALL_CORRECT:
        ALL_CORRECT = True
        random.shuffle(index_list)
        for i in index_list:
            x = x_train[i]
            y = y_train[i]
            p_out = compute_output(w, x)
            if y != p_out:
                for k in range(0, len(w)):
                    w[k] += (y * LEARNING_RATE * x[k])
                ALL_CORRECT = False
                print_learning_results(w)
```

== Hello

