---
title: "BMAAR Assignment 1"
output:
  pdf_document: default
  html_notebook: default
---

1. Write a note on uniform and normal distribution.

## Generation of Random Numbers with uniform and normal distribution in R.

1. Illustration of sample, runif and rnorm functions with examples

```{R}
cat("Sample Function Output:",sample(x=10,size = 9,replace = TRUE),"\n");
cat("Runif Function Output:",runif(n = 9,min = 10,max = 100),"\n");
cat("Rnorm Function Output:",rnorm(n = 9,mean = 0, sd = 1))
```

2. Write a R program to create a list of random numbers in normal distribution and
   count occurrences of each value.

```{r}
random <- rnorm(n = 10,mean = 0,sd = 1)
print(table(random))
```

3. Write a R program to create a vector which contains 10 random integer values
   between -50 and +50

```{r}
random <- runif(10,min = -50,max = 50)
print(random)
```

4. Use the sample function to obtain a random sample of 10 realizations in a biased
   coin experiment

```{r}
sample(c('H','T'),10,replace = TRUE)
```

5. Create a fair dice (with possible outcomes from 1 to 6) and determine the arithmetic
   mean and standard deviation of throwing it 10,000 times.

```{r}
dice <- c(1:6);
throws <- sample(dice,10000,replace=TRUE);
cat("Mean:",mean(throws),"\n");
cat("Standard Deviation:",sd(throws))
```

6. The most popular German lottery is known as 6 aus 49, in which a total of 7
   numbers are randomly drawn: First, 6 unique numbers are randomly drawn out of
   the numbers from 1 to 49. Second, a single-digit “Superzahl” between 0 and 9.
   Simulate this lottery and run it once.

```{r}
first_draw <- sample(c(1:49),6);
second_draw <- sample(c(0,9),1);
cat("First Draw =>",first_draw,"\n");
cat("Second Draw =>",second_draw)
```

7. Suppose we select a SRS of n = 3 balls from an urn containing a population of N = 6
   balls (painted with the numbers 1, 2, 3, 4, 5, and 6). List the sample space S of all
   possible outcomes.

```{r}
# install.packages("combinat")
library("combinat")
sample_space <- combinat::combn(6,3)
print(sample_space)
```

## Write a note on Probability Distributions and its types.

### Probability Distributions: Demonstration of CDF and PDF uniform and normal, binomial &amp; Poisson distributions in R.

1. Illustration of PDF &amp; CDF functions of normal, binomial &amp; Poisson distributions.
2. Calculate the following probabilities:

- Probability that a normal random variable with mean 22 and variance 25
  1. lies between 16.2 and 27.5
  2. is greater than 29
  3. is less than 17
  4. is less than 15 or greater than 25
- Probability that in 60 tosses of a fair coin the head comes up
  1. 20,25 or 30 times
  2. less than 20 times
  3. between 20 and 30 times
- A random variable X has Poisson distribution with mean 7. Find the probability that
  1. X is less than 5
  2. X is greater than 10 (strictly)
  3. X is between 4 and 16

3. Simulate normal distribution values. Imagine a population in which the average
   height is 1.70 m with a standard deviation of 0.1. Use rnorm to simulate the height
   of 1000 people and save it in an object called heights. 1. Plot the density of the simulated values. 2. Generate 10000 values with the same parameters and plot the respective density function on top of the previous plot in red to differentiate it.
4. You roll a die 100 times and get just 10 sixes?

   1. What is the probability of getting just 10 sixes?
   2. What is the probability of getting 10 or fewer sixes?
   3. Draw the probability distribution.
   4. Simulate the described experiment 1000 times and compute the empirical distribution. Compare it to the theoretical one. Then do the same with 1,000,000 simulations.

5. Using the function rbinom to generate 10 unfair coin tosses with probability success of 0.3. Set the seed to 1.
6. Simulate normal distribution values. Imagine a population in which the average height is 1.70 m with an standard deviation of 0.1, using rnorm simulate the height of 100 people and save it in an object called heights.
   1. What’s the probability that a person will be smaller or equal to 1.90 m ?
   2. What’s the probability that a person will be taller or equal to 1.60 m?
