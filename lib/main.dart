void main() {

  // Weight = 70 KG
  // Height = 1.75 Meters

  double bmi = calculateBMI(70, 1.75);
  print("Your BMI is : $bmi");

  /*

 // Perfect Score : 100

  double weight = 70;
  double height = 1.75 ;

  double bmi = calculateBMI(weight, height);
  print("Your BMI is : $bmi");

*/



  String category = getBMICategory(bmi);
  print("Category : $category");


}

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}


String getBMICategory(double bmi){
  if(bmi < 18.5){
    return 'Underweight';
  } else if(bmi < 25){
    return 'Normal';
  } else if (bmi < 30){
    return'Overweight';
  } else {
    return 'Obese';
  }
}