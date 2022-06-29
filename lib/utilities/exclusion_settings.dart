class Exclusions {
  String setting = '';
  bool? current, minutely, hourly, daily, alerts;

  Exclusions.exclude({this.current, this.minutely, this.hourly, this.daily, this.alerts}){
    if(current != null && current!){
      setting = '${setting}current,';
    }
    if(minutely != null && minutely!){
      setting = '${setting}minutely,';
    }
    if(hourly != null && hourly!){
      setting = '${setting}hourly,';
    }
    if(daily != null && daily!){
      setting = '${setting}daily,';
    }
    if(alerts != null && alerts!){
      setting = '${setting}alerts,';
    }

    if(setting.isNotEmpty){
      setting = setting.substring(0, setting.length-1);
    }
  }
}