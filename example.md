# Pandoc Mixed Markdown/Latex Example

1. This is a markdown section.
   ```c++
   // you can easily embed code blocks in markdown
   int main() {
       cout << "You also get syntax highlighting in pandoc!" << endl;
       return 0;
   }
   ```

2. When you want to write some math, you can use latex syntax. For example, the following is a quadratic formula:

    \begin{equation}
        x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
    \end{equation}

When you want to create a new page, you can just use the latex `\newpage` command.

\newpage

Here is a markdown table:

| Name  | Age | Grade |
|-------|-----|-------|
| Alice | 20  | A     |
| Bob   | 21  | B     |

And here is a latex table:

\begin{tabular}{|c|c|c|}
\hline
Name & Age & Grade \\
\hline
Alice & 20 & A \\
Bob & 21 & B \\
\hline
\end{tabular}

We can also write inline math! For example, the formula for the area of a circle is $A = \pi r^2$.

You can even draw diagrams using latex. For example, here is a simple diagram of a triangle:

\begin{tikzpicture}
    \draw (0,0) -- (4,0) -- (2,3) -- cycle;
    \node at (2,-0.5) {Base};
    \node at (4.5,1.5) {Height};
\end{tikzpicture}

