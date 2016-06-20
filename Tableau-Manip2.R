### import cross sell
MB_ActivePaidAdds_GC <- read.delim("M:/Mark Benson/Segs_By_HH/MB_ActivePaidAdds_GC - COPY.csv", header=TRUE, sep=",")
Total.Wine.Locations_AW <- read.delim("M:/Mark Benson/Segs_By_HH/Total Wine Locations_AW.csv", header=TRUE, sep=",")

names(MB_ActivePaidAdds_GC)
names(Total.Wine.Locations_AW)

temp1 <- MB_ActivePaidAdds_GC[,c("ZIP.Code", "Latitude", "Longitude",  "Prizm.Premier.Lifestage.Code")]
temp2 <- Total.Wine.Locations_AW[,c("Brand", "Zip.Code", "Latitude", "Longitude")]

names(temp2) <- c("Prizm.Premier.Lifestage.Code", "ZIP.Code", "Latitude", "Longitude" )
test <- rbind(temp1, temp2)

write.csv(test, "C:/Users/awelden/Desktop/Test.csv")
