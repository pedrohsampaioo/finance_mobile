import '../../core/assets/app_svg_path.dart';

class FixtureReader {
  static Map<String, dynamic> get transactions => <String, dynamic>{
        "data": [
          {
            "svg_path": AppSvgPath.arrowDown,
            "subtitle": "Sending Payment to Clients",
            "title": "Sent",
            "value": 150
          },
          {
            "svg_path": AppSvgPath.arrowUp,
            "subtitle": "Receive Salary from company",
            "title": "Receive",
            "value": 250
          },
          {
            "svg_path": AppSvgPath.moneyBottomApp,
            "subtitle": "Lean for the car",
            "title": "Lean",
            "value": 400
          }
        ]
      };

  static Map<String, dynamic> get user => <String, dynamic>{
        "data": {
          "image_url":
              "https://lifestyle.uai.com.br/wp-content/uploads/sites/9/2019/12/46.jpg",
          "name": "Hira Riaz",
          "career": "UX/UI Designer",
          "expenses": 8900,
          "income": 5500,
          "loan": 890
        }
      };
}
