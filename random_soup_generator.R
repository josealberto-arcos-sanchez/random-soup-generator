library(data.table)

ingredientes <- fread("ingredientes.csv")
verduras <- ingredientes[tipo == "verdura"][sample(x = .N, size = 3, replace = FALSE, prob = probabilidad)]
cereal <- ingredientes[tipo == "cereal"][sample(x = .N, size = 1, replace = FALSE, prob = probabilidad)]
proteina <- ingredientes[tipo == "proteína"][sample(x = .N, size = 1, replace = FALSE, prob = probabilidad)]

sopa <- rbindlist(list(verduras, cereal, proteina))
print(sopa)