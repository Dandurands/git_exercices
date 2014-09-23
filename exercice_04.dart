import 'dart:math' as math;

void main(){
  print(fibonacci(10));
  print(PointFin(800, 600, 160, 45));
  print(Age(new DateTime(1991, 05, 28, 0, 0)));
  print(investissement(5, 1000.00, 3.8));
  print(timesTable(8, 16));
}

String fibonacci(int nombre){
  String strPrint = '\n Numéro 1: 10 premiers nombres de Fibonacci\n';
  int A = 0;
  int B = 1;
  int resultat;
  String strSpacer = ', ';
  for(int Nb = 1; Nb < nombre; Nb ++){
    resultat = A + B;
    strSpacer = (nombre-1) == Nb ? '' : ', ';
    strPrint = strPrint + resultat.toString() + strSpacer;
    B = A;
    A = resultat;
  }
  return strPrint ;
}

String PointFin(int H, int L, int Lg, int Angle){
  String strPrint = "\n Numéro 2: Point de fin d'une ligne \n";
  double CentreX = H / 2;
  double CentreY = L / 2;
  double Rad = Angle * (math.PI / 180);
  double PointFinX = H / 2 + Lg * math.cos(R);
  double PointFinY = L / 2 + Lg * math.sin(R);
  strPrint += 'Centre : ${CentreX.toStringAsFixed(2)}, ${CentreY.toStringAsFixed(2)}';
  strPrint += 'Point de fin de la ligne : ${PointFinX.toStringAsFixed(2)}, ${PointFinY.toStringAsFixed(2)}';
  return strPrint;
}


Age(DateTime naissance){
  DateTime ajd = new DateTime.now();
  String strPrint = "\n Numéro 3 : le temps écoulé entre ma naissance et aujourd'hui \n";
  
  Duration temps = ajd.difference(naissance);
  
  int joursEc = temps.inDays;
  int NbAnnees = (joursEc / 365).truncate();
  int NbMois = ((joursEc - (365 * NbAnnees)) / 30).truncate();
  int NbJours = (joursEc - (365 * NbAnnees)) - (30 * NbMois);
  strPrint += '$NbAnnees ans, $NbMois mois et $NbJours jours';
  return strPrint;
}

String investissement(int annees, double InvestissementBase, double interets){
  String strPrint = '\n Numéro 4 : investissement gagné sur 5 ans \n';
  double MontantFinal = InvestissementBase;
  for(int intI = 1; intI <= annees; intI++){
    MontantFinal += (MontantFinal*interets)/100;
  }
  strPrint = strPrint + ' Investissement Total :' + MontantFinal.toStringAsFixed(2);
  strPrint = strPrint + ' Investissement Remporté :' + (MontantFinal - InvestissementBase).toStringAsFixed(2);
  strPrint = strPrint + ' Investissement par année :' + (MontantFinal / annees).toStringAsFixed(2);
  return strPrint;
}

String timesTable(int table, int nombre){
  String strPrint = '\n Numéro 5 : les 16 premiers chiffres de la table de 8 \n';
  int Nb = 1;
  while (Nb <= nombre){
    int Multiplication = Nb * table;
    strPrint += ' $Nb X $table = $Multiplication';
    Nb++;
  }
  return strPrint;
}
