library(caret)
rm(list = ls())
#variable
jumlah_fold = 10
#membaca data
main_data = read.csv("data_2_class_seimbang.csv", stringsAsFactors = FALSE)
#membagi data menjadi k group
print("Membuat kelompok")
fold_index = createFolds(main_data$class_label, k=jumlah_fold)
for(fold_i in 1:jumlah_fold){
  print("---------------------------------")
  print(paste("iterasi ke-",fold_i))
  
  #membuat data training & testing
  print(paste("Membuat data testing & training ke-", fold_i))
  test_index = as.numeric(unlist((fold_index[fold_i])))
  
  main_data.testing = main_data[test_index,]
  main_data.training = main_data[-test_index,]
  
  #membuat model klasifikasi
  print(paste("Training model klasifikasi ke-", fold_i))
  
  
  #melakukan prediksi
  #label dari data testing dan prediksi dari setiap iterasi dikumpulkan
  print(paste("Melakukan prediksi ke-", fold_i))
}
#menghitung kinerja klasifikasi
#kinerja dihitung dengan menggunakan data label dari data testing dan prediksi
#yang telah dikumpulkan
print("---------------------------------")
print("Menghitung kinerja klasifikasi")
