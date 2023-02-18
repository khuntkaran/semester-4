import 'package:get/get.dart';

class LocaleString extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{
    'en_US':{
      'hello':'Hello world',
      'heading':'Question Bank',
      'subscribe':'Like Now'
    },
    'hi_IN':{
      'hello':'हैलो वर्ल्ड',
      'heading':'प्रश्न बैंक',
      'subscribe':'अब की तरह'
    },
    'gu_IN':{
      'hello':'હેલો વર્લ્ડ',
      'heading':'પ્રશ્ન બેંક',
      'subscribe':'પ્રશ્ન બેંક'
    }
  };

}