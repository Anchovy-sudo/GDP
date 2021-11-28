library(WDI)
library(data.table)
aa <- as.data.table(WDI( country = c("TR", "CN", "KR", "DE", "US"),
           indicator = "NY.GDP.PCAP.KD.ZG",
           start = 2015,
           end = 2020,
           extra = FALSE,
           cache = NULL,
           latest = NULL,
           language = "en"))
GDP_growth <- dcast(aa, country ~ year, value.var = "NY.GDP.PCAP.KD.ZG")