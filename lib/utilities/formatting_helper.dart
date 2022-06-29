import 'package:intl/intl.dart';

class FormattingHelper{
  String formattedTime = '';
  String formattedWindDir = '';

  FormattingHelper.formatMSSE(num time)
  {
    // TODO: Currently broken. Fix this to display human readable time
    var format = DateFormat.Hm();
    var formattedTime = format.format(DateTime.fromMillisecondsSinceEpoch(time.toInt()));
    this.formattedTime =  formattedTime.toString();
  }

  FormattingHelper.formatWindDir(num deg){
    if(deg <= 5 && deg >= 355){
      formattedWindDir = 'E';
    }else if(deg <= 95 && deg >= 85){
      formattedWindDir = 'N';
    }else if(deg <= 185 && deg >= 175){
      formattedWindDir = 'W';
    }else if(deg <= 275 && deg >= 265){
      formattedWindDir = 'S';
    }else if(deg < 85 && deg > 5){
      formattedWindDir = 'NE';
    }else if(deg < 175 && deg > 95){
      formattedWindDir = 'NW';
    }else if(deg < 265 && deg > 185){
      formattedWindDir = 'SW';
    }else if(deg < 355 && deg > 275){
      formattedWindDir = 'SE';
    }
  }
}