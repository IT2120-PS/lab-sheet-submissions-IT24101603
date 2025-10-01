set.seed(321)
bake <- rnorm(25, mean = 45, sd = 2)

bake

result <- t.test(bake, mu = 46, alternative = "less")

result

result$statistic    # t-value
result$p.value      # p-value
result$conf.int     # 95% confidence interval
mean(bake)          # sample mean
