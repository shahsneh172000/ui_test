import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AppLocalizations {
  final String languageCode;

  AppLocalizations(this.languageCode);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<Locale> supportedLocales = [
    Locale('en', ''),
    Locale('hi', ''),
    Locale('mr', ''),
    Locale('gu', ''), // added
    Locale('te', ''), // added
    Locale('kn', ''), // added
  ];

  static final Map<String, String> supportedLanguages = {
    'en': 'English',
    'hi': 'हिंदी',
    'mr': 'मराठी',
    'gu': 'ગુજરાતી', // added
    'te': 'తెలుగు',   // added
    'kn': 'ಕನ್ನಡ',    // added
  };

  String get appTitle => _localizedValues[languageCode]!['appTitle'] as String;
  String get appTagline =>
      _localizedValues[languageCode]!['appTagline'] as String;
  String get selectLanguage =>
      _localizedValues[languageCode]!['selectLanguage'] as String;
  String get diseases => _localizedValues[languageCode]!['diseases'] as String;
  String get insectsAndPests => _localizedValues[languageCode]!['insectsAndPests'] as String;

  static final Map<String, dynamic> _managementData = {
    "Bacterial Blight": {
      "diseaseName": "Disease: Bacterial Blight",
      "description": "Bacterial blight causes economic yield losses (60-100 %) in pomegranate under favourable conditions. It is more severe and prevalent during the rainy season (Mrig Bahar) in June-July and less in Rabi season (Hasta bahar).",
      "causalOrganism": "Xanthomonas axonopodis pv. Punicae (Syn: Xanthomonas citri pv. punicae)",
      "symptoms": "• Disease symptoms are observed on all plant parts viz., leaves, stems, flowers and fruits.\n• Initially, small irregular greyish black water soaked lesions are observed on leaves which enlarge with progress of the disease. Diseased leaves gradually turn yellow and fall down (Plate1a).\n• On twigs and stems blackish lesions are mainly observed at the nodes, which result in canker formation with depressed growth (Plate1b).\n• Disease symptoms are prominent on developed fruits. Greyish black lesions enlarge and coalesce, thereby covering the entire fruit surface. Infected fruits often reveal cracking. The bacterial ooze comes out after rains/spray/dew, which feels sticky to hands and after drying gives white shiny encrustation on the surface. (Plate1c).",
      "predisposingFactors": "Temperature (25 – 30o C), Relative humidity (>50%) rainfall, application of higher nitrogen doses than recommended, micronutrient deficiencies.",
      "pruningManagementTitle": "Management practices during pruning",
      "pruningManagement": [
        "If stem infections are severe, practice heavy pruning immediately after harvest and remove all stems with blight infection. Prune about 2 - 3 inch below the infected area.",
        "Apply Bordeaux paste (10 %) to the cut ends after pruning. Oil based pastes [COC paint made by mixing 500 g COC + 1 L linseed oil are preferred for pasting during rainy seasons or mix oil @ 50 ml/L paste."
      ],
      "cropSeasonManagementTitle": "Management practices during Crop season",
      "cropSeasonManagement": [
        "Prophylactic sprays should be taken after harvest during rest period and also after planting a new orchard till fruiting is taken.",
        "Spray with Bordeaux mixture (1 %) altered with Bronopol @ 0.5 g/L mixed with copper based formulations like copper oxychloride or copper hydroxide @ 2 -2.5 g/L at 15 - 20 days interval depending on disease present in the orchard/neighboring orchards and weather conditions.",
        "If orchards in rest period and have leaf blight infection, one spray of Streptocycline @ 0.5 g/L may be taken in alteration with Bordeaux mixture and Bronopol."
      ],
      "cropSeasonManagementNote": "Note: If it is a bacterial blight free area then sprays of streptocycline or Bronopol are not required.",
      "emergencySpraysTitle": "Emergency sprays",
      "emergencySpraysIntro": "1 - 2 sprays at 4 days interval soon after 5 – 10 % blight infection observed on fruits restricts further blight spread.",
      "emergencySprays": [
        "Streptocycline @ 0.5 g/L + 2-bromo-nitropropane-1, 3-diol (Bronopol 95%) @ 0.5 g/L + Copper hydroxide 53.8 % WP @ 2.0 g/L + spreader sticker @ 0.5 ml/L solution.",
        "Streptocycline @ 0.5 g/L + 2-bromo-nitropropane-1, 3-diol (Bronopol 95%) @ 0.5 g/L + Carbendazim 50 % WP @ 1.0 g/L + spreader sticker @ 0.5 ml/L solution."
      ],
      "emergencySpraysNote": "Note:\n• Remove and destroy blight affected fruits before every spray. Maintain proper orchard sanitation and take preventive sprays in rest period.",
      "recommendations": [
        "Prune and remove all stems with blight infection.",
        "Apply Bordeaux paste to cut ends after pruning.",
        "Use prophylactic sprays like Bordeaux mixture or Bronopol.",
        "Remove and destroy blight-affected fruits before every spray."
      ]
    },
    "Calyx Rot": {
      "diseaseName": "Disease: Anthracnose/ fruit rot/Calyx rot",
      "description": "Anthracnose/fruit rot is becoming a major problem in semi- arid conditions. The disease is common in tropical and subtropical regions.",
      "causalOrganism": "Colletotrichum spp.",
      "symptoms": "Colletotrichum symptoms develop on flowers, fruits, leaves or twigs, but fruits are most susceptible.\n• On leaves, small circular spots develop with yellowish halos; later infected leaves turn yellow leading to premature defoliation.\n• On fruits, the first symptoms are observed as discolouration of fruit rind from calyx end or numerous isolated spots that later coalesce together forming irregular blotches on the fruit surface (Colletotrichum spp.)\n• The discoloured areas become reddish/ dark brown to black. The rot extends beyond the rind into the arils, which disintegrate and are dark grey/brown- black coloured but not watery. The affected fruits may drop at a later stage.\n• The fruits are most vulnerable to this disease at all stages from setting.",
      "predisposingFactors": "Temperatures of 25 - 30°C and high humidity (>60 %) favour disease development. High humidity, rain fall and warm temperatures during the summer months increase disease severity",
      "chemicalManagementTitle": "Chemical management of colletotrichum rots",
      "chemicalManagementIntro": "Take below mentioned sprays alternately at 7-10 days intervals depending on weather conditions and follow the important instructions given at the end.",
      "sprays": [
        "Zineb 68%+ Hexaconazole 4% WP @ 2.5g/ litre",
        "Tebuconazole 50% + Trifloxystrobin 25% WG @ 0.5 g/litre",
        "Propineb 70 % WP @ 3 g/litre",
        "Copper Oxychloride 45%+ Kasuamycin 5% WP @ 2.5g/ litre",
        "Azoxystrobin 8.3 % + Mancozeb 66.7 % WG @ 1.5 g/litre",
        "Fluopyram 21.4 % + Trifloxystrobin 21.4 % SC @ 0.7 ml/litre",
        "Fluopicolide 5.56% + Propamocarb Hydrochloride 55.6% SC @ 1.25 ml/litre"
      ],
      "importantInstructionsTitle": "Important instructions",
      "instructions": [
        "Sprays of Mandipropamid 23.4%@1ml/l (2-3 sprays at 10-15 days) at flowering act as preventive for many fungal diseases including. Hence take this at flowering.",
        "Avoid spray if rain is expected on the day; Spray after a few hours of rain is better and very important",
        "Spray pH should be checked after final solution preparation. It should be adjusted from 6.5-7.0 pH/ or as instructed on the fungicide pack. This will avoid chemical injuries and give better results",
        "Always use spreader sticker with sprays except Bordeaux mixture",
        "No pesticide should be used more than 2-3 times in a season except copper fungicides",
        "Sprays can be taken in rotation as per pre-harvest interval for residue-free production"
      ],
      "recommendations": [
        "Remove and destroy affected fruit and leaves.",
        "Apply a suitable fungicide (e.g., Zineb, Tebuconazole).",
        "Improve air circulation through pruning."
      ],
      "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
    },
    "Fungal Cercospora": {
      "diseaseName": "Disease: Cercospora fruit spot",
      "description": "Pomegranate is susceptible to fruit spot of fungi especially Cercospora punicae (Psuedocercospora punicae) causing pathogens which may reduce fruit yield and quality.",
      "causalOrganism": "Cercospora punicae (Psuedocercospora punicae)",
      "symptoms": "The pathogen produces characteristic spot symptoms particularly on fruits. Small, irregular spots that are initially circular but become larger and darker.",
      "predisposingFactors": "Temperatures between 20 - 30°C and humidity above 60% for long duration’s favours disease development. Leaf and fruit spots are often more prevalent during rainy season.",
      "chemicalManagementTitle": "Chemical management of fungal leaf and fruit spots",
      "chemicalManagementIntro": "Take below mentioned sprays alternately at 7-10 days intervals depending on weather conditions and disease pressure and follow the important instructions given at the end.",
      "sprays": [
        "Zineb 75% WP @ 2g/litre",
        "Zineb 68%+ Hexaconazole 4% WP @ 2.5g/ l",
        "Metiram 55% WG+ Pyraclostrobin 5% @ 3 g/litre",
        "Tebuconazole 50% + Trifloxystrobin 25% WG @ 0.5 g/litre",
        "Propineb 70 % WP @ 3 g/litre",
        "Tricyclazole 18%+Mancozeb 62% WP 2.5 to3.0 g/litre",
        "Copper Sulphate 47.15% + Mancozeb 30% WDG @ 2.5 g/litre",
        "Azoxystrobin 8.3 % + Mancozeb 66.7 % WG @ 1.5 g/litre"
      ],
      "importantInstructionsTitle": "Important instructions",
      "instructions": [
        "Sprays of Mandipropamid 23.4%@1ml/l (2-3 sprays at 10-15 days) at flowering act as preventive for many fungal diseases including Cercospora Fruit and leaf spot and Scab. Hence take this at flowering.",
        "Avoid spray if rain is expected on the day; Spray after a few hours of rain is better and very important",
        "Spray pH should be checked after final solution preparation. It should be adjusted from 6.5-7.0 pH/ or as instructed on the fungicide pack. This will avoid chemical injuries and give better results",
        "Always use spreader sticker with sprays except Bordeaux mixture",
        "No pesticide should be used more than 2-3 times in a season except copper fungicides",
        "Sprays can be taken in rotation as per pre-harvest interval for residue-free production"
      ],
      "recommendations": [
        "Remove and burn infected leaves.",
        "Apply fungicides preventively.",
        "Ensure good air circulation."
      ],
      "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
    },
    "Fruit Rot": {
      "diseaseName": "Disease: Anthracnose/ fruit rot/Calyx rot",
      "description": "Anthracnose/fruit rot is becoming a major problem in semi- arid conditions. The disease is common in tropical and subtropical regions.",
      "causalOrganism": "Colletotrichum spp.",
      "symptoms": "Colletotrichum symptoms develop on flowers, fruits, leaves or twigs, but fruits are most susceptible.\n• On leaves, small circular spots develop with yellowish halos; later infected leaves turn yellow leading to premature defoliation.\n• On fruits, the first symptoms are observed as discolouration of fruit rind from calyx end or numerous isolated spots that later coalesce together forming irregular blotches on the fruit surface (Colletotrichum spp.)\n• The discoloured areas become reddish/ dark brown to black. The rot extends beyond the rind into the arils, which disintegrate and are dark grey/brown- black coloured but not watery. The affected fruits may drop at a later stage.\n• The fruits are most vulnerable to this disease at all stages from setting.",
      "predisposingFactors": "Temperatures of 25 - 30°C and high humidity (>60 %) favour disease development. High humidity, rain fall and warm temperatures during the summer months increase disease severity",
      "chemicalManagementTitle": "Chemical management of colletotrichum rots",
      "chemicalManagementIntro": "Take below mentioned sprays alternately at 7-10 days intervals depending on weather conditions and follow the important instructions given at the end.",
      "sprays": [
        "Zineb 68%+ Hexaconazole 4% WP @ 2.5g/ litre",
        "Tebuconazole 50% + Trifloxystrobin 25% WG @ 0.5 g/litre",
        "Propineb 70 % WP @ 3 g/litre",
        "Copper Oxychloride 45%+ Kasuamycin 5% WP @ 2.5g/ litre",
        "Azoxystrobin 8.3 % + Mancozeb 66.7 % WG @ 1.5 g/litre",
        "Fluopyram 21.4 % + Trifloxystrobin 21.4 % SC @ 0.7 ml/litre",
        "Fluopicolide 5.56% + Propamocarb Hydrochloride 55.6% SC @ 1.25 ml/litre"
      ],
      "importantInstructionsTitle": "Important instructions",
      "instructions": [
        "Sprays of Mandipropamid 23.4%@1ml/l (2-3 sprays at 10-15 days) at flowering act as preventive for many fungal diseases including. Hence take this at flowering.",
        "Avoid spray if rain is expected on the day; Spray after a few hours of rain is better and very important",
        "Spray pH should be checked after final solution preparation. It should be adjusted from 6.5-7.0 pH/ or as instructed on the fungicide pack. This will avoid chemical injuries and give better results",
        "Always use spreader sticker with sprays except Bordeaux mixture",
        "No pesticide should be used more than 2-3 times in a season except copper fungicides",
        "Sprays can be taken in rotation as per pre-harvest interval for residue-free production"
      ],
      "recommendations": [
        "Remove and destroy affected fruit and leaves.",
        "Apply a suitable fungicide (e.g., Zineb, Tebuconazole).",
        "Improve air circulation through pruning."
      ],
      "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
    },
    "Healthy": {
      "description": "No specific management is required. Continue to monitor the plant for any signs of stress or disease and maintain good agricultural practices."
    },
    "Fungal Scab": {
      "diseaseName": "Disease: Fruit scab",
      "description": "Since 2016, scab has become a limiting factor in pomegranate production in arid and semi-arid regions of India. In areas where the disease is prevalent, it is not uncommon to find orchards where 90–100% of fruits are affected.",
      "causalOrganism": "Sphaceloma (syn. Elsinoe) punicae",
      "symptoms": "The pathogen attacks at any stage from flowering through fruit maturity. Infections of flower buds or small fruits lead to deformation and consequently yield losses. Infection of mature fruits affects the appearance and exterior quality of fruits. The lesions affect only the outer rind surface, without affecting aril or juice quality.\n• The lesions on fruits may be small or large, brown, rough, raised, covering small areas to entire fruit surface, giving a russet scab appearance to the rind.\n• The spots at times may enlarge to form larger spots with a light centre and darker edge and are rough to the touch.\n• It produces spots of various shape and size from small rough, raised spots to large brown spots covering entire fruit surface with russet appearance.",
      "predisposingFactors": "Temperatures of 22 - 28°C, humidity around 45 - 65% with rain and wind favours disease development.",
      "chemicalManagementTitle": "Chemical management of fruit scab",
      "chemicalManagementIntro": "The disease is commonly observed on fruits after the rains. On leaves are generally observed when fruits are not there. If you had a scab in last season also do not wait for disease symptoms take preventive sprays after rains. Take below mentioned sprays alternately at 7-10 days intervals depending on weather conditions and following the important instructions given at the end,",
      "sprays": [
        "Metiram 55% WG+ Pyraclostrobin 5% @ 3 g/litre",
        "Tebuconazole 50% + Trifloxystrobin 25% WG @ 0.5 g/litre",
        "Azoxystrobin 18.2 % + Difenoconazole 11.4 % SC @ 1ml/ litre",
        "Zineb 68%+ Hexaconazole 4% WP @ 2.5g/ l",
        "Fluopicolide 5.56% + Propamocarb Hydrochloride 55.6% SC @"
      ],
      "chemicalManagementNote": "Note: Best results if given soon after rain",
      "importantInstructionsTitle": "Important Instructions",
      "instructions": [
        "Sprays of Mandipropamid 23.4%@1ml/l (2-3 sprays at 10-15 days) at flowering acts as preventive for many fungal diseases including Cercospora Fruit and leaf spot and Scab. Hence take this at flowering.",
        "Infected distorted fruits at the setting can be removed and destroyed. do not dump or not throws anywhere.",
        "Avoid spray if rain is expected on the day; Spraying after few hours of rain is better and very important for avoiding scab infection.",
        "Spray pH should be checked after final solution preparation. It should be adjusted from 6.5-7.0 pH/ or as instructed on the fungicide pack. This will avoid chemical injuries and give better results",
        "Always use spreader sticker with sprays except Bordeaux mixture",
        "No pesticide should be used more than 2-3 times in a season except copper fungicides",
        "Sprays can be taken in rotation as per pre-harvest interval for residue-free production"
      ],
      "recommendations": [
        "Remove and destroy infected or distorted fruits.",
        "Apply preventive sprays after rains (e.g., Metiram, Tebuconazole).",
        "Prune trees to improve air circulation."
      ],
      "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
    },
    "Bacterial": {
      "diseaseName": "Disease: Bacterial leaf spot/oily spot",
      "description": "Bacterial blight causes economic yield losses (60-100 %) in pomegranate under favourable conditions. It is more severe and prevalent during the rainy season (Mrig Bahar) in June-July and less in Rabi season (Hasta bahar).",
      "causalOrganism": "Xanthomonas axonopodis pv. Punicae (Syn: Xanthomonas citri pv. punicae)",
      "symptoms": "• Disease symptoms are observed on all plant parts viz., leaves, stems, flowers and fruits.\n• Initially, small irregular greyish black water soaked lesions are observed on leaves which enlarge with progress of the disease. Diseased leaves gradually turn yellow and fall down (Plate1a).\n• The bacterial ooze comes out after rains/spray/dew, which feels sticky to hands and after drying gives white shiny encrustation on the surface. (Plate1c).",
      "predisposingFactors": "Temperature (25 – 30o C), Relative humidity (>50%) rainfall, application of higher nitrogen doses than recommended, micronutrient deficiencies.",
      "cropSeasonManagementTitle": "Management practices during Crop season",
      "cropSeasonManagement": [
        "Prophylactic sprays should be taken after harvest during rest period and also after planting a new orchard till fruiting is taken.",
        "Spray with Bordeaux mixture (1 %) altered with Bronopol @ 0.5 g/L mixed with copper based formulations like copper oxychloride or copper hydroxide @ 2 -2.5 g/L at 15 - 20 days interval depending on disease present in the orchard/neighboring orchards and weather conditions.",
        "If orchards in rest period and have leaf blight infection, one spray of Streptocycline @ 0.5 g/L may be taken in alteration with Bordeaux mixture and Bronopol."
      ],
      "cropSeasonManagementNote": "Note: If it is a bacterial blight free area then sprays of streptocycline or Bronopol are not required.",
      "emergencySpraysTitle": "Emergency sprays",
      "emergencySpraysIntro": "1 - 2 sprays at 4 days interval soon after 5 – 10 % blight infection observed on leaves restricts further blight spread.",
      "emergencySprays": [
        "Streptocycline @ 0.5 g/L + 2-bromo-nitropropane-1, 3-diol (Bronopol 95%) @ 0.5 g/L + Copper hydroxide 53.8 % WP @ 2.0 g/L + spreader sticker @ 0.5 ml/L solution.",
        "Streptocycline @ 0.5 g/L + 2-bromo-nitropropane-1, 3-diol (Bronopol 95%) @ 0.5 g/L + Carbendazim 50 % WP @ 1.0 g/L + spreader sticker @ 0.5 ml/L solution."
      ],
      "emergencySpraysNote": "Note:\n• Remove and destroy blight affected fruits before every spray. Maintain proper orchard sanitation and take preventive sprays in rest period.",
      "recommendations": [
        "Avoid overhead irrigation to keep foliage dry.",
        "Apply copper-based sprays as a preventive measure.",
        "Remove and destroy infected leaves promptly."
      ]
    },
    "Fungal": {
      "diseaseName": "Disease: fungal Leaf spots",
      "description": "Pomegranate is susceptible to several leaf spots causing pathogens which may reduce fruit yield and quality",
      "causalOrganism": "leaf spots are caused by many of fungal pathogens viz., Alternaria alternata, Cercospora punicae (Psuedocercospora punicae), Colletotrichum sp. Drechsclera rostrata. Besides leaf spots have been reported to be caused by many other fungal species namely Botryodiplodia theobromae, Curvularia sp., Pestalotiopsis sp.",
      "symptoms": "various pathogens produce characteristic spot symptoms particularly on leaves, stems. The exact identification of which is only be made through microscopic and pure culture studies as most of the times overlapping disease symptoms are observed under natural conditions. Among leaf and fruit spots, cercospora spots are most prominent on pomegranate.",
      "predisposingFactors": "Temperatures between 20 - 30°C and humidity above 60% for long duration’s favours disease development. Leaf and fruit spots are often more prevalent during rainy season",
      "chemicalManagementTitle": "Chemical management of fungal leaf spots",
      "chemicalManagementIntro": "Take below mentioned sprays alternately at 7-10 days intervals depending on weather conditions and follow the important instructions given at the end.",
      "sprays": [
        "Zineb 75% WP @ 2g/litre",
        "Zineb 68%+ Hexaconazole 4% WP @ 2.5g/ l",
        "Metiram 55% WG+ Pyraclostrobin 5% @ 3 g/litre",
        "Tebuconazole 50% + Trifloxystrobin 25% WG @ 0.5 g/litre",
        "Propineb 70 % WP @ 3 g/litre",
        "Tricyclazole 18%+Mancozeb 62% WP 2.5 to3.0 g/litre",
        "Copper Sulphate 47.15% + Mancozeb 30% WDG @ 2.5 g/litre",
        "Azoxystrobin 8.3 % + Mancozeb 66.7 % WG @ 1.5 g/litre"
      ],
      "importantInstructionsTitle": "Important instructions",
      "instructions": [
        "Sprays of Mandipropamid 23.4%@1ml/l (2-3 sprays at 10-15 days) at flowering act as preventive for many fungal diseases including Cercospora Fruit and leaf spot and Scab. Hence take this at flowering.",
        "Avoid spray if rain is expected on the day; Spray after a few hours of rain is better and very important",
        "Spray pH should be checked after final solution preparation. It should be adjusted from 6.5-7.0 pH/ or as instructed on the fungicide pack. This will avoid chemical injuries and give better results",
        "Always use spreader sticker with sprays except Bordeaux mixture",
        "No pesticide should be used more than 2-3 times in a season except copper fungicides",
        "Sprays can be taken in rotation as per pre-harvest interval for residue-free production"
      ],
      "recommendations": [
        "Apply appropriate fungicides, rotating between different chemical groups.",
        "Improve air circulation through pruning.",
        "Water at the base of the plant to keep leaves dry."
      ],
      "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
    }
  };

  List<Map<String, String>> getFaqData() {
    final data =
        _localizedValues[languageCode]!['faqData'] as List<Map<String, String>>;
    return data;
  }

  String get faqTitle {
    return _localizedValues[languageCode]!['faqTitle'] as String;
  }

  String? getString(String key, {Map<String, String>? params}) {
    var value = _localizedValues[languageCode]![key] as String?;
    if (value != null && params != null) {
      params.forEach((paramKey, paramValue) {
        value = value!.replaceAll('{$paramKey}', paramValue);
      });
    }
    return value;
  }

  static final Map<String, Map<String, dynamic>> _localizedValues = {
    'en': {
      'appTitle': 'AnarRakshak',
      'appTagline': 'Your Pomegranate Farm Guard',
      'selectModelAndImage': 'Select model and pick an image',
      'modelsLoading': 'Please wait, models are loading...',
      'selectLanguage': 'Select Language',
      'diseases': 'Diseases',
      'insectsAndPests': 'Insects & Pests',
      'runningInference': 'Running inference...',
      'inferenceError': 'Inference Error',
      'modelLoadFailed': 'Model load failed: {error}',
      'inferenceFailed': 'Inference failed: {error}',
      'gallery': 'Gallery',
      'camera': 'Camera',
      'diseaseCategory': 'Disease',
      'pestsCategory': 'Insects & Pests',
      'fruit': 'Fruits & Flowers',
      'fruit_subtitle': 'Identify diseases affecting the fruit',
      'leaf': 'Leaf',
      'leaf_subtitle': 'Analyze and identify leaf diseases',
      'root': 'Roots',
      'flowers': 'Leaves/Flower/Fruit',
      'selectImageSource': 'Select Image Source',
      'featureComingSoon': 'This feature will be implemented soon.',
      // Model Labels
      'showManagementTechniques': 'Show Management\nTechniques',
      'managementTechniquesTitle': 'Management Techniques',
      'noManagementInfo': 'No management information available for this disease.',
      'ok': 'OK',
      'causalOrganismLabel': 'Causal Organism',
      'symptomsLabel': 'Symptoms',
      'predisposingFactorsLabel': 'Predisposing Factors',
      'recommendationsLabel': 'Recommendations',
      'sourceUrlLabel': 'Source',
      'confidence': 'Confidence: {score}%',
      'Bacterial Blight': 'Bacterial Blight',
      'Calyx Rot': 'Calyx Rot',
      'Fungal Cercospora': 'Fungal Cercospora',
      'Fruit Rot': 'Fruit Rot',
      'Healthy': 'Healthy',
      'management': _managementData,
      'Fungal Scab': 'Fungal Scab',
      'Bacterial': 'Bacterial',
      'Fungal': 'Fungal',
      'Root Knot': 'Root Knot',
      'Wilt': 'Wilt', // Kept for potential other uses
      'Wilt plants': 'Wilt plants',
      'Aphids infestation': 'Aphids infestation',
      'Fruit borer': 'Fruit borer',
      'Fruit fly': 'Fruit fly',
      'Mealy Bug': 'Mealy Bug',
      'Thrisps': 'Thrips',
      'root_subtitle': 'Check for diseases affecting the roots',
      'insects_title': 'Live & Dead Insects Images',
      'insects_subtitle': 'Identify common insects and pests',
      'flowers_title': 'Fruits, Flowers & Leaves Images',
      'flowers_subtitle': 'Identify pests affecting flowers',
      'resultLabel': 'Result:',
      'confidenceScoreLabel': 'Confidence Score:',
      'faqTitle': 'Frequently Asked Questions',
      'faqData': _faqData,
      'feedbackTitle': 'Feedback',
      'feedbackHint': 'Enter your feedback here...',
      'submitFeedback': 'Submit Feedback',
      'feedbackCannotBeEmpty': 'Feedback cannot be empty.',
      'couldNotLaunchEmail': 'Could not open email app.',
      'searchFaqsHint': 'Search FAQs...',
    },
    'hi': {
      'appTitle': 'अनाररक्षक',
      'appTagline': 'आपका अनार फार्म गार्ड',
      'selectLanguage': 'भाषा चुनें',
      'diseases': 'रोग',
      'insectsAndPests': 'कीट और पीड़क',
      'fruit': 'फल और फूल',
      'fruit_subtitle': 'फल को प्रभावित करने वाले रोगों की पहचान करें',
      'leaf': 'पत्ती',
      'leaf_subtitle': 'पत्ती रोगों का विश्लेषण और पहचान करें',
      'root': 'जड़ें',
      'root_subtitle': 'जड़ों को प्रभावित करने वाले रोगों की जाँच करें',
      'insects_title': 'जीवित और मृत कीटों की छवियाँ',
      'insects_subtitle': 'सामान्य कीटों और पीड़कों की पहचान करें',
      'flowers_title': 'फल, फूल और पत्तियों की छवियाँ',
      'flowers_subtitle': 'फूलों को प्रभावित करने वाले पीड़कों की पहचान करें',
      'showManagementTechniques': 'प्रबंधन तकनीकें\nदेखें',
      'managementTechniquesTitle': 'प्रबंधन तकनीकें',
      'causalOrganismLabel': 'कारण जीव',
      'symptomsLabel': 'लक्षण',
      'predisposingFactorsLabel': 'पूर्वगामी कारक',
      'recommendationsLabel': 'सिफारिशें',
      'sourceUrlLabel': 'स्रोत',
      'Bacterial Blight': 'जीवाणु झुलसा',
      'Calyx Rot': 'कैलिक्स रॉट',
      'Fungal Cercospora': 'फंगल सर्कोस्पोरा',
      'Fruit Rot': 'फल सड़न',
      'Healthy': 'स्वस्थ',
      'Fungal Scab': 'फंगल स्कैब',
      'Bacterial': 'जीवाणु',
      'Fungal': 'कवक',
      'Root Knot': 'रूट नॉट',
      'Wilt': 'विल्ट', // Kept for potential other uses
      'Wilt plants': 'विल्ट पौधे',
      'Aphids infestation': 'एफिड्स का प्रकोप',
      'Fruit borer': 'फल छेदक',
      'Fruit fly': 'फल मक्खी',
      'Mealy Bug': 'मिली बग',
      'Thrisps': 'थ्रिप्स',
      'management': {
        "Bacterial Blight": {
          "diseaseName": "रोग: बैक्टीरियल ब्लाइट",
          "description": "अनार में बैक्टीरियल ब्लाइट अनुकूल परिस्थितियों में आर्थिक उपज हानि (60-100%) का कारण बनता है। यह जून-जुलाई में बरसात के मौसम (मृग बहार) में अधिक गंभीर और प्रचलित है और रबी मौसम (हस्ता बहार) में कम होता है।",
          "causalOrganism": "जैन्थोमोनास एक्सोनोपोडिस pv. प्युनिका (Syn: जैन्थोमोनास सिट्री pv. प्युनिका)",
          "symptoms": "• रोग के लक्षण पौधे के सभी भागों यानी पत्तियों, तनों, फूलों और फलों पर देखे जाते हैं।\n• प्रारंभ में, पत्तियों पर छोटे अनियमित भूरे-काले पानी से लथपथ घाव देखे जाते हैं जो रोग की प्रगति के साथ बड़े हो जाते हैं। रोगग्रस्त पत्तियां धीरे-धीरे पीली हो जाती हैं और गिर जाती हैं (प्लेट 1 ए)।\n• टहनियों और तनों पर काले घाव मुख्य रूप से नोड्स पर देखे जाते हैं, जिसके परिणामस्वरूप दबे हुए विकास के साथ कैंकर का निर्माण होता है (प्लेट 1 बी)।\n• विकसित फलों पर रोग के लक्षण प्रमुख होते हैं। भूरे-काले घाव बड़े हो जाते हैं और मिल जाते हैं, जिससे पूरे फल की सतह ढक जाती है। संक्रमित फलों में अक्सर दरारें दिखाई देती हैं। बारिश/स्प्रे/ओस के बाद जीवाणु का रिसाव होता है, जो हाथों को चिपचिपा लगता है और सूखने के बाद सतह पर सफेद चमकदार पपड़ी देता है। (प्लेट 1 सी)।",
          "predisposingFactors": "तापमान (25 – 30o C), सापेक्ष आर्द्रता (>50%), वर्षा, अनुशंसित से अधिक नाइट्रोजन की खुराक का अनुप्रयोग, सूक्ष्म पोषक तत्वों की कमी।",
          "pruningManagementTitle": "छंटाई के दौरान प्रबंधन प्रथाएं",
          "pruningManagement": [
            "यदि तने का संक्रमण गंभीर है, तो कटाई के तुरंत बाद भारी छंटाई करें और ब्लाइट संक्रमण वाले सभी तनों को हटा दें। संक्रमित क्षेत्र से लगभग 2 - 3 इंच नीचे छंटाई करें।",
            "छंटाई के बाद कटे हुए सिरों पर बोर्डो पेस्ट (10%) लगाएं। बरसात के मौसम में चिपकाने के लिए तेल आधारित पेस्ट [500 ग्राम सीओसी + 1 लीटर अलसी का तेल मिलाकर बनाया गया सीओसी पेंट] बेहतर होता है या पेस्ट में 50 मिली/लीटर तेल मिलाएं।"
          ],
          "cropSeasonManagementTitle": "फसल के मौसम के दौरान प्रबंधन प्रथाएं",
          "cropSeasonManagement": [
            "कटाई के बाद आराम की अवधि के दौरान और फल लगने तक नए बाग लगाने के बाद भी प्रोफिलैक्टिक स्प्रे लेना चाहिए।",
            "बाग/पड़ोसी बागों में मौजूद बीमारी और मौसम की स्थिति के आधार पर 15 - 20 दिनों के अंतराल पर ब्रोनोपोल @ 0.5 ग्राम/लीटर के साथ कॉपर ऑक्सीक्लोराइड या कॉपर हाइड्रॉक्साइड @ 2 -2.5 ग्राम/लीटर जैसे तांबे आधारित फॉर्मूलेशन के साथ बोर्डो मिश्रण (1%) का स्प्रे करें।",
            "यदि बाग आराम की अवधि में हैं और उनमें पत्ती ब्लाइट संक्रमण है, तो बोर्डो मिश्रण और ब्रोनोपोल के साथ स्ट्रेप्टोसाइक्लिन @ 0.5 ग्राम/लीटर का एक स्प्रे लिया जा सकता है।"
          ],
          "cropSeasonManagementNote": "नोट: यदि यह एक बैक्टीरियल ब्लाइट मुक्त क्षेत्र है तो स्ट्रेप्टोसाइक्लिन या ब्रोनोपोल के स्प्रे की आवश्यकता नहीं है।",
          "emergencySpraysTitle": "आपातकालीन स्प्रे",
          "emergencySpraysIntro": "फलों पर 5-10% ब्लाइट संक्रमण देखे जाने के तुरंत बाद 4 दिनों के अंतराल पर 1-2 स्प्रे आगे ब्लाइट के प्रसार को रोकते हैं।",
          "emergencySprays": [
            "स्ट्रेप्टोसाइक्लिन @ 0.5 ग्राम/लीटर + 2-ब्रोमो-नाइट्रोप्रोपेन-1, 3-डायोल (ब्रोनोपोल 95%) @ 0.5 ग्राम/लीटर + कॉपर हाइड्रॉक्साइड 53.8% WP @ 2.0 ग्राम/लीटर + स्प्रेडर स्टिकर @ 0.5 मिली/लीटर घोल।",
            "स्ट्रेप्टोसाइक्लिन @ 0.5 ग्राम/लीटर + 2-ब्रोमो-नाइट्रोप्रोपेन-1, 3-डायोल (ब्रोनोपोल 95%) @ 0.5 ग्राम/लीटर + कार्बेन्डाजिम 50% WP @ 1.0 ग्राम/लीटर + स्प्रेडर स्टिकर @ 0.5 मिली/लीटर घोल।"
          ],
          "emergencySpraysNote": "नोट:\n• प्रत्येक स्प्रे से पहले ब्लाइट प्रभावित फलों को हटाकर नष्ट कर दें। बाग की उचित स्वच्छता बनाए रखें और आराम की अवधि में निवारक स्प्रे लें।",
          "recommendations": [
            "ब्लाइट संक्रमण वाले सभी तनों को छाँटें और हटा दें।",
            "छंटाई के बाद कटे हुए सिरों पर बोर्डो पेस्ट लगाएं।",
            "बोर्डो मिश्रण या ब्रोनोपोल जैसे प्रोफिलैक्टिक स्प्रे का उपयोग करें।",
            "प्रत्येक स्प्रे से पहले ब्लाइट प्रभावित फलों को हटाकर नष्ट कर दें।"
          ]
        },
        "Calyx Rot": {
          "diseaseName": "रोग: एन्थ्रेक्नोज/ फल सड़न/कैलिक्स रॉट",
          "description": "एन्थ्रेक्नोज/फल सड़न अर्ध-शुष्क परिस्थितियों में एक बड़ी समस्या बन रही है। यह रोग उष्णकटिबंधीय और उपोष्णकटिबंधीय क्षेत्रों में आम है।",
          "causalOrganism": "कोलेटोट्रिचम एसपीपी।",
          "symptoms": "कोलेटोट्रिचम के लक्षण फूल, फल, पत्तियों या टहनियों पर विकसित होते हैं, लेकिन फल सबसे अधिक संवेदनशील होते हैं।\n• पत्तियों पर, पीले प्रभामंडल के साथ छोटे गोलाकार धब्बे विकसित होते हैं; बाद में संक्रमित पत्तियां पीली हो जाती हैं जिससे समय से पहले पत्तियां झड़ जाती हैं।\n• फलों पर, पहले लक्षण कैलिक्स सिरे से फल के छिलके के मलिनकिरण या कई अलग-अलग धब्बों के रूप में देखे जाते हैं जो बाद में मिलकर फल की सतह पर अनियमित धब्बे बनाते हैं (कोलेटोट्रिचम एसपीपी।)\n• फीके पड़े क्षेत्र लाल/गहरे भूरे से काले हो जाते हैं। सड़न छिलके से आगे बढ़कर एरिल्स में फैल जाती है, जो विघटित हो जाते हैं और गहरे भूरे/भूरे-काले रंग के होते हैं लेकिन पानीदार नहीं होते हैं। प्रभावित फल बाद के चरण में गिर सकते हैं।\n• फल सेटिंग से लेकर सभी चरणों में इस बीमारी के प्रति सबसे अधिक संवेदनशील होते हैं।",
          "predisposingFactors": "25 - 30 डिग्री सेल्सियस का तापमान और उच्च आर्द्रता (>60%) रोग के विकास के पक्ष में है। गर्मियों के महीनों के दौरान उच्च आर्द्रता, वर्षा और गर्म तापमान रोग की गंभीरता को बढ़ाते हैं",
          "chemicalManagementTitle": "कोलेटोट्रिचम सड़न का रासायनिक प्रबंधन",
          "chemicalManagementIntro": "मौसम की स्थिति के आधार पर 7-10 दिनों के अंतराल पर नीचे दिए गए स्प्रे को वैकल्पिक रूप से लें और अंत में दिए गए महत्वपूर्ण निर्देशों का पालन करें।",
          "sprays": [
            "ज़िनेब 68% + हेक्साकोनाज़ोल 4% WP @ 2.5 ग्राम/लीटर",
            "टेबुकोनाज़ोल 50% + ट्राइफ्लॉक्सीस्ट्रोबिन 25% WG @ 0.5 ग्राम/लीटर",
            "प्रोपीनेब 70% WP @ 3 ग्राम/लीटर",
            "कॉपर ऑक्सीक्लोराइड 45% + कासुगामाइसिन 5% WP @ 2.5 ग्राम/लीटर",
            "एज़ोक्सिस्ट्रोबिन 8.3% + मैनकोज़ेब 66.7% WG @ 1.5 ग्राम/लीटर",
            "फ्लुओपाइरम 21.4% + ट्राइफ्लॉक्सीस्ट्रोबिन 21.4% SC @ 0.7 मिली/लीटर",
            "फ्लुओपिकोलाइड 5.56% + प्रोपामोकार्ब हाइड्रोक्लोराइड 55.6% SC @ 1.25 मिली/लीटर"
          ],
          "importantInstructionsTitle": "महत्वपूर्ण निर्देश",
          "instructions": [
            "फूल आने पर मैंडिप्रोपामाइड 23.4% @ 1 मिली/लीटर (10-15 दिनों में 2-3 स्प्रे) का स्प्रे कई फंगल रोगों के लिए निवारक के रूप में कार्य करता है। इसलिए इसे फूल आने पर लें।",
            "यदि उस दिन बारिश की उम्मीद है तो स्प्रे से बचें; बारिश के कुछ घंटों बाद स्प्रे करना बेहतर और बहुत महत्वपूर्ण है",
            "अंतिम घोल तैयार करने के बाद स्प्रे का पीएच जांचना चाहिए। इसे 6.5-7.0 पीएच/ या कवकनाशी पैक पर दिए गए निर्देशानुसार समायोजित किया जाना चाहिए। इससे रासायनिक चोटों से बचा जा सकेगा और बेहतर परिणाम मिलेंगे",
            "बोर्डो मिश्रण को छोड़कर स्प्रे के साथ हमेशा स्प्रेडर स्टिकर का उपयोग करें",
            "कॉपर कवकनाशी को छोड़कर किसी भी कीटनाशक का उपयोग एक मौसम में 2-3 बार से अधिक नहीं किया जाना चाहिए",
            "अवशेष मुक्त उत्पादन के लिए कटाई पूर्व अंतराल के अनुसार स्प्रे को रोटेशन में लिया जा सकता है"
          ],
          "recommendations": [
            "प्रभावित फल और पत्तियों को हटाकर नष्ट कर दें।",
            "एक उपयुक्त कवकनाशी (जैसे, ज़िनेब, टेबुकोनाज़ोल) लागू करें।",
            "छंटाई के माध्यम से वायु परिसंचरण में सुधार करें।"
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Fungal Cercospora": {
          "diseaseName": "रोग: सर्कोस्पोरा फ्रूट स्पॉट",
          "description": "अनार कवक के फलों के धब्बे के प्रति संवेदनशील है, विशेष रूप से सर्कोस्पोरा प्यूनिका (स्यूडोसेरकोस्पोरा प्यूनिका) रोगजनकों के कारण जो फलों की उपज और गुणवत्ता को कम कर सकते हैं।",
          "causalOrganism": "सर्कोस्पोरा प्यूनिका (स्यूडोसेरकोस्पोरा प्यूनिका)",
          "symptoms": "रोगज़नक़ विशेष रूप से फलों पर विशिष्ट धब्बे के लक्षण पैदा करता है। छोटे, अनियमित धब्बे जो शुरू में गोलाकार होते हैं लेकिन बड़े और गहरे हो जाते हैं।",
          "predisposingFactors": "20 - 30 डिग्री सेल्सियस के बीच तापमान और लंबी अवधि के लिए 60% से ऊपर की आर्द्रता रोग के विकास के पक्ष में है। बरसात के मौसम में पत्ती और फलों के धब्बे अक्सर अधिक प्रचलित होते हैं।",
          "chemicalManagementTitle": "फंगल पत्ती और फलों के धब्बों का रासायनिक प्रबंधन",
          "chemicalManagementIntro": "मौसम की स्थिति और रोग के दबाव के आधार पर 7-10 दिनों के अंतराल पर नीचे दिए गए स्प्रे को वैकल्पिक रूप से लें और अंत में दिए गए महत्वपूर्ण निर्देशों का पालन करें।",
          "sprays": [
            "ज़िनेब 75% WP @ 2 ग्राम/लीटर",
            "ज़िनेब 68% + हेक्साकोनाज़ोल 4% WP @ 2.5 ग्राम/लीटर",
            "मेटिरम 55% WG + पाइराक्लोस्ट्रोबिन 5% @ 3 ग्राम/लीटर",
            "टेबुकोनाज़ोल 50% + ट्राइफ्लॉक्सीस्ट्रोबिन 25% WG @ 0.5 ग्राम/लीटर",
            "प्रोपीनेब 70% WP @ 3 ग्राम/लीटर",
            "ट्राइसाइक्लाज़ोल 18% + मैनकोज़ेब 62% WP 2.5 से 3.0 ग्राम/लीटर",
            "कॉपर सल्फेट 47.15% + मैनकोज़ेब 30% WDG @ 2.5 ग्राम/लीटर",
            "एज़ोक्सिस्ट्रोबिन 8.3% + मैनकोज़ेब 66.7% WG @ 1.5 ग्राम/लीटर"
          ],
          "importantInstructionsTitle": "महत्वपूर्ण निर्देश",
          "instructions": [
            "फूल आने पर मैंडिप्रोपामाइड 23.4% @ 1 मिली/लीटर (10-15 दिनों में 2-3 स्प्रे) का स्प्रे सर्कोस्पोरा फ्रूट और लीफ स्पॉट और स्कैब सहित कई फंगल रोगों के लिए निवारक के रूप में कार्य करता है। इसलिए इसे फूल आने पर लें।",
            "यदि उस दिन बारिश की उम्मीद है तो स्प्रे से बचें; बारिश के कुछ घंटों बाद स्प्रे करना बेहतर और बहुत महत्वपूर्ण है",
            "अंतिम घोल तैयार करने के बाद स्प्रे का पीएच जांचना चाहिए। इसे 6.5-7.0 पीएच/ या कवकनाशी पैक पर दिए गए निर्देशानुसार समायोजित किया जाना चाहिए। इससे रासायनिक चोटों से बचा जा सकेगा और बेहतर परिणाम मिलेंगे",
            "बोर्डो मिश्रण को छोड़कर स्प्रे के साथ हमेशा स्प्रेडर स्टिकर का उपयोग करें",
            "कॉपर कवकनाशी को छोड़कर किसी भी कीटनाशक का उपयोग एक मौसम में 2-3 बार से अधिक नहीं किया जाना चाहिए",
            "अवशेष मुक्त उत्पादन के लिए कटाई पूर्व अंतराल के अनुसार स्प्रे को रोटेशन में लिया जा सकता है"
          ],
          "recommendations": [
            "संक्रमित पत्तियों को हटाकर जला दें।",
            "निवारक रूप से कवकनाशी लागू करें।",
            "अच्छा वायु परिसंचरण सुनिश्चित करें।"
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Fruit Rot": {
          "diseaseName": "रोग: एन्थ्रेक्नोज/ फल सड़न/कैलिक्स रॉट",
          "description": "एन्थ्रेक्नोज/फल सड़न अर्ध-शुष्क परिस्थितियों में एक बड़ी समस्या बन रही है। यह रोग उष्णकटिबंधीय और उपोष्णकटिबंधीय क्षेत्रों में आम है।",
          "causalOrganism": "कोलेटोट्रिचम एसपीपी।",
          "symptoms": "कोलेटोट्रिचम के लक्षण फूल, फल, पत्तियों या टहनियों पर विकसित होते हैं, लेकिन फल सबसे अधिक संवेदनशील होते हैं।\n• पत्तियों पर, पीले प्रभामंडल के साथ छोटे गोलाकार धब्बे विकसित होते हैं; बाद में संक्रमित पत्तियां पीली हो जाती हैं जिससे समय से पहले पत्तियां झड़ जाती हैं।\n• फलों पर, पहले लक्षण कैलिक्स सिरे से फल के छिलके के मलिनकिरण या कई अलग-अलग धब्बों के रूप में देखे जाते हैं जो बाद में मिलकर फल की सतह पर अनियमित धब्बे बनाते हैं (कोलेटोट्रिचम एसपीपी।)\n• फीके पड़े क्षेत्र लाल/गहरे भूरे से काले हो जाते हैं। सड़न छिलके से आगे बढ़कर एरिल्स में फैल जाती है, जो विघटित हो जाते हैं और गहरे भूरे/भूरे-काले रंग के होते हैं लेकिन पानीदार नहीं होते हैं। प्रभावित फल बाद के चरण में गिर सकते हैं।\n• फल सेटिंग से लेकर सभी चरणों में इस बीमारी के प्रति सबसे अधिक संवेदनशील होते हैं।",
          "predisposingFactors": "25 - 30 डिग्री सेल्सियस का तापमान और उच्च आर्द्रता (>60%) रोग के विकास के पक्ष में है। गर्मियों के महीनों के दौरान उच्च आर्द्रता, वर्षा और गर्म तापमान रोग की गंभीरता को बढ़ाते हैं",
          "chemicalManagementTitle": "कोलेटोट्रिचम सड़न का रासायनिक प्रबंधन",
          "chemicalManagementIntro": "मौसम की स्थिति के आधार पर 7-10 दिनों के अंतराल पर नीचे दिए गए स्प्रे को वैकल्पिक रूप से लें और अंत में दिए गए महत्वपूर्ण निर्देशों का पालन करें।",
          "sprays": [
            "ज़िनेब 68% + हेक्साकोनाज़ोल 4% WP @ 2.5 ग्राम/लीटर",
            "टेबुकोनाज़ोल 50% + ट्राइफ्लॉक्सीस्ट्रोबिन 25% WG @ 0.5 ग्राम/लीटर",
            "प्रोपीनेब 70% WP @ 3 ग्राम/लीटर",
            "कॉपर ऑक्सीक्लोराइड 45% + कासुगामाइसिन 5% WP @ 2.5 ग्राम/लीटर",
            "एज़ोक्सिस्ट्रोबिन 8.3% + मैनकोज़ेब 66.7% WG @ 1.5 ग्राम/लीटर",
            "फ्लुओपाइरम 21.4% + ट्राइफ्लॉक्सीस्ट्रोबिन 21.4% SC @ 0.7 मिली/लीटर",
            "फ्लुओपिकोलाइड 5.56% + प्रोपामोकार्ब हाइड्रोक्लोराइड 55.6% SC @ 1.25 मिली/लीटर"
          ],
          "importantInstructionsTitle": "महत्वपूर्ण निर्देश",
          "instructions": [
            "फूल आने पर मैंडिप्रोपामाइड 23.4% @ 1 मिली/लीटर (10-15 दिनों में 2-3 स्प्रे) का स्प्रे कई फंगल रोगों के लिए निवारक के रूप में कार्य करता है। इसलिए इसे फूल आने पर लें।",
            "यदि उस दिन बारिश की उम्मीद है तो स्प्रे से बचें; बारिश के कुछ घंटों बाद स्प्रे करना बेहतर और बहुत महत्वपूर्ण है",
            "अंतिम घोल तैयार करने के बाद स्प्रे का पीएच जांचना चाहिए। इसे 6.5-7.0 पीएच/ या कवकनाशी पैक पर दिए गए निर्देशानुसार समायोजित किया जाना चाहिए। इससे रासायनिक चोटों से बचा जा सकेगा और बेहतर परिणाम मिलेंगे",
            "बोर्डो मिश्रण को छोड़कर स्प्रे के साथ हमेशा स्प्रेडर स्टिकर का उपयोग करें",
            "कॉपर कवकनाशी को छोड़कर किसी भी कीटनाशक का उपयोग एक मौसम में 2-3 बार से अधिक नहीं किया जाना चाहिए",
            "अवशेष मुक्त उत्पादन के लिए कटाई पूर्व अंतराल के अनुसार स्प्रे को रोटेशन में लिया जा सकता है"
          ],
          "recommendations": [
            "प्रभावित फल और पत्तियों को हटाकर नष्ट कर दें।",
            "एक उपयुक्त कवकनाशी (जैसे, ज़िनेब, टेबुकोनाज़ोल) लागू करें।",
            "छंटाई के माध्यम से वायु परिसंचरण में सुधार करें।"
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Healthy": {
          "description": "किसी विशिष्ट प्रबंधन की आवश्यकता नहीं है। तनाव या बीमारी के किसी भी लक्षण के लिए पौधे की निगरानी करना जारी रखें और अच्छी कृषि पद्धतियों को बनाए रखें।"
        },
        "Fungal Scab": {
          "diseaseName": "रोग: फल पपड़ी",
          "description": "2016 से, भारत के शुष्क और अर्ध-शुष्क क्षेत्रों में अनार उत्पादन में पपड़ी एक सीमित कारक बन गई है। जिन क्षेत्रों में यह बीमारी प्रचलित है, वहां ऐसे बाग मिलना असामान्य नहीं है जहां 90-100% फल प्रभावित होते हैं।",
          "causalOrganism": "स्फासेलोमा (syn. एल्सिनो) प्युनिका",
          "symptoms": "रोगज़नक़ फूल आने से लेकर फल पकने तक किसी भी अवस्था में हमला करता है। फूल की कलियों या छोटे फलों के संक्रमण से विकृति होती है और परिणामस्वरूप उपज का नुकसान होता है। पके फलों का संक्रमण फलों की उपस्थिति और बाहरी गुणवत्ता को प्रभावित करता है। घाव केवल बाहरी छिलके की सतह को प्रभावित करते हैं, बिना एरिल या रस की गुणवत्ता को प्रभावित किए।\n• फलों पर घाव छोटे या बड़े, भूरे, खुरदरे, उभरे हुए हो सकते हैं, जो छोटे क्षेत्रों से लेकर पूरे फल की सतह को कवर करते हैं, जिससे छिलके को एक रूसेट स्कैब जैसा रूप मिलता है।\n• धब्बे कभी-कभी बड़े होकर हल्के केंद्र और गहरे किनारे वाले बड़े धब्बे बना सकते हैं और छूने में खुरदरे होते हैं।\n• यह छोटे खुरदरे, उभरे हुए धब्बों से लेकर पूरे फल की सतह को कवर करने वाले बड़े भूरे धब्बों तक विभिन्न आकार और आकार के धब्बे पैदा करता है, जिसमें रूसेट जैसा रूप होता है।",
          "predisposingFactors": "22 - 28 डिग्री सेल्सियस का तापमान, बारिश और हवा के साथ 45 - 65% के आसपास की आर्द्रता रोग के विकास के पक्ष में है।",
          "chemicalManagementTitle": "फल पपड़ी का रासायनिक प्रबंधन",
          "chemicalManagementIntro": "यह रोग आमतौर पर बारिश के बाद फलों पर देखा जाता है। पत्तियों पर आम तौर पर तब देखा जाता है जब फल नहीं होते हैं। यदि आपके पास पिछले सीजन में भी पपड़ी थी तो रोग के लक्षणों की प्रतीक्षा न करें, बारिश के बाद निवारक स्प्रे लें। मौसम की स्थिति के आधार पर 7-10 दिनों के अंतराल पर नीचे दिए गए स्प्रे को वैकल्पिक रूप से लें और अंत में दिए गए महत्वपूर्ण निर्देशों का पालन करें,",
          "sprays": [
            "मेटिरम 55% WG + पाइराक्लोस्ट्रोबिन 5% @ 3 ग्राम/लीटर",
            "टेबुकोनाज़ोल 50% + ट्राइफ्लॉक्सीस्ट्रोबिन 25% WG @ 0.5 ग्राम/लीटर",
            "एज़ोक्सिस्ट्रोबिन 18.2% + डाइफेनोकोनाज़ोल 11.4% SC @ 1 मिली/लीटर",
            "ज़िनेब 68% + हेक्साकोनाज़ोल 4% WP @ 2.5 ग्राम/लीटर",
            "फ्लुओपिकोलाइड 5.56% + प्रोपामोकार्ब हाइड्रोक्लोराइड 55.6% SC @"
          ],
          "chemicalManagementNote": "नोट: बारिश के तुरंत बाद दिए जाने पर सर्वोत्तम परिणाम मिलते हैं",
          "importantInstructionsTitle": "महत्वपूर्ण निर्देश",
          "instructions": [
            "फूल आने पर मैंडिप्रोपामाइड 23.4% @ 1 मिली/लीटर (10-15 दिनों में 2-3 स्प्रे) का स्प्रे सर्कोस्पोरा फ्रूट और लीफ स्पॉट और स्कैब सहित कई फंगल रोगों के लिए निवारक के रूप में कार्य करता है। इसलिए इसे फूल आने पर लें।",
            "सेटिंग पर संक्रमित विकृत फलों को हटाया और नष्ट किया जा सकता है। कहीं भी डंप या फेंके नहीं।",
            "यदि उस दिन बारिश की उम्मीद है तो स्प्रे से बचें; पपड़ी के संक्रमण से बचने के लिए बारिश के कुछ घंटों बाद स्प्रे करना बेहतर और बहुत महत्वपूर्ण है।",
            "अंतिम घोल तैयार करने के बाद स्प्रे का पीएच जांचना चाहिए। इसे 6.5-7.0 पीएच/ या कवकनाशी पैक पर दिए गए निर्देशानुसार समायोजित किया जाना चाहिए। इससे रासायनिक चोटों से बचा जा सकेगा और बेहतर परिणाम मिलेंगे",
            "बोर्डो मिश्रण को छोड़कर स्प्रे के साथ हमेशा स्प्रेडर स्टिकर का उपयोग करें",
            "कॉपर कवकनाशी को छोड़कर किसी भी कीटनाशक का उपयोग एक मौसम में 2-3 बार से अधिक नहीं किया जाना चाहिए",
            "अवशेष मुक्त उत्पादन के लिए कटाई पूर्व अंतराल के अनुसार स्प्रे को रोटेशन में लिया जा सकता है"
          ],
          "recommendations": [
            "संक्रमित या विकृत फलों को हटाकर नष्ट कर दें।",
            "बारिश के बाद निवारक स्प्रे (जैसे, मेटिरम, टेबुकोनाज़ोल) लागू करें।",
            "वायु परिसंचरण में सुधार के लिए पेड़ों की छंटाई करें।"
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Bacterial": {
          "diseaseName": "रोग: बैक्टीरियल लीफ स्पॉट/ऑयली स्पॉट",
          "description": "अनार में बैक्टीरियल ब्लाइट अनुकूल परिस्थितियों में आर्थिक उपज हानि (60-100%) का कारण बनता है। यह जून-जुलाई में बरसात के मौसम (मृग बहार) में अधिक गंभीर और प्रचलित है और रबी मौसम (हस्ता बहार) में कम होता है।",
          "causalOrganism": "जैन्थोमोनास एक्सोनोपोडिस pv. प्युनिका (Syn: जैन्थोमोनास सिट्री pv. प्युनिका)",
          "symptoms": "• रोग के लक्षण पौधे के सभी भागों यानी पत्तियों, तनों, फूलों और फलों पर देखे जाते हैं।\n• प्रारंभ में, पत्तियों पर छोटे अनियमित भूरे-काले पानी से लथपथ घाव देखे जाते हैं जो रोग की प्रगति के साथ बड़े हो जाते हैं। रोगग्रस्त पत्तियां धीरे-धीरे पीली हो जाती हैं और गिर जाती हैं (प्लेट 1 ए)।\n• बारिश/स्प्रे/ओस के बाद जीवाणु का रिसाव होता है, जो हाथों को चिपचिपा लगता है और सूखने के बाद सतह पर सफेद चमकदार पपड़ी देता है। (प्लेट 1 सी)।",
          "predisposingFactors": "तापमान (25 – 30o C), सापेक्ष आर्द्रता (>50%), वर्षा, अनुशंसित से अधिक नाइट्रोजन की खुराक का अनुप्रयोग, सूक्ष्म पोषक तत्वों की कमी।",
          "cropSeasonManagementTitle": "फसल के मौसम के दौरान प्रबंधन प्रथाएं",
          "cropSeasonManagement": [
            "कटाई के बाद आराम की अवधि के दौरान और फल लगने तक नए बाग लगाने के बाद भी प्रोफिलैक्टिक स्प्रे लेना चाहिए।",
            "बाग/पड़ोसी बागों में मौजूद बीमारी और मौसम की स्थिति के आधार पर 15 - 20 दिनों के अंतराल पर ब्रोनोपोल @ 0.5 ग्राम/लीटर के साथ कॉपर ऑक्सीक्लोराइड या कॉपर हाइड्रॉक्साइड @ 2 -2.5 ग्राम/लीटर जैसे तांबे आधारित फॉर्मूलेशन के साथ बोर्डो मिश्रण (1%) का स्प्रे करें।",
            "यदि बाग आराम की अवधि में हैं और उनमें पत्ती ब्लाइट संक्रमण है, तो बोर्डो मिश्रण और ब्रोनोपोल के साथ स्ट्रेप्टोसाइक्लिन @ 0.5 ग्राम/लीटर का एक स्प्रे लिया जा सकता है।"
          ],
          "cropSeasonManagementNote": "नोट: यदि यह एक बैक्टीरियल ब्लाइट मुक्त क्षेत्र है तो स्ट्रेप्टोसाइक्लिन या ब्रोनोपोल के स्प्रे की आवश्यकता नहीं है।",
          "emergencySpraysTitle": "आपातकालीन स्प्रे",
          "emergencySpraysIntro": "पत्तियों पर 5-10% ब्लाइट संक्रमण देखे जाने के तुरंत बाद 4 दिनों के अंतराल पर 1-2 स्प्रे आगे ब्लाइट के प्रसार को रोकते हैं।",
          "emergencySprays": [
            "स्ट्रेप्टोसाइक्लिन @ 0.5 ग्राम/लीटर + 2-ब्रोमो-नाइट्रोप्रोपेन-1, 3-डायोल (ब्रोनोपोल 95%) @ 0.5 ग्राम/लीटर + कॉपर हाइड्रॉक्साइड 53.8% WP @ 2.0 ग्राम/लीटर + स्प्रेडर स्टिकर @ 0.5 मिली/लीटर घोल।",
            "स्ट्रेप्टोसाइक्लिन @ 0.5 ग्राम/लीटर + 2-ब्रोμο-नाइट्रोप्रोपेन-1, 3-डायोल (ब्रोनोपोल 95%) @ 0.5 ग्राम/लीटर + कार्बेन्डाजिम 50% WP @ 1.0 ग्राम/लीटर + स्प्रेडर स्टिकर @ 0.5 मिली/लीटर घोल।"
          ],
          "emergencySpraysNote": "नोट:\n• प्रत्येक स्प्रे से पहले ब्लाइट प्रभावित फलों को हटाकर नष्ट कर दें। बाग की उचित स्वच्छता बनाए रखें और आराम की अवधि में निवारक स्प्रे लें।",
          "recommendations": [
            "पत्तियों को सूखा रखने के लिए ओवरहेड सिंचाई से बचें।",
            "निवारक उपाय के रूप में तांबे पर आधारित स्प्रे लागू करें।",
            "संक्रमित पत्तियों को तुरंत हटा दें और नष्ट कर दें।"
          ]
        },
        "Fungal": {
          "diseaseName": "रोग: फंगल पत्ती धब्बे",
          "description": "अनार कई पत्ती धब्बे पैदा करने वाले रोगजनकों के प्रति संवेदनशील है जो फलों की उपज और गुणवत्ता को कम कर सकते हैं",
          "causalOrganism": "पत्ती के धब्बे कई फंगल रोगजनकों जैसे अल्टरनेरिया अल्टरनेटा, सर्कोस्पोरा प्यूनिका (स्यूडोसेरकोस्पोरा प्यूनिका), कोलेटोट्रिचम एसपी, ड्रेक्स्क्लेरा रोस्ट्रेटा के कारण होते हैं। इसके अलावा पत्ती के धब्बे कई अन्य फंगल प्रजातियों जैसे बोट्रीडिप्लोडिया थियोब्रोमी, कर्वुलरिया एसपी, पेस्टलोटिओप्सिस एसपी के कारण भी बताए गए हैं।",
          "symptoms": "विभिन्न रोगजनक विशेष रूप से पत्तियों, तनों पर विशिष्ट धब्बे के लक्षण पैदा करते हैं। जिसकी सटीक पहचान केवल सूक्ष्म और शुद्ध संस्कृति अध्ययन के माध्यम से की जा सकती है क्योंकि अधिकांश समय प्राकृतिक परिस्थितियों में अतिव्यापी रोग लक्षण देखे जाते हैं। पत्ती और फलों के धब्बों में, सर्कोस्पोरा धब्बे अनार पर सबसे प्रमुख होते हैं।",
          "predisposingFactors": "20 - 30 डिग्री सेल्सियस के बीच तापमान और लंबी अवधि के लिए 60% से ऊपर की आर्द्रता रोग के विकास के पक्ष में है। बरसात के मौसम में पत्ती और फलों के धब्बे अक्सर अधिक प्रचलित होते हैं",
          "chemicalManagementTitle": "फंगल पत्ती धब्बों का रासायनिक प्रबंधन",
          "chemicalManagementIntro": "मौसम की स्थिति के आधार पर 7-10 दिनों के अंतराल पर नीचे दिए गए स्प्रे को वैकल्पिक रूप से लें और अंत में दिए गए महत्वपूर्ण निर्देशों का पालन करें।",
          "sprays": [
            "ज़िनेब 75% WP @ 2 ग्राम/लीटर",
            "ज़िनेब 68% + हेक्साकोनाज़ोल 4% WP @ 2.5 ग्राम/लीटर",
            "मेटिरम 55% WG + पाइराक्लोस्ट्रोबिन 5% @ 3 ग्राम/लीटर",
            "टेबुकोनाज़ोल 50% + ट्राइफ्लॉक्सीस्ट्रोबिन 25% WG @ 0.5 ग्राम/लीटर",
            "प्रोपीनेब 70% WP @ 3 ग्राम/लीटर",
            "ट्राइसाइक्लाज़ोल 18% + मैनकोज़ेब 62% WP 2.5 से 3.0 ग्राम/लीटर",
            "कॉपर सल्फेट 47.15% + मैनकोज़ेब 30% WDG @ 2.5 ग्राम/लीटर",
            "एज़ोक्सिस्ट्रोबिन 8.3% + मैनकोज़ेब 66.7% WG @ 1.5 ग्राम/लीटर"
          ],
          "importantInstructionsTitle": "महत्वपूर्ण निर्देश",
          "instructions": [
            "फूल आने पर मैंडिप्रोपामाइड 23.4% @ 1 मिली/लीटर (10-15 दिनों में 2-3 स्प्रे) का स्प्रे सर्कोस्पोरा फ्रूट और लीफ स्पॉट और स्कैब सहित कई फंगल रोगों के लिए निवारक के रूप में कार्य करता है। इसलिए इसे फूल आने पर लें।",
            "यदि उस दिन बारिश की उम्मीद है तो स्प्रे से बचें; बारिश के कुछ घंटों बाद स्प्रे करना बेहतर और बहुत महत्वपूर्ण है",
            "अंतिम घोल तैयार करने के बाद स्प्रे का पीएच जांचना चाहिए। इसे 6.5-7.0 पीएच/ या कवकनाशी पैक पर दिए गए निर्देशानुसार समायोजित किया जाना चाहिए। इससे रासायनिक चोटों से बचा जा सकेगा और बेहतर परिणाम मिलेंगे",
            "बोर्डो मिश्रण को छोड़कर स्प्रे के साथ हमेशा स्प्रेडर स्टिकर का उपयोग करें",
            "कॉपर कवकनाशी को छोड़कर किसी भी कीटनाशक का उपयोग एक मौसम में 2-3 बार से अधिक नहीं किया जाना चाहिए",
            "अवशेष मुक्त उत्पादन के लिए कटाई पूर्व अंतराल के अनुसार स्प्रे को रोटेशन में लिया जा सकता है"
          ],
          "recommendations": [
            "उपयुक्त कवकनाशी लागू करें, विभिन्न रासायनिक समूहों के बीच बारी-बारी से।",
            "छंटाई के माध्यम से वायु परिसंचरण में सुधार करें।",
            "पत्तियों को सूखा रखने के लिए पौधे के आधार पर पानी दें।"
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        }
      },
      'selectModelAndImage': 'मॉडल और छवि चुनें',
      'modelsLoading': 'कृपया प्रतीक्षा करें, मॉडल लोड हो रहे हैं...',
      'runningInference': 'अनुमान चल रहा है...',
      'inferenceError': 'अनुमान त्रुटि',
      'modelLoadFailed': 'मॉडल लोड विफल: {error}',
      'inferenceFailed': 'अनुमान विफल: {error}',
      'gallery': 'गैलरी',
      'camera': 'कैमरा',
      'selectImageSource': 'छवि स्रोत चुनें',
      'featureComingSoon': 'अधिक अपडेट के लिए बने रहें!',
      'noManagementInfo': 'इस बीमारी के लिए कोई प्रबंधन जानकारी उपलब्ध नहीं है।',
      'ok': 'ठीक है',
      'confidence': 'आत्मविश्वास: {score}%',
      'resultLabel': 'परिणाम:',
      'confidenceScoreLabel': 'आत्मविश्वास स्कोर:',
      'faqTitle': 'अक्सर पूछे जाने वाले प्रश्न',
      'faqData': _faqData, // Needs translation
      'feedbackTitle': 'प्रतिक्रिया',
      'feedbackHint': 'अपनी प्रतिक्रिया यहाँ दर्ज करें...',
      'submitFeedback': 'प्रतिक्रिया भेजें',
      'feedbackCannotBeEmpty': 'प्रतिक्रिया खाली नहीं हो सकती।',
      'couldNotLaunchEmail': 'ईमेल ऐप नहीं खुल सका।',
      'searchFaqsHint': 'पूछे जाने वाले प्रश्न खोजें...',
    },
    'mr': {
      'appTitle': 'अनाररक्षक',
      'appTagline': 'तुमचा डाळिंब फार्म गार्ड',
      'selectModelAndImage': 'मॉडेल निवडा आणि एक प्रतिमा निवडा',
      'modelsLoading': 'कृपया थांबा, मॉडेल्स लोड होत आहेत...',
      'runningInference': 'अनुमान चालू आहे...',
      'inferenceError': 'अनुमानात त्रुटी',
      'modelLoadFailed': 'मॉडेल लोड अयशस्वी: {error}',
      'inferenceFailed': 'अनुमान अयशस्वी: {error}',
      'gallery': 'गॅलरी',
      'camera': 'कॅमेरा',
      'diseaseCategory': 'रोग',
      'pestsCategory': 'कीटक आणि कीड',
      'fruit': 'फळ/फूल',
      'leaf': 'पान',
      'root': 'मूळ',
      'insects': 'कीटक',
      'insectsDescription': 'जिवंत/मृत कीटक',
      'flowers': 'पाने/फुले/फळे',
      'selectImageSource': 'प्रतिमा स्रोत निवडा',
      'featureComingSoon': 'हे वैशिष्ट्य लवकरच लागू केले जाईल.',
      'showManagementTechniques': 'व्यवस्थापन तंत्र\nदाखवा',
      'managementTechniquesTitle': 'व्यवस्थापन तंत्र',
      'noManagementInfo': 'या रोगासाठी कोणतीही व्यवस्थापन माहिती उपलब्ध नाही.',
      'ok': 'ठीक आहे',
      'causalOrganismLabel': 'कारक जीव',
      'symptomsLabel': 'लक्षणे',
      'predisposingFactorsLabel': 'अनुकूल घटक',
      'recommendationsLabel': 'शिफारसी',
      'sourceUrlLabel': 'स्रोत',
      'confidence': 'अचूकता: {score}%',
      'Bacterial Blight': 'बॅक्टेरियल ब्लाइट',
      'Calyx Rot': 'कॅलिक्स रॉट',
      'Fungal Cercospora': 'फंगल सर्कोस्पोरा',
      'Fruit Rot': 'फळांची सड',
      'Healthy': 'निरोगी',
      'management': {
        "Bacterial Blight": {
          "diseaseName": "रोग: बॅक्टेरियल ब्लाइट",
          "description": "अनुकूल परिस्थितीत डाळिंबामध्ये बॅक्टेरियल ब्लाइटमुळे आर्थिक उत्पन्नाचे नुकसान (60-100%) होते. जून-जुलैमध्ये पावसाळ्यात (मृग बहार) ते अधिक गंभीर आणि प्रचलित असते आणि रब्बी हंगामात (हस्ता बहार) कमी असते.",
          "causalOrganism": "झँथोमोनास ऍक्सोनोपोडिस पीव्ही. प्युनिके (Syn: झँथोमोनास सिट्री पीव्ही. प्युनिके)",
          "symptoms": "• रोगाची लक्षणे वनस्पतीच्या सर्व भागांवर म्हणजेच पाने, देठ, फुले आणि फळांवर दिसून येतात.\n• सुरुवातीला, पानांवर लहान अनियमित राखाडी-काळे पाण्याने भिजलेले व्रण दिसतात जे रोगाच्या प्रगतीनुसार मोठे होतात. रोगग्रस्त पाने हळूहळू पिवळी पडून गळून पडतात (प्लेट 1a).\n• फांद्या आणि देठांवर काळे व्रण प्रामुख्याने नोड्सवर दिसतात, ज्यामुळे दाबलेल्या वाढीसह कॅन्कर तयार होतो (प्लेट 1b).\n• विकसित फळांवर रोगाची लक्षणे ठळकपणे दिसतात. राखाडी-काळे व्रण मोठे होतात आणि एकत्र येतात, ज्यामुळे संपूर्ण फळाची पृष्ठभाग झाकली जाते. संक्रमित फळांमध्ये अनेकदा भेगा दिसतात. पाऊस/स्प्रे/दव यानंतर बॅक्टेरियाचा स्राव बाहेर येतो, जो हाताला चिकट लागतो आणि वाळल्यानंतर पृष्ठभागावर पांढरा चमकदार थर तयार करतो. (प्लेट 1c).",
          "predisposingFactors": "तापमान (25 – 30° से), सापेक्ष आर्द्रता (>50%), पाऊस, शिफारस केलेल्या पेक्षा जास्त नायट्रोजन डोसचा वापर, सूक्ष्म अन्नद्रव्यांची कमतरता.",
          "pruningManagementTitle": "छाटणी दरम्यान व्यवस्थापन पद्धती",
          "pruningManagement": [
            "जर देठाचा संसर्ग गंभीर असेल, तर काढणीनंतर लगेचच जोरदार छाटणी करा आणि ब्लाइट संसर्ग असलेले सर्व देठ काढून टाका. संक्रमित भागाच्या खाली सुमारे 2 - 3 इंच छाटणी करा.",
            "छाटणीनंतर कापलेल्या टोकांना बोर्डो पेस्ट (10%) लावा. पावसाळ्यात पेस्टिंगसाठी तेल-आधारित पेस्ट [500 ग्रॅम सीओसी + 1 लिटर जवस तेल मिसळून तयार केलेला सीओसी पेंट] पसंत केला जातो किंवा 50 मिली/लिटर पेस्टमध्ये तेल मिसळा."
          ],
          "cropSeasonManagementTitle": "पीक हंगामात व्यवस्थापन पद्धती",
          "cropSeasonManagement": [
            "काढणीनंतर विश्रांतीच्या काळात आणि फळे येईपर्यंत नवीन बाग लावल्यानंतरही प्रतिबंधात्मक फवारण्या घ्याव्यात.",
            "बागेत/शेजारील बागेत असलेल्या रोगावर आणि हवामानाच्या परिस्थितीनुसार 15 - 20 दिवसांच्या अंतराने ब्रोनोपोल @ 0.5 ग्रॅम/लिटरसह कॉपर ऑक्सिक्लोराइड किंवा कॉपर हायड्रॉक्साइड @ 2 -2.5 ग्रॅम/लिटर सारख्या तांबे-आधारित फॉर्म्युलेशनसह बदलून बोर्डो मिश्रण (1%) फवारा.",
            "जर बागा विश्रांतीच्या काळात असतील आणि त्यांना पानांच्या ब्लाइटचा संसर्ग असेल, तर बोर्डो मिश्रण आणि ब्रोनोपोलसह बदलून स्ट्रेप्टोसायक्लिन @ 0.5 ग्रॅम/लिटरची एक फवारणी घेता येते."
          ],
          "cropSeasonManagementNote": "टीप: जर ते बॅक्टेरियल ब्लाइट मुक्त क्षेत्र असेल तर स्ट्रेप्टोसायक्लिन किंवा ब्रोनोपोलच्या फवारण्यांची आवश्यकता नाही.",
          "emergencySpraysTitle": "आपत्कालीन फवारण्या",
          "emergencySpraysIntro": "फळांवर 5-10% ब्लाइट संसर्ग दिसल्यानंतर लगेचच 4 दिवसांच्या अंतराने 1-2 फवारण्या केल्याने ब्लाइटचा पुढील प्रसार रोखला जातो.",
          "emergencySprays": [
            "स्ट्रेप्टोसायक्लिन @ 0.5 ग्रॅम/लिटर + 2-ब्रोमो-नायट्रोप्रोपेन-1, 3-डायोल (ब्रोनोपोल 95%) @ 0.5 ग्रॅम/लिटर + कॉपर हायड्रॉक्साइड 53.8% WP @ 2.0 ग्रॅम/लिटर + स्प्रेडर स्टिकर @ 0.5 मिली/लिटर द्रावण.",
            "स्ट्रेप्टोसायक्लिन @ 0.5 ग्रॅम/लिटर + 2-ब्रोमो-नायट्रोप्रोपेन-1, 3-डायोल (ब्रोनोपोल 95%) @ 0.5 ग्रॅम/लिटर + कार्बेन्डाझिम 50% WP @ 1.0 ग्रॅम/लिटर + स्प्रेडर स्टिकर @ 0.5 मिली/लिटर द्रावण."
          ],
          "emergencySpraysNote": "टीप:\n• प्रत्येक फवारणीपूर्वी ब्लाइट-प्रभावित फळे काढून टाका आणि नष्ट करा. बागेची योग्य स्वच्छता राखा आणि विश्रांतीच्या काळात प्रतिबंधात्मक फवारण्या घ्या.",
          "recommendations": [
            "ब्लाइट संसर्ग असलेले सर्व देठ छाटून काढून टाका.",
            "छाटणीनंतर कापलेल्या टोकांना बोर्डो पेस्ट लावा.",
            "बोर्डो मिश्रण किंवा ब्रोनोपोल सारख्या प्रतिबंधात्मक फवारण्या वापरा.",
            "प्रत्येक फवारणीपूर्वी ब्लाइट-प्रभावित फळे काढून टाका आणि नष्ट करा."
          ]
        },
        "Calyx Rot": {
          "diseaseName": "रोग: अँथ्रॅकनोज/फळ सड/कॅलिक्स रॉट",
          "description": "अर्ध-शुष्क परिस्थितीत अँथ्रॅकनोज/फळ सड ही एक मोठी समस्या बनत आहे. हा रोग उष्णकटिबंधीय आणि उपोष्णकटिबंधीय प्रदेशात सामान्य आहे.",
          "causalOrganism": "कोलेटोट्रायकम एसपीपी.",
          "symptoms": "कोलेटोट्रायकमची लक्षणे फुले, फळे, पाने किंवा फांद्यांवर विकसित होतात, परंतु फळे सर्वात जास्त संवेदनशील असतात.\n• पानांवर, पिवळ्या प्रभामंडलासह लहान गोलाकार ठिपके विकसित होतात; नंतर संक्रमित पाने पिवळी पडतात ज्यामुळे अकाली पानगळ होते.\n• फळांवर, पहिली लक्षणे कॅलिक्सच्या टोकापासून फळाच्या सालीचा रंग बदलणे किंवा असंख्य वेगळे ठिपके म्हणून दिसून येतात जे नंतर एकत्र येऊन फळाच्या पृष्ठभागावर अनियमित डाग तयार करतात (कोलेटोट्रायकम एसपीपी.)\n• रंगहीन भाग लालसर/गडद तपकिरी ते काळे होतात. सड सालीच्या पलीकडे अरिल्समध्ये पसरते, जे विघटित होतात आणि गडद राखाडी/तपकिरी-काळे रंगाचे असतात परंतु पाणचट नसतात. प्रभावित फळे नंतरच्या टप्प्यात गळून पडू शकतात.\n• फळे सेट होण्यापासून ते सर्व टप्प्यांवर या रोगासाठी सर्वात असुरक्षित असतात.",
          "predisposingFactors": "25 - 30°C तापमान आणि उच्च आर्द्रता (>60%) रोगाच्या विकासास अनुकूल आहे. उन्हाळ्याच्या महिन्यांत उच्च आर्द्रता, पाऊस आणि उबदार तापमान रोगाची तीव्रता वाढवते.",
          "chemicalManagementTitle": "कोलेटोट्रायकम सडचे रासायनिक व्यवस्थापन",
          "chemicalManagementIntro": "हवामानाच्या परिस्थितीनुसार 7-10 दिवसांच्या अंतराने खाली नमूद केलेल्या फवारण्या वैकल्पिकरित्या घ्या आणि शेवटी दिलेल्या महत्त्वाच्या सूचनांचे पालन करा.",
          "sprays": [
            "झिनेब 68% + हेक्साकोनाझोल 4% WP @ 2.5 ग्रॅम/लिटर",
            "टेबुकोनाझोल 50% + ट्रायफ्लॉक्सीस्ट्रोबिन 25% WG @ 0.5 ग्रॅम/लिटर",
            "प्रोपीनेब 70% WP @ 3 ग्रॅम/लिटर",
            "कॉपर ऑक्सिक्लोराइड 45% + कासुगामायसिन 5% WP @ 2.5 ग्रॅम/लिटर",
            "ऍझोक्सिस्ट्रोबिन 8.3% + मॅन्कोझेब 66.7% WG @ 1.5 ग्रॅम/लिटर",
            "फ्लुओपायरम 21.4% + ट्रायफ्लॉक्सीस्ट्रोबिन 21.4% SC @ 0.7 मिली/लिटर",
            "फ्लुओपिकोलाइड 5.56% + प्रोपामोकार्ब हायड्रोक्लोराइड 55.6% SC @ 1.25 मिली/लिटर"
          ],
          "importantInstructionsTitle": "महत्वाच्या सूचना",
          "instructions": [
            "फुलोऱ्याच्या वेळी मॅन्डिप्रोपॅमिड 23.4% @ 1 मिली/लिटर (10-15 दिवसांनी 2-3 फवारण्या) फवारल्याने अनेक बुरशीजन्य रोगांवर प्रतिबंधात्मक उपाय म्हणून काम करते. त्यामुळे हे फुलोऱ्याच्या वेळी घ्या.",
            "त्या दिवशी पावसाची शक्यता असल्यास फवारणी टाळा; पावसानंतर काही तासांनी फवारणी करणे चांगले आणि खूप महत्त्वाचे आहे.",
            "अंतिम द्रावण तयार केल्यानंतर फवारणीचा pH तपासावा. तो 6.5-7.0 pH/ किंवा बुरशीनाशक पॅकवर दिलेल्या निर्देशानुसार समायोजित करावा. यामुळे रासायनिक इजा टाळता येईल आणि चांगले परिणाम मिळतील.",
            "बोर्डो मिश्रणाशिवाय फवारणीसोबत नेहमी स्प्रेडर स्टिकर वापरा.",
            "तांबे बुरशीनाशकांशिवाय कोणत्याही कीटकनाशकाचा वापर एका हंगामात 2-3 पेक्षा जास्त वेळा करू नये.",
            "अवशेषमुक्त उत्पादनासाठी काढणीपूर्व अंतरानुसार फवारण्या रोटेशनमध्ये घेता येतात."
          ],
          "recommendations": [
            "प्रभावित फळे आणि पाने काढून टाका आणि नष्ट करा.",
            "योग्य बुरशीनाशक (उदा., झिनेब, टेबुकोनाझोल) लावा.",
            "छाटणीद्वारे हवेच्या अभिसरणात सुधारणा करा."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Fungal Cercospora": {
          "diseaseName": "रोग: सर्कोस्पोरा फ्रूट स्पॉट",
          "description": "डाळिंब बुरशीच्या फळांच्या ठिपक्यांसाठी संवेदनशील आहे, विशेषतः सर्कोस्पोरा प्युनिके (स्यूडोसेर्कोस्पोरा प्युनिके) रोगकारक जे फळांचे उत्पादन आणि गुणवत्ता कमी करू शकतात.",
          "causalOrganism": "सर्कोस्पोरा प्युनिके (स्यूडोसेर्कोस्पोरा प्युनिके)",
          "symptoms": "रोगकारक विशेषतः फळांवर वैशिष्ट्यपूर्ण ठिपक्यांची लक्षणे निर्माण करतो. लहान, अनियमित ठिपके जे सुरुवातीला गोलाकार असतात परंतु मोठे आणि गडद होतात.",
          "predisposingFactors": "20 - 30°C तापमान आणि दीर्घ कालावधीसाठी 60% पेक्षा जास्त आर्द्रता रोगाच्या विकासास अनुकूल आहे. पावसाळ्यात पानांचे आणि फळांचे ठिपके अधिक प्रमाणात आढळतात.",
          "chemicalManagementTitle": "बुरशीजन्य पानांच्या आणि फळांच्या ठिपक्यांचे रासायनिक व्यवस्थापन",
          "chemicalManagementIntro": "हवामानाच्या परिस्थिती आणि रोगाच्या दाबावर अवलंबून 7-10 दिवसांच्या अंतराने खाली नमूद केलेल्या फवारण्या वैकल्पिकरित्या घ्या आणि शेवटी दिलेल्या महत्त्वाच्या सूचनांचे पालन करा.",
          "sprays": [
            "झिनेब 75% WP @ 2 ग्रॅम/लिटर",
            "झिनेब 68% + हेक्साकोनाझोल 4% WP @ 2.5 ग्रॅम/लिटर",
            "मेटिराम 55% WG + पायराक्लोस्ट्रोबिन 5% @ 3 ग्रॅम/लिटर",
            "टेबुकोनाझोल 50% + ट्रायफ्लॉक्सीस्ट्रोबिन 25% WG @ 0.5 ग्रॅम/लिटर",
            "प्रोपीनेब 70% WP @ 3 ग्रॅम/लिटर",
            "ट्रायसायक्लाझोल 18% + मॅन्कोझेब 62% WP 2.5 ते 3.0 ग्रॅम/लिटर",
            "कॉपर सल्फेट 47.15% + मॅन्कोझेब 30% WDG @ 2.5 ग्रॅम/लिटर",
            "ऍझोक्सिस्ट्रोबिन 8.3% + मॅन्कोझेब 66.7% WG @ 1.5 ग्रॅम/लिटर"
          ],
          "importantInstructionsTitle": "महत्वाच्या सूचना",
          "instructions": [
            "फुलोऱ्याच्या वेळी मॅन्डिप्रोपॅमिड 23.4% @ 1 मिली/लिटर (10-15 दिवसांनी 2-3 फवारण्या) फवारल्याने सर्कोस्पोरा फ्रूट आणि लीफ स्पॉट आणि स्कॅबसह अनेक बुरशीजन्य रोगांवर प्रतिबंधात्मक उपाय म्हणून काम करते. त्यामुळे हे फुलोऱ्याच्या वेळी घ्या.",
            "त्या दिवशी पावसाची शक्यता असल्यास फवारणी टाळा; पावसानंतर काही तासांनी फवारणी करणे चांगले आणि खूप महत्त्वाचे आहे.",
            "अंतिम द्रावण तयार केल्यानंतर फवारणीचा pH तपासावा. तो 6.5-7.0 pH/ किंवा बुरशीनाशक पॅकवर दिलेल्या निर्देशानुसार समायोजित करावा. यामुळे रासायनिक इजा टाळता येईल आणि चांगले परिणाम मिळतील.",
            "बोर्डो मिश्रणाशिवाय फवारणीसोबत नेहमी स्प्रेडर स्टिकर वापरा.",
            "तांबे बुरशीनाशकांशिवाय कोणत्याही कीटकनाशकाचा वापर एका हंगामात 2-3 पेक्षा जास्त वेळा करू नये.",
            "अवशेषमुक्त उत्पादनासाठी काढणीपूर्व अंतरानुसार फवारण्या रोटेशनमध्ये घेता येतात."
          ],
          "recommendations": [
            "संक्रमित पाने काढून टाका आणि जाळून टाका.",
            "प्रतिबंधात्मकपणे बुरशीनाशके लावा.",
            "चांगल्या हवेच्या अभिसरणाची खात्री करा."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Fruit Rot": {
          "diseaseName": "रोग: अँथ्रॅकनोज/फळ सड/कॅलिक्स रॉट",
          "description": "अर्ध-शुष्क परिस्थितीत अँथ्रॅकनोज/फळ सड ही एक मोठी समस्या बनत आहे. हा रोग उष्णकटिबंधीय आणि उपोष्णकटिबंधीय प्रदेशात सामान्य आहे.",
          "causalOrganism": "कोलेटोट्रायकम एसपीपी.",
          "symptoms": "कोलेटोट्रायकमची लक्षणे फुले, फळे, पाने किंवा फांद्यांवर विकसित होतात, परंतु फळे सर्वात जास्त संवेदनशील असतात.\n• पानांवर, पिवळ्या प्रभामंडलासह लहान गोलाकार ठिपके विकसित होतात; नंतर संक्रमित पाने पिवळी पडतात ज्यामुळे अकाली पानगळ होते.\n• फळांवर, पहिली लक्षणे कॅलिक्सच्या टोकापासून फळाच्या सालीचा रंग बदलणे किंवा असंख्य वेगळे ठिपके म्हणून दिसून येतात जे नंतर एकत्र येऊन फळाच्या पृष्ठभागावर अनियमित डाग तयार करतात (कोलेटोट्रायकम एसपीपी.)\n• रंगहीन भाग लालसर/गडद तपकिरी ते काळे होतात. सड सालीच्या पलीकडे अरिल्समध्ये पसरते, जे विघटित होतात आणि गडद राखाडी/तपकिरी-काळे रंगाचे असतात परंतु पाणचट नसतात. प्रभावित फळे नंतरच्या टप्प्यात गळून पडू शकतात.\n• फळे सेट होण्यापासून ते सर्व टप्प्यांवर या रोगासाठी सर्वात असुरक्षित असतात.",
          "predisposingFactors": "25 - 30°C तापमान आणि उच्च आर्द्रता (>60%) रोगाच्या विकासास अनुकूल आहे. उन्हाळ्याच्या महिन्यांत उच्च आर्द्रता, पाऊस आणि उबदार तापमान रोगाची तीव्रता वाढवते.",
          "chemicalManagementTitle": "कोलेटोट्रायकम सडचे रासायनिक व्यवस्थापन",
          "chemicalManagementIntro": "हवामानाच्या परिस्थितीनुसार 7-10 दिवसांच्या अंतराने खाली नमूद केलेल्या फवारण्या वैकल्पिकरित्या घ्या आणि शेवटी दिलेल्या महत्त्वाच्या सूचनांचे पालन करा.",
          "sprays": [
            "झिनेब 68% + हेक्साकोनाझोल 4% WP @ 2.5 ग्रॅम/लिटर",
            "टेबुकोनाझोल 50% + ट्रायफ्लॉक्सीस्ट्रोबिन 25% WG @ 0.5 ग्रॅम/लिटर",
            "प्रोपीनेब 70% WP @ 3 ग्रॅम/लिटर",
            "कॉपर ऑक्सिक्लोराइड 45% + कासुगामायसिन 5% WP @ 2.5 ग्रॅम/लिटर",
            "ऍझोक्सिस्ट्रोबिन 8.3% + मॅन्कोझेब 66.7% WG @ 1.5 ग्रॅม/लिटर",
            "फ्लुओपायरम 21.4% + ट्रायफ्लॉक्सीस्ट्रोबिन 21.4% SC @ 0.7 मिली/लिटर",
            "फ्लुओपिकोलाइड 5.56% + प्रोपामोकार्ब हायड्रोक्लोराइड 55.6% SC @ 1.25 मिली/लिटर"
          ],
          "importantInstructionsTitle": "महत्वाच्या सूचना",
          "instructions": [
            "फुलोऱ्याच्या वेळी मॅन्डिप्रोपॅमिड 23.4% @ 1 मिली/लिटर (10-15 दिवसांनी 2-3 फवारण्या) फवारल्याने अनेक बुरशीजन्य रोगांवर प्रतिबंधात्मक उपाय म्हणून काम करते. त्यामुळे हे फुलोऱ्याच्या वेळी घ्या.",
            "त्या दिवशी पावसाची शक्यता असल्यास फवारणी टाळा; पावसानंतर काही तासांनी फवारणी करणे चांगले आणि खूप महत्त्वाचे आहे.",
            "अंतिम द्रावण तयार केल्यानंतर फवारणीचा pH तपासावा. तो 6.5-7.0 pH/ किंवा बुरशीनाशक पॅकवर दिलेल्या निर्देशानुसार समायोजित करावा. यामुळे रासायनिक इजा टाळता येईल आणि चांगले परिणाम मिळतील.",
            "बोर्डो मिश्रणाशिवाय फवारणीसोबत नेहमी स्प्रेडर स्टिकर वापरा.",
            "तांबे बुरशीनाशकांशिवाय कोणत्याही कीटकनाशकाचा वापर एका हंगामात 2-3 पेक्षा जास्त वेळा करू नये.",
            "अवशेषमुक्त उत्पादनासाठी काढणीपूर्व अंतरानुसार फवारण्या रोटेशनमध्ये घेता येतात."
          ],
          "recommendations": [
            "प्रभावित फळे आणि पाने काढून टाका आणि नष्ट करा.",
            "योग्य बुरशीनाशक (उदा., झिनेब, टेबुकोनाझोल) लावा.",
            "छाटणीद्वारे हवेच्या अभिसरणात सुधारणा करा."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Healthy": {
          "description": "कोणत्याही विशिष्ट व्यवस्थापनाची आवश्यकता नाही. तणाव किंवा रोगाच्या कोणत्याही चिन्हांसाठी वनस्पतीचे निरीक्षण करणे सुरू ठेवा आणि चांगल्या कृषी पद्धती राखा."
        },
        "Fungal Scab": {
          "diseaseName": "रोग: फळ स्कॅब",
          "description": "2016 पासून, भारतातील शुष्क आणि अर्ध-शुष्क प्रदेशात डाळिंब उत्पादनात स्कॅब हा एक मर्यादित घटक बनला आहे. ज्या भागात हा रोग प्रचलित आहे, तेथे 90-100% फळे प्रभावित असलेली बाग शोधणे असामान्य नाही.",
          "causalOrganism": "स्फासेलोमा (syn. एल्सिनो) प्युनिके",
          "symptoms": "रोगकारक फुलोऱ्यापासून ते फळ परिपक्व होईपर्यंत कोणत्याही टप्प्यावर हल्ला करतो. फुलांच्या कळ्या किंवा लहान फळांच्या संसर्गामुळे विकृती येते आणि परिणामी उत्पन्नाचे नुकसान होते. परिपक्व फळांचा संसर्ग फळांच्या स्वरूपावर आणि बाह्य गुणवत्तेवर परिणाम करतो. व्रण फक्त बाहेरील सालीच्या पृष्ठभागावर परिणाम करतात, अरिल किंवा रसाच्या गुणवत्तेवर परिणाम न करता.\n• फळांवरील व्रण लहान किंवा मोठे, तपकिरी, खडबडीत, उंचवटलेले, लहान भागांपासून ते संपूर्ण फळाच्या पृष्ठभागावर पसरलेले असू शकतात, ज्यामुळे सालीला रसेट स्कॅबसारखे स्वरूप येते.\n• ठिपके कधीकधी मोठे होऊन हलक्या केंद्रासह आणि गडद कडा असलेले मोठे ठिपके तयार करू शकतात आणि स्पर्शाला खडबडीत असतात.\n• हे लहान खडबडीत, उंचवटलेल्या ठिपक्यांपासून ते संपूर्ण फळाच्या पृष्ठभागावर पसरलेल्या मोठ्या तपकिरी ठिपक्यांपर्यंत विविध आकार आणि आकाराचे ठिपके तयार करते, ज्यात रसेटसारखे स्वरूप असते.",
          "predisposingFactors": "22 - 28°C तापमान, पाऊस आणि वाऱ्यासह 45 - 65% आर्द्रता रोगाच्या विकासास अनुकूल आहे.",
          "chemicalManagementTitle": "फळ स्कॅबचे रासायनिक व्यवस्थापन",
          "chemicalManagementIntro": "हा रोग सामान्यतः पावसानंतर फळांवर दिसून येतो. पाने सामान्यतः फळे नसताना दिसून येतात. जर तुमच्याकडे गेल्या हंगामातही स्कॅब असेल तर रोगाच्या लक्षणांची वाट पाहू नका, पावसानंतर प्रतिबंधात्मक फवारण्या घ्या. हवामानाच्या परिस्थितीनुसार 7-10 दिवसांच्या अंतराने खाली नमूद केलेल्या फवारण्या वैकल्पिकरित्या घ्या आणि शेवटी दिलेल्या महत्त्वाच्या सूचनांचे पालन करा,",
          "sprays": [
            "मेटिराम 55% WG + पायराक्लोस्ट्रोबिन 5% @ 3 ग्रॅम/लिटर",
            "टेबुकोनाझोल 50% + ट्रायफ्लॉक्सीस्ट्रोबिन 25% WG @ 0.5 ग्रॅम/लिटर",
            "ऍझोक्सिस्ट्रोबिन 18.2% + डायफेनोकोनाझोल 11.4% SC @ 1 मिली/लिटर",
            "झिनेब 68% + हेक्साकोनाझोल 4% WP @ 2.5 ग्रॅम/लिटर",
            "फ्लुओपिकोलाइड 5.56% + प्रोपामोकार्ब हायड्रोक्लोराइड 55.6% SC @"
          ],
          "chemicalManagementNote": "टीप: पावसानंतर लगेच दिल्यास सर्वोत्तम परिणाम मिळतात.",
          "importantInstructionsTitle": "महत्वाच्या सूचना",
          "instructions": [
            "फुलोऱ्याच्या वेळी मॅन्डिप्रोपॅमिड 23.4% @ 1 मिली/लिटर (10-15 दिवसांनी 2-3 फवारण्या) फवारल्याने सर्कोस्पोरा फ्रूट आणि लीफ स्पॉट आणि स्कॅबसह अनेक बुरशीजन्य रोगांवर प्रतिबंधात्मक उपाय म्हणून काम करते. त्यामुळे हे फुलोऱ्याच्या वेळी घ्या.",
            "सेट करताना संक्रमित विकृत फळे काढून टाकता येतात आणि नष्ट करता येतात. कुठेही टाकू नका किंवा फेकू नका.",
            "त्या दिवशी पावसाची शक्यता असल्यास फवारणी टाळा; स्कॅबचा संसर्ग टाळण्यासाठी पावसानंतर काही तासांनी फवारणी करणे चांगले आणि खूप महत्त्वाचे आहे.",
            "अंतिम द्रावण तयार केल्यानंतर फवारणीचा pH तपासावा. तो 6.5-7.0 pH/ किंवा बुरशीनाशक पॅकवर दिलेल्या निर्देशानुसार समायोजित करावा. यामुळे रासायनिक इजा टाळता येईल आणि चांगले परिणाम मिळतील.",
            "बोर्डो मिश्रणाशिवाय फवारणीसोबत नेहमी स्प्रेडर स्टिकर वापरा.",
            "तांबे बुरशीनाशकांशिवाय कोणत्याही कीटकनाशकाचा वापर एका हंगामात 2-3 पेक्षा जास्त वेळा करू नये.",
            "अवशेषमुक्त उत्पादनासाठी काढणीपूर्व अंतरानुसार फवारण्या रोटेशनमध्ये घेता येतात."
          ],
          "recommendations": [
            "संक्रमित किंवा विकृत फळे काढून टाका आणि नष्ट करा.",
            "पावसानंतर प्रतिबंधात्मक फवारण्या (उदा., मेटिराम, टेबुकोनाझोल) लावा.",
            "हवेच्या अभिसरणात सुधारणा करण्यासाठी झाडांची छाटणी करा."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Bacterial": {
          "diseaseName": "रोग: बॅक्टेरियल लीफ स्पॉट/ऑइली स्पॉट",
          "description": "अनुकूल परिस्थितीत डाळिंबामध्ये बॅक्टेरियल ब्लाइटमुळे आर्थिक उत्पन्नाचे नुकसान (60-100%) होते. जून-जुलैमध्ये पावसाळ्यात (मृग बहार) ते अधिक गंभीर आणि प्रचलित असते आणि रब्बी हंगामात (हस्ता बहार) कमी असते.",
          "causalOrganism": "झँथोमोनास ऍक्सोनोपोडिस पीव्ही. प्युनिके (Syn: झँथोमोनास सिट्री पीव्ही. प्युनिके)",
          "symptoms": "• रोगाची लक्षणे वनस्पतीच्या सर्व भागांवर म्हणजेच पाने, देठ, फुले आणि फळांवर दिसून येतात.\n• सुरुवातीला, पानांवर लहान अनियमित राखाडी-काळे पाण्याने भिजलेले व्रण दिसतात जे रोगाच्या प्रगतीनुसार मोठे होतात. रोगग्रस्त पाने हळूहळू पिवळी पडून गळून पडतात (प्लेट 1a).\n• पाऊस/स्प्रे/दव यानंतर बॅक्टेरियाचा स्राव बाहेर येतो, जो हाताला चिकट लागतो आणि वाळल्यानंतर पृष्ठभागावर पांढरा चमकदार थर तयार करतो. (प्लेट 1c).",
          "predisposingFactors": "तापमान (25 – 30° से), सापेक्ष आर्द्रता (>50%), पाऊस, शिफारस केलेल्या पेक्षा जास्त नायट्रोजन डोसचा वापर, सूक्ष्म अन्नद्रव्यांची कमतरता.",
          "cropSeasonManagementTitle": "पीक हंगामात व्यवस्थापन पद्धती",
          "cropSeasonManagement": [
            "काढणीनंतर विश्रांतीच्या काळात आणि फळे येईपर्यंत नवीन बाग लावल्यानंतरही प्रतिबंधात्मक फवारण्या घ्याव्यात.",
            "बागेत/शेजारील बागेत असलेल्या रोगावर आणि हवामानाच्या परिस्थितीनुसार 15 - 20 दिवसांच्या अंतराने ब्रोनोपोल @ 0.5 ग्रॅम/लिटरसह कॉपर ऑक्सिक्लोराइड किंवा कॉपर हायड्रॉक्साइड @ 2 -2.5 ग्रॅम/लिटर सारख्या तांबे-आधारित फॉर्म्युलेशनसह बदलून बोर्डो मिश्रण (1%) फवारा.",
            "जर बागा विश्रांतीच्या काळात असतील आणि त्यांना पानांच्या ब्लाइटचा संसर्ग असेल, तर बोर्डो मिश्रण आणि ब्रोनोपोलसह बदलून स्ट्रेप्टोसायक्लिन @ 0.5 ग्रॅम/लिटरची एक फवारणी घेता येते."
          ],
          "cropSeasonManagementNote": "टीप: जर ते बॅक्टेरियल ब्लाइट मुक्त क्षेत्र असेल तर स्ट्रेप्टोसायक्लिन किंवा ब्रोनोपोलच्या फवारण्यांची आवश्यकता नाही.",
          "emergencySpraysTitle": "आपत्कालीन फवारण्या",
          "emergencySpraysIntro": "पानांवर 5-10% ब्लाइट संसर्ग दिसल्यानंतर लगेचच 4 दिवसांच्या अंतराने 1-2 फवारण्या केल्याने ब्लाइटचा पुढील प्रसार रोखला जातो.",
          "emergencySprays": [
            "स्ट्रेप्टोसायक्लिन @ 0.5 ग्रॅम/लिटर + 2-ब्रोमो-नायट्रोप्रोपेน-1, 3-डायोल (ब्रोनोपोल 95%) @ 0.5 ग्रॅम/लिटर + कॉपर हायड्रॉक्साइड 53.8% WP @ 2.0 ग्रॅम/लिटर + स्प्रेडर स्टिकर @ 0.5 मिली/लिटर द्रावण.",
            "स्ट्रेप्टोसायक्लिन @ 0.5 ग्रॅम/लिटर + 2-ब्रोमो-नायट्रोप्रोपेन-1, 3-डायोल (ब्रोनोपोल 95%) @ 0.5 ग्रॅम/लिटर + कार्बेन्डाझिम 50% WP @ 1.0 ग्रॅम/लिटर + स्प्रेडर स्टिकर @ 0.5 मिली/लिटर द्रावण."
          ],
          "emergencySpraysNote": "टीप:\n• प्रत्येक फवारणीपूर्वी ब्लाइट-प्रभावित फळे काढून टाका आणि नष्ट करा. बागेची योग्य स्वच्छता राखा आणि विश्रांतीच्या काळात प्रतिबंधात्मक फवारण्या घ्या.",
          "recommendations": [
            "पाने कोरडी ठेवण्यासाठी ओव्हरहेड सिंचन टाळा.",
            "प्रतिबंधात्मक उपाय म्हणून तांबे-आधारित फवारण्या लावा.",
            "संक्रमित पाने त्वरित काढून टाका आणि नष्ट करा."
          ]
        },
        "Fungal": {
          "diseaseName": "रोग: बुरशीजन्य पानांचे ठिपके",
          "description": "डाळिंब अनेक पानांच्या ठिपक्यांना कारणीभूत असलेल्या रोगकारकांसाठी संवेदनशील आहे जे फळांचे उत्पादन आणि गुणवत्ता कमी करू शकतात.",
          "causalOrganism": "पानांचे ठिपके अनेक बुरशीजन्य रोगकारकांमुळे होतात जसे की अल्टरनेरिया अल्टरनेटा, सर्कोस्पोरा प्युनिके (स्यूडोसेर्कोस्पोरा प्युनिके), कोलेटोट्रायकम एसपी, ड्रेक्स्क्लेरा रोस्ट्रेटा. याशिवाय, पानांचे ठिपके इतर अनेक बुरशीजन्य प्रजातींमुळे होतात जसे की बोट्रिओडिप्लोडिया थिओब्रोमी, कर्व्हुलारिया एसपी, पेस्टालोटिओप्सिस एसपी.",
          "symptoms": "विविध रोगकारक विशेषतः पाने, देठांवर वैशिष्ट्यपूर्ण ठिपक्यांची लक्षणे निर्माण करतात. ज्याची अचूक ओळख फक्त सूक्ष्म आणि शुद्ध संवर्धन अभ्यासाद्वारेच केली जाऊ शकते कारण बहुतेक वेळा नैसर्गिक परिस्थितीत ओव्हरलॅपिंग रोगाची लक्षणे दिसून येतात. पानांच्या आणि फळांच्या ठिपक्यांमध्ये, सर्कोस्पोरा ठिपके डाळिंबावर सर्वात ठळकपणे दिसतात.",
          "predisposingFactors": "20 - 30°C तापमान आणि दीर्घ कालावधीसाठी 60% पेक्षा जास्त आर्द्रता रोगाच्या विकासास अनुकूल आहे. पावसाळ्यात पानांचे आणि फळांचे ठिपke अधिक प्रमाणात आढळतात.",
          "chemicalManagementTitle": "बुरशीजन्य पानांच्या ठिपक्यांचे रासायनिक व्यवस्थापन",
          "chemicalManagementIntro": "हवामानाच्या परिस्थितीनुसार 7-10 दिवसांच्या अंतराने खाली नमूद केलेल्या फवारण्या वैकल्पिकरित्या घ्या आणि शेवटी दिलेल्या महत्त्वाच्या सूचनांचे पालन करा.",
          "sprays": [
            "झिनेब 75% WP @ 2 ग्रॅम/लिटर",
            "झिनेब 68% + हेक्साकोनाझोल 4% WP @ 2.5 ग्रॅम/लिटर",
            "मेटिराम 55% WG + पायराक्लोस्ट्रोबिन 5% @ 3 ग्रॅम/लिटर",
            "टेबुकोनाझोल 50% + ट्रायफ्लॉक्सीस्ट्रोबिन 25% WG @ 0.5 ग्रॅम/लिटर",
            "प्रोपीनेब 70% WP @ 3 ग्रॅम/लिटर",
            "ट्रायसायक्लाझोल 18% + मॅन्कोझेब 62% WP 2.5 ते 3.0 ग्रॅम/लिटर",
            "कॉपर सल्फेट 47.15% + मॅन्कोझेब 30% WDG @ 2.5 ग्रॅम/लिटर",
            "ऍझोक्सिस्ट्रोबिन 8.3% + मॅन्कोझेब 66.7% WG @ 1.5 ग्रॅम/लिटर"
          ],
          "importantInstructionsTitle": "महत्वाच्या सूचना",
          "instructions": [
            "फुलोऱ्याच्या वेळी मॅन्डिप्रोपॅमिड 23.4% @ 1 मिली/लिटर (10-15 दिवसांनी 2-3 फवारण्या) फवारल्याने सर्कोस्पोरा फ्रूट आणि लीफ स्पॉट आणि स्कॅबसह अनेक बुरशीजन्य रोगांवर प्रतिबंधात्मक उपाय म्हणून काम करते. त्यामुळे हे फुलोऱ्याच्या वेळी घ्या.",
            "त्या दिवशी पावसाची शक्यता असल्यास फवारणी टाळा; पावसानंतर काही तासांनी फवारणी करणे चांगले आणि खूप महत्त्वाचे आहे.",
            "अंतिम द्रावण तयार केल्यानंतर फवारणीचा pH तपासावा. तो 6.5-7.0 pH/ किंवा बुरशीनाशक पॅकवर दिलेल्या निर्देशानुसार समायोजित करावा. यामुळे रासायनिक इजा टाळता येईल आणि चांगले परिणाम मिळतील.",
            "बोर्डो मिश्रणाशिवाय फवारणीसोबत नेहमी स्प्रेडर स्टिकर वापरा.",
            "तांबे बुरशीनाशकांशिवाय कोणत्याही कीटकनाशकाचा वापर एका हंगामात 2-3 पेक्षा जास्त वेळा करू नये.",
            "अवशेषमुक्त उत्पादनासाठी काढणीपूर्व अंतरानुसार फवारण्या रोटेशनमध्ये घेता येतात."
          ],
          "recommendations": [
            "योग्य बुरशीनाशके लावा, वेगवेगळ्या रासायनिक गटांमध्ये फिरवत रहा.",
            "छाटणीद्वारे हवेच्या अभिसरणात सुधारणा करा.",
            "पाने कोरडी ठेवण्यासाठी वनस्पतीच्या पायथ्याशी पाणी द्या."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        }
      },
      'Fungal Scab': 'फंगल स्कॅब',
      'Bacterial': 'बॅक्टेरियल',
      'Fungal': 'बुरशीजन्य',
      'Root Knot': 'रूट नॉट',
      'Wilt': 'विल्ट', // Kept for potential other uses
      'Wilt plants': 'विल्ट झाडे',
      'Aphids infestation': 'मावा प्रादुर्भाव',
      'Fruit borer': 'फळ पोखरणारी अळी',
      'Fruit fly': 'फळमाशी',
      'Mealy Bug': 'पिठ्या ढेकूण',
      'Thrisps': 'फुलकिडे',
      'selectLanguage': 'भाषा निवडा',
      'diseases': 'रोग',
      'insectsAndPests': 'कीटक आणि कीड',
      'fruit_subtitle': 'फळांवर परिणाम करणाऱ्या रोगांची ओळख करा',
      'leaf_subtitle': 'पानांच्या रोगांचे विश्लेषण आणि ओळख करा',
      'root_subtitle': 'मुळांवर परिणाम करणाऱ्या रोगांची तपासणी करा',
      'insects_title': 'जिवंत आणि मृत कीटक',
      'insects_subtitle': 'सामान्य कीटक आणि कीड ओळखा',
      'flowers_title': 'पाने/फुले/फळे',
      'flowers_subtitle': 'फुलांवर परिणाम करणाऱ्या कीटकांना ओळखा',
      'resultLabel': 'निकाल:',
      'confidenceScoreLabel': 'अचूकता:',
      'faqTitle': 'सतत विचारले जाणारे प्रश्न',
      'faqData': _faqData, // Needs translation
      'feedbackTitle': 'अभिप्राय',
      'feedbackHint': 'तुमचा अभिप्राय येथे प्रविष्ट करा...',
      'submitFeedback': 'अभिप्राय सबमिट करा',
      'feedbackCannotBeEmpty': 'अभिप्राय रिकामा असू शकत नाही.',
      'couldNotLaunchEmail': 'ईमेल ॲप उघडू शकलो नाही.',
      'searchFaqsHint': 'सतत विचारले जाणारे प्रश्न शोधा...',
    },

'gu': {
      'appTitle': 'અનારરક્ષક',
      'appTagline': 'તમારો દાડમ ફાર્મ રક્ષક',
      'selectLanguage': 'ભાષા પસંદ કરો',
      'selectModelAndImage': 'મોડેલ અને છબી પસંદ કરો',
      'modelsLoading': 'મહેરબાની કરીને રાહ જુઓ, મોડેલ્સ લોડ થઈ રહ્યા છે...',
      'runningInference': 'વિશ્લેષણ ચાલુ છે...',
      'inferenceError': 'વિશ્લેષણ ભૂલ',
      'modelLoadFailed': 'મોડેલ લોડ નિષ્ફળ: {error}',
      'inferenceFailed': 'વિશ્લેષણ નિષ્ફળ: {error}',
      'gallery': 'ગેલેરી',
      'camera': 'કેમેરા',
      'selectImageSource': 'છબીનો સ્ત્રોત પસંદ કરો',
      'featureComingSoon': 'આ સુવિધા ટૂંક સમયમાં આવશે.',
      'diseases': 'રોગો',
      'insectsAndPests': 'જંતુઓ અને જીવાતો',
      'fruit': 'ફળ અને ફૂલ',
      'fruit_subtitle': 'ફળને અસર કરતા રોગોને ઓળખો',
      'leaf': 'પાન',
      'leaf_subtitle': 'પાનના રોગો ઓળખો',
      'root': 'મૂલ',
      'root_subtitle': 'મૂલને અસર કરનાર રોગોની તપાસ કરો',
      'insects_title': 'જીવંત અને મૃત જંતુઓ',
      'insects_subtitle': 'સામાન્ય જંતુઓ ઓળખો',
      'flowers_title': 'ફળ/ફૂલ/પાંદડા',
      'flowers_subtitle': 'ફૂલ પર અસર કરનાર જીવાતો ઓળખો',
      'showManagementTechniques': 'વ્યવસ્થાપન તકનીકો\nબતાવો',
      'managementTechniquesTitle': 'વ્યવસ્થાપન તકનીકો',
      'noManagementInfo': 'આ રોગ માટે કોઈ માહિતી ઉપલબ્ધ નથી.',
      'ok': 'બરાબર',
      'causalOrganismLabel': 'કારક જીવ',
      'symptomsLabel': 'લક્ષણો',
      'predisposingFactorsLabel': 'પૂર્વવર્તી પરિબળો',
      'recommendationsLabel': 'ભલામણો',
      'sourceUrlLabel': 'સ્ત્રોત',
      'confidence': 'વિશ્વાસ: {score}%',
      'resultLabel': 'પરિણામ:',
      'confidenceScoreLabel': 'વિશ્વાસ સ્કોર:',
      'Bacterial Blight': 'બેક્ટેરિયલ બ્લાઈટ',
      'Calyx Rot': 'કેલિક્સ સડ',
      'Fungal Cercospora': 'ફંગલ સર્કોસ્પોરા',
      'Fruit Rot': 'ફળ સડ',
      'Healthy': 'સ્વસ્થ',
      'Fungal Scab': 'ફંગલ દાગ',
      'Bacterial': 'બેક્ટેરિયલ',
      'Fungal': 'ફંગલ',
      'Root Knot': 'રુટ નોટ',
      'Wilt': 'વિલ્ટ', // Kept for potential other uses
      'Wilt plants': 'વિલ્ટ છોડ',
      'Aphids infestation': 'એફિડ્સનો ઉપદ્રવ',
      'Fruit borer': 'ફળ કોરી ખાનાર',
      'Fruit fly': 'ફળ માખી',
      'Mealy Bug': 'ચીકટો',
      'Thrisps': 'થ્રીપ્સ',
      'faqTitle': 'વારંવાર પૂછાતા પ્રશ્નો',
      'flowers': 'પાંદડા/ફૂલ/ફળ',
      'insects': 'જંતુઓ',
      'pestsCategory': 'જંતુઓ અને જીવાતો',
      'diseaseCategory': 'રોગ',
      'faqData': _faqData, // Needs translation
      'feedbackTitle': 'અભિપ્રાય',
      'feedbackHint': 'તમારો અભિપ્રાય અહીં દાખલ કરો...',
      'submitFeedback': 'અભિપ્રાય સબમિટ કરો',
      'feedbackCannotBeEmpty': 'અભિપ્રાય ખાલી ન હોઈ શકે.',
      'couldNotLaunchEmail': 'ઇમેઇલ એપ્લિકેશન ખોલી શકાઈ નથી.',
      'searchFaqsHint': 'વારંવાર પૂછાતા પ્રશ્નો શોધો...',
      'management': {
        "Bacterial Blight": {
          "diseaseName": "રોગ: બેક્ટેરિયલ બ્લાઇટ",
          "description": "અનુકૂળ પરિસ્થિતિઓમાં દાડમમાં બેક્ટેરિયલ બ્લાઇટ આર્થિક ઉપજમાં નુકસાન (60-100%) નું કારણ બને છે. તે જૂન-જુલાઈમાં વરસાદની મોસમ (મૃગ બહાર) દરમિયાન વધુ ગંભીર અને પ્રચલિત હોય છે અને રવિ મોસમ (હસ્તા બહાર) માં ઓછું હોય છે.",
          "causalOrganism": "ઝેન્થોમોનાસ એક્સોનોપોડિસ પીવી. પ્યુનિકે (સમાનાર્થી: ઝેન્થોમોનાસ સિટ્રી પીવી. પ્યુનિકે)",
          "symptoms": "• રોગના લક્ષણો છોડના તમામ ભાગો જેવા કે પાંદડા, દાંડી, ફૂલો અને ફળો પર જોવા મળે છે.\n• શરૂઆતમાં, પાંદડા પર નાના અનિયમિત ભૂખરા-કાળા પાણીથી લથબથ ડાઘા જોવા મળે છે જે રોગની પ્રગતિ સાથે મોટા થાય છે. રોગગ્રસ્ત પાંદડા ધીમે ધીમે પીળા થઈ જાય છે અને ખરી પડે છે (પ્લેટ 1a).\n• ડાળીઓ અને દાંડી પર કાળા ડાઘા મુખ્યત્વે ગાંઠો પર જોવા મળે છે, જેના પરિણામે દબાયેલી વૃદ્ધિ સાથે કેન્કર બને છે (પ્લેટ 1b).\n• વિકસિત ફળો પર રોગના લક્ષણો મુખ્ય હોય છે. ભૂખરા-કાળા ડાઘા મોટા થાય છે અને એકબીજા સાથે ભળી જાય છે, જેનાથી ફળની આખી સપાટી ઢંકાઈ જાય છે. ચેપગ્રસ્ત ફળોમાં ઘણીવાર તિરાડો જોવા મળે છે. વરસાદ/સ્પ્રે/ઝાકળ પછી બેક્ટેરિયલ સ્રાવ બહાર આવે છે, જે હાથને ચીકણું લાગે છે અને સુકાઈ ગયા પછી સપાટી પર સફેદ ચળકતી પોપડી આપે છે. (પ્લેટ 1c).",
          "predisposingFactors": "તાપમાન (25 – 30° સે), સાપેક્ષ ભેજ (>50%), વરસાદ, ભલામણ કરતાં વધુ નાઇટ્રોજન ડોઝનો ઉપયોગ, સૂક્ષ્મ પોષકતત્વોની ઉણપ.",
          "pruningManagementTitle": "કાપણી દરમિયાન વ્યવસ્થાપન પદ્ધતિઓ",
          "pruningManagement": [
            "જો દાંડીનો ચેપ ગંભીર હોય, તો લણણી પછી તરત જ ભારે કાપણી કરો અને બ્લાઇટ ચેપવાળી બધી દાંડી દૂર કરો. ચેપગ્રસ્ત વિસ્તારથી લગભગ 2 - 3 ઇંચ નીચે કાપણી કરો.",
            "કાપણી પછી કાપેલા છેડા પર બોર્ડેક્સ પેસ્ટ (10%) લગાવો. વરસાદની મોસમમાં પેસ્ટિંગ માટે તેલ આધારિત પેસ્ટ [500 ગ્રામ સીઓસી + 1 લિટર અળસીનું તેલ મિક્સ કરીને બનાવેલ સીઓસી પેઇન્ટ] પસંદ કરવામાં આવે છે અથવા 50 મિલી/લિટર પેસ્ટમાં તેલ મિક્સ કરો."
          ],
          "cropSeasonManagementTitle": "પાકની મોસમ દરમિયાન વ્યવસ્થાપન પદ્ધતિઓ",
          "cropSeasonManagement": [
            "લણણી પછી આરામના સમયગાળા દરમિયાન અને ફળ ન આવે ત્યાં સુધી નવો બગીચો રોપ્યા પછી પણ પ્રોફીલેક્ટિક સ્પ્રે લેવા જોઈએ.",
            "બગીચા/પડોશી બગીચાઓમાં હાજર રોગ અને હવામાનની પરિસ્થિતિઓના આધારે 15 - 20 દિવસના અંતરે બ્રોનોપોલ @ 0.5 ગ્રામ/લિટર સાથે કોપર ઓક્સીક્લોરાઇડ અથવા કોપર હાઇડ્રોક્સાઇડ @ 2 -2.5 ગ્રામ/લિટર જેવા કોપર આધારિત ફોર્મ્યુલેશન સાથે બદલીને બોર્ડેક્સ મિશ્રણ (1%) નો સ્પ્રે કરો.",
            "જો બગીચાઓ આરામના સમયગાળામાં હોય અને તેમાં પાંદડાની બ્લાઇટનો ચેપ હોય, તો બોર્ડેક્સ મિશ્રણ અને બ્રોનોપોલ સાથે બદલીને સ્ટ્રેપ્ટોસાયક્લિન @ 0.5 ગ્રામ/લિટરનો એક સ્પ્રે લઈ શકાય છે."
          ],
          "cropSeasonManagementNote": "નોંધ: જો તે બેક્ટેરિયલ બ્લાઇટ મુક્ત વિસ્તાર હોય તો સ્ટ્રેપ્ટોસાયક્લિન અથવા બ્રોનોપોલના સ્પ્રેની જરૂર નથી.",
          "emergencySpraysTitle": "ઇમરજન્સી સ્પ્રે",
          "emergencySpraysIntro": "ફળો પર 5-10% બ્લાઇટ ચેપ જોવા મળ્યા પછી તરત જ 4 દિવસના અંતરે 1-2 સ્પ્રે કરવાથી બ્લાઇટનો વધુ ફેલાવો અટકે છે.",
          "emergencySprays": [
            "સ્ટ્રેપ્ટોસાયક્લિન @ 0.5 ગ્રામ/લિટર + 2-બ્રોમો-નાઇટ્રોપ્રોપેન-1, 3-ડાયોલ (બ્રોનોપોલ 95%) @ 0.5 ગ્રામ/લિટર + કોપર હાઇડ્રોક્સાઇડ 53.8% WP @ 2.0 ગ્રામ/લિટર + સ્પ્રેડર સ્ટીકર @ 0.5 મિલી/લિટર દ્રાવણ.",
            "સ્ટ્રેપ્ટોસાયક્લિન @ 0.5 ગ્રામ/લિટર + 2-બ્રોમો-નાઇટ્રોપ્રોપેન-1, 3-ડાયોલ (બ્રોનોપોલ 95%) @ 0.5 ગ્રામ/લિટર + કાર્બેન્ડાઝિમ 50% WP @ 1.0 ગ્રામ/લિટર + સ્પ્રેડર સ્ટીકર @ 0.5 મિલી/લિટર દ્રાવણ."
          ],
          "emergencySpraysNote": "નોંધ:\n• દરેક સ્પ્રે પહેલાં બ્લાઇટ પ્રભાવિત ફળોને દૂર કરીને નાશ કરો. બગીચાની યોગ્ય સ્વચ્છતા જાળવો અને આરામના સમયગાળામાં નિવારક સ્પ્રે લો.",
          "recommendations": [
            "બ્લાઇટ ચેપવાળી બધી દાંડી કાપીને દૂર કરો.",
            "કાપણી પછી કાપેલા છેડા પર બોર્ડેક્સ પેસ્ટ લગાવો.",
            "બોર્ડેક્સ મિશ્રણ અથવા બ્રોનોપોલ જેવા પ્રોફીલેક્ટિક સ્પ્રેનો ઉપયોગ કરો.",
            "દરેક સ્પ્રે પહેલાં બ્લાઇટ પ્રભાવિત ફળોને દૂર કરીને નાશ કરો."
          ]
        },
        "Calyx Rot": {
          "diseaseName": "રોગ: એન્થ્રેકનોઝ/ ફળનો સડો/કેલિક્સ રોટ",
          "description": "અર્ધ-શુષ્ક પરિસ્થિતિઓમાં એન્થ્રેકનોઝ/ફળનો સડો એક મોટી સમસ્યા બની રહી છે. આ રોગ ઉષ્ણકટિબંધીય અને ઉપઉષ્ણકટિબંધીય પ્રદેશોમાં સામાન્ય છે.",
          "causalOrganism": "કોલેટોટ્રિકમ એસપીપી.",
          "symptoms": "કોલેટોટ્રિકમના લક્ષણો ફૂલો, ફળો, પાંદડા અથવા ડાળીઓ પર વિકસે છે, પરંતુ ફળો સૌથી વધુ સંવેદનશીલ હોય છે.\n• પાંદડા પર, પીળા પ્રભામંડળ સાથે નાના ગોળાકાર ડાઘા વિકસે છે; પાછળથી ચેપગ્રસ્ત પાંદડા પીળા થઈ જાય છે જેનાથી અકાળે પાનખર થાય છે.\n• ફળો પર, પ્રથમ લક્ષણો કેલિક્સના છેડાથી ફળની છાલનો રંગ બદલાવવા અથવા અસંખ્ય અલગ ડાઘા તરીકે જોવા મળે છે જે પાછળથી એકસાથે ભળીને ફળની સપાટી પર અનિયમિત ડાઘા બનાવે છે (કોલેટોટ્રિકમ એસપીપી.)\n• રંગહીન વિસ્તારો લાલ/ઘેરા બદામીથી કાળા થઈ જાય છે. સડો છાલની બહાર એરિલ્સમાં ફેલાય છે, જે વિઘટિત થાય છે અને ઘેરા રાખોડી/બદામી-કાળા રંગના હોય છે પરંતુ પાણીવાળા નથી. અસરગ્રસ્ત ફળો પાછળના તબક્કે ખરી શકે છે.\n• ફળો સેટિંગથી લઈને તમામ તબક્કે આ રોગ માટે સૌથી વધુ સંવેદનશીલ હોય છે.",
          "predisposingFactors": "25 - 30°C તાપમાન અને ઉચ્ચ ભેજ (>60%) રોગના વિકાસ માટે અનુકૂળ છે. ઉનાળાના મહિનાઓમાં ઉચ્ચ ભેજ, વરસાદ અને ગરમ તાપમાન રોગની ગંભીરતામાં વધારો કરે છે.",
          "chemicalManagementTitle": "કોલેટોટ્રિકમ સડાનું રાસાયણિક સંચાલન",
          "chemicalManagementIntro": "હવામાનની પરિસ્થિતિઓના આધારે 7-10 દિવસના અંતરે નીચે જણાવેલ સ્પ્રેને વૈકલ્પિક રીતે લો અને અંતે આપેલી મહત્વપૂર્ણ સૂચનાઓનું પાલન કરો.",
          "sprays": [
            "ઝિનેબ 68% + હેક્સાકોનાઝોલ 4% WP @ 2.5 ગ્રામ/લિટર",
            "ટેબુકોનાઝોલ 50% + ટ્રાઇફ્લોક્સિસ્ટ્રોબિન 25% WG @ 0.5 ગ્રામ/લિટર",
            "પ્રોપીનેબ 70% WP @ 3 ગ્રામ/લિટર",
            "કોપર ઓક્સીક્લોરાઇડ 45% + કાસુગામાયસિન 5% WP @ 2.5 ગ્રામ/લિટર",
            "એઝોક્સિસ્ટ્રોબિન 8.3% + મેન્કોઝેબ 66.7% WG @ 1.5 ગ્રામ/લિટર",
            "ફ્લુઓપાયરમ 21.4% + ટ્રાઇફ્લોક્સિસ્ટ્રોબિન 21.4% SC @ 0.7 મિલી/લિટર",
            "ફ્લુઓપીકોલાઇડ 5.56% + પ્રોપામોકાર્બ હાઇડ્રોક્લોરાઇડ 55.6% SC @ 1.25 મિલી/લિટર"
          ],
          "importantInstructionsTitle": "મહત્વપૂર્ણ સૂચનાઓ",
          "instructions": [
            "ફૂલો આવતી વખતે મેન્ડિપ્રોપેમિડ 23.4% @ 1 મિલી/લિટર (10-15 દિવસે 2-3 સ્પ્રે) નો સ્પ્રે ઘણા ફૂગના રોગો માટે નિવારક તરીકે કામ કરે છે. તેથી આ ફૂલો આવતી વખતે લો.",
            "જો તે દિવસે વરસાદની અપેક્ષા હોય તો સ્પ્રે ટાળો; વરસાદના થોડા કલાકો પછી સ્પ્રે કરવો વધુ સારું અને ખૂબ જ મહત્વપૂર્ણ છે.",
            "અંતિમ દ્રાવણ તૈયાર કર્યા પછી સ્પ્રેનું pH તપાસવું જોઈએ. તેને 6.5-7.0 pH/ અથવા ફૂગનાશક પેક પર સૂચવ્યા મુજબ ગોઠવવું જોઈએ. આ રાસાયણિક ઇજાઓ ટાળશે અને વધુ સારા પરિણામો આપશે.",
            "બોર્ડેક્સ મિશ્રણ સિવાય સ્પ્રે સાથે હંમેશા સ્પ્રેડર સ્ટીકરનો ઉપયોગ કરો.",
            "કોપર ફૂગનાશકો સિવાય કોઈપણ જંતુનાશકનો ઉપયોગ એક સિઝનમાં 2-3 વખતથી વધુ ન કરવો જોઈએ.",
            "અવશેષ-મુક્ત ઉત્પાદન માટે લણણી પહેલાના અંતરાલ મુજબ સ્પ્રેને રોટેશનમાં લઈ શકાય છે."
          ],
          "recommendations": [
            "અસરગ્રસ્ત ફળ અને પાંદડા દૂર કરો અને નાશ કરો.",
            "યોગ્ય ફૂગનાશક (દા.ત., ઝિનેબ, ટેબુકોનાઝોલ) લગાવો.",
            "કાપણી દ્વારા હવાના પરિભ્રમણમાં સુધારો કરો."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Fungal Cercospora": {
          "diseaseName": "રોગ: સર્કોસ્પોરા ફ્રુટ સ્પોટ",
          "description": "દાડમ ફૂગના ફળના ડાઘા માટે સંવેદનશીલ છે, ખાસ કરીને સર્કોસ્પોરા પ્યુનિકે (સ્યુડોસર્કોસ્પોરા પ્યુનિકે) રોગકારક જે ફળની ઉપજ અને ગુણવત્તા ઘટાડી શકે છે.",
          "causalOrganism": "સર્કોસ્પોરા પ્યુનિકે (સ્યુડોસર્કોસ્પોરા પ્યુનિકે)",
          "symptoms": "રોગકારક ખાસ કરીને ફળો પર લાક્ષણિક ડાઘાના લક્ષણો ઉત્પન્ન કરે છે. નાના, અનિયમિત ડાઘા જે શરૂઆતમાં ગોળાકાર હોય છે પરંતુ મોટા અને ઘાટા બને છે.",
          "predisposingFactors": "20 - 30°C વચ્ચેનું તાપમાન અને લાંબા સમય સુધી 60% થી વધુ ભેજ રોગના વિકાસ માટે અનુકૂળ છે. વરસાદની મોસમમાં પાંદડા અને ફળના ડાઘા વધુ પ્રચલિત હોય છે.",
          "chemicalManagementTitle": "ફૂગના પાંદડા અને ફળના ડાઘાનું રાસાયણિક સંચાલન",
          "chemicalManagementIntro": "હવામાનની પરિસ્થિતિઓ અને રોગના દબાણના આધારે 7-10 દિવસના અંતરે નીચે જણાવેલ સ્પ્રેને વૈકલ્પિક રીતે લો અને અંતે આપેલી મહત્વપૂર્ણ સૂચનાઓનું પાલન કરો.",
          "sprays": [
            "ઝિનેબ 75% WP @ 2 ગ્રામ/લિટર",
            "ઝિનેબ 68% + હેક્સાકોનાઝોલ 4% WP @ 2.5 ગ્રામ/લિટર",
            "મેટિરામ 55% WG + પાયરાક્લોસ્ટ્રોબિન 5% @ 3 ગ્રામ/લિટર",
            "ટેબુકોનાઝોલ 50% + ટ્રાઇફ્લોક્સિસ્ટ્રોબિન 25% WG @ 0.5 ગ્રામ/લિટર",
            "પ્રોપીનેબ 70% WP @ 3 ગ્રામ/લિટર",
            "ટ્રાઇસાયક્લાઝોલ 18% + મેન્કોઝેબ 62% WP 2.5 થી 3.0 ગ્રામ/લિટર",
            "કોપર સલ્ફેટ 47.15% + મેન્કોઝેબ 30% WDG @ 2.5 ગ્રામ/લિટર",
            "એઝોક્સિસ્ટ્રોબિન 8.3% + મેન્કોઝેબ 66.7% WG @ 1.5 ગ્રામ/લિટર"
          ],
          "importantInstructionsTitle": "મહત્વપૂર્ણ સૂચનાઓ",
          "instructions": [
            "ફૂલો આવતી વખતે મેન્ડિપ્રોપેમિડ 23.4% @ 1 મિલી/લિટર (10-15 દિવસે 2-3 સ્પ્રે) નો સ્પ્રે સર્કોસ્પોરા ફ્રુટ અને લીફ સ્પોટ અને સ્કેબ સહિત ઘણા ફૂગના રોગો માટે નિવારક તરીકે કામ કરે છે. તેથી આ ફૂલો આવતી વખતે લો.",
            "જો તે દિવસે વરસાદની અપેક્ષા હોય તો સ્પ્રે ટાળો; વરસાદના થોડા કલાકો પછી સ્પ્રે કરવો વધુ સારું અને ખૂબ જ મહત્વપૂર્ણ છે.",
            "અંતિમ દ્રાવણ તૈયાર કર્યા પછી સ્પ્રેનું pH તપાસવું જોઈએ. તેને 6.5-7.0 pH/ અથવા ફૂગનાશક પેક પર સૂચવ્યા મુજબ ગોઠવવું જોઈએ. આ રાસાયણિક ઇજાઓ ટાળશે અને વધુ સારા પરિણામો આપશે.",
            "બોર્ડેક્સ મિશ્રણ સિવાય સ્પ્રે સાથે હંમેશા સ્પ્રેડર સ્ટીકરનો ઉપયોગ કરો.",
            "કોપર ફૂગનાશકો સિવાય કોઈપણ જંતુનાશકનો ઉપયોગ એક સિઝનમાં 2-3 વખતથી વધુ ન કરવો જોઈએ.",
            "અવશેષ-મુક્ત ઉત્પાદન માટે લણણી પહેલાના અંતરાલ મુજબ સ્પ્રેને રોટેશનમાં લઈ શકાય છે."
          ],
          "recommendations": [
            "ચેપગ્રસ્ત પાંદડા દૂર કરો અને બાળી નાખો.",
            "નિવારક રીતે ફૂગનાશકો લગાવો.",
            "સારી હવાના પરિભ્રમણની ખાતરી કરો."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Fruit Rot": {
          "diseaseName": "રોગ: એન્થ્રેકનોઝ/ ફળનો સડો/કેલિક્સ રોટ",
          "description": "અર્ધ-શુષ્ક પરિસ્થિતિઓમાં એન્થ્રેકનોઝ/ફળનો સડો એક મોટી સમસ્યા બની રહી છે. આ રોગ ઉષ્ણકટિબંધીય અને ઉપઉષ્ણકટિબંધીય પ્રદેશોમાં સામાન્ય છે.",
          "causalOrganism": "કોલેટોટ્રિકમ એસપીપી.",
          "symptoms": "કોલેટોટ્રિકમના લક્ષણો ફૂલો, ફળો, પાંદડા અથવા ડાળીઓ પર વિકસે છે, પરંતુ ફળો સૌથી વધુ સંવેદનશીલ હોય છે.\n• પાંદડા પર, પીળા પ્રભામંડળ સાથે નાના ગોળાકાર ડાઘા વિકસે છે; પાછળથી ચેપગ્રસ્ત પાંદડા પીળા થઈ જાય છે જેનાથી અકાળે પાનખર થાય છે.\n• ફળો પર, પ્રથમ લક્ષણો કેલિક્સના છેડાથી ફળની છાલનો રંગ બદલાવવા અથવા અસંખ્ય અલગ ડાઘા તરીકે જોવા મળે છે જે પાછળથી એકસાથે ભળીને ફળની સપાટી પર અનિયમિત ડાઘા બનાવે છે (કોલેટોટ્રિકમ એસપીપી.)\n• રંગહીન વિસ્તારો લાલ/ઘેરા બદામીથી કાળા થઈ જાય છે. સડો છાલની બહાર એરિલ્સમાં ફેલાય છે, જે વિઘટિત થાય છે અને ઘેરા રાખોડી/બદામી-કાળા રંગના હોય છે પરંતુ પાણીવાળા નથી. અસરગ્રસ્ત ફળો પાછળના તબક્કે ખરી શકે છે.\n• ફળો સેટિંગથી લઈને તમામ તબક્કે આ રોગ માટે સૌથી વધુ સંવેદનશીલ હોય છે.",
          "predisposingFactors": "25 - 30°C તાપમાન અને ઉચ્ચ ભેજ (>60%) રોગના વિકાસ માટે અનુકૂળ છે. ઉનાળાના મહિનાઓમાં ઉચ્ચ ભેજ, વરસાદ અને ગરમ તાપમાન રોગની ગંભીરતામાં વધારો કરે છે.",
          "chemicalManagementTitle": "કોલેટોટ્રિકમ સડાનું રાસાયણિક સંચાલન",
          "chemicalManagementIntro": "હવામાનની પરિસ્થિતિઓના આધારે 7-10 દિવસના અંતરે નીચે જણાવેલ સ્પ્રેને વૈકલ્પિક રીતે લો અને અંતે આપેલી મહત્વપૂર્ણ સૂચનાઓનું પાલન કરો.",
          "sprays": [
            "ઝિનેબ 68% + હેક્સાકોનાઝોલ 4% WP @ 2.5 ગ્રામ/લિટર",
            "ટેબુકોનાઝોલ 50% + ટ્રાઇફ્લોક્સિસ્ટ્રોબિન 25% WG @ 0.5 ગ્રામ/લિટર",
            "પ્રોપીનેબ 70% WP @ 3 ગ્રામ/લિટર",
            "કોપર ઓક્સીક્લોરાઇડ 45% + કાસુગામાયસિન 5% WP @ 2.5 ગ્રામ/લિટર",
            "એઝોક્સિસ્ટ્રોબિન 8.3% + મેન્કોઝેબ 66.7% WG @ 1.5 ગ્રામ/લિટર",
            "ફ્લુઓપાયરમ 21.4% + ટ્રાઇફ્લોક્સિસ્ટ્રોબિન 21.4% SC @ 0.7 મિલી/લિટર",
            "ફ્લુઓપીકોલાઇડ 5.56% + પ્રોપામોકાર્બ હાઇડ્રોક્લોરાઇડ 55.6% SC @ 1.25 મિલી/લિટર"
          ],
          "importantInstructionsTitle": "મહત્વપૂર્ણ સૂચનાઓ",
          "instructions": [
            "ફૂલો આવતી વખતે મેન્ડિપ્રોપેમિડ 23.4% @ 1 મિલી/લિટર (10-15 દિવસે 2-3 સ્પ્રે) નો સ્પ્રે ઘણા ફૂગના રોગો માટે નિવારક તરીકે કામ કરે છે. તેથી આ ફૂલો આવતી વખતે લો.",
            "જો તે દિવસે વરસાદની અપેક્ષા હોય તો સ્પ્રે ટાળો; વરસાદના થોડા કલાકો પછી સ્પ્રે કરવો વધુ સારું અને ખૂબ જ મહત્વપૂર્ણ છે.",
            "અંતિમ દ્રાવણ તૈયાર કર્યા પછી સ્પ્રેનું pH તપાસવું જોઈએ. તેને 6.5-7.0 pH/ અથવા ફૂગનાશક પેક પર સૂચવ્યા મુજબ ગોઠવવું જોઈએ. આ રાસાયણિક ઇજાઓ ટાળશે અને વધુ સારા પરિણામો આપશે.",
            "બોર્ડેક્સ મિશ્રણ સિવાય સ્પ્રે સાથે હંમેશા સ્પ્રેડર સ્ટીકરનો ઉપયોગ કરો.",
            "કોપર ફૂગનાશકો સિવાય કોઈપણ જંતુનાશકનો ઉપયોગ એક સિઝનમાં 2-3 વખતથી વધુ ન કરવો જોઈએ.",
            "અવશેષ-મુક્ત ઉત્પાદન માટે લણણી પહેલાના અંતરાલ મુજબ સ્પ્રેને રોટેશનમાં લઈ શકાય છે."
          ],
          "recommendations": [
            "અસરગ્રસ્ત ફળ અને પાંદડા દૂર કરો અને નાશ કરો.",
            "યોગ્ય ફૂગનાશક (દા.ત., ઝિનેબ, ટેબુકોનાઝોલ) લગાવો.",
            "કાપણી દ્વારા હવાના પરિભ્રમણમાં સુધારો કરો."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Healthy": {
          "description": "કોઈ ચોક્કસ વ્યવસ્થાપનની જરૂર નથી. તણાવ અથવા રોગના કોઈપણ ચિહ્નો માટે છોડનું નિરીક્ષણ કરવાનું ચાલુ રાખો અને સારી કૃષિ પદ્ધતિઓ જાળવો."
        },
        "Fungal Scab": {
          "diseaseName": "રોગ: ફળનો સ્કેબ",
          "description": "2016 થી, ભારતના શુષ્ક અને અર્ધ-શુષ્ક પ્રદેશોમાં દાડમના ઉત્પાદનમાં સ્કેબ એક મર્યાદિત પરિબળ બની ગયું છે. જે વિસ્તારોમાં આ રોગ પ્રચલિત છે, ત્યાં 90-100% ફળો પ્રભાવિત હોય તેવા બગીચાઓ મળવા અસામાન્ય નથી.",
          "causalOrganism": "સ્ફેસેલોમા (syn. એલ્સિનો) પ્યુનિકે",
          "symptoms": "રોગકારક ફૂલોથી લઈને ફળ પાકવા સુધીના કોઈપણ તબક્કે હુમલો કરે છે. ફૂલોની કળીઓ અથવા નાના ફળોના ચેપથી વિકૃતિ આવે છે અને પરિણામે ઉપજમાં નુકસાન થાય છે. પાકેલા ફળોનો ચેપ ફળોના દેખાવ અને બાહ્ય ગુણવત્તાને અસર કરે છે. જખમ ફક્ત બાહ્ય છાલની સપાટીને અસર કરે છે, એરિલ અથવા રસની ગુણવત્તાને અસર કર્યા વિના.\n• ફળો પરના જખમ નાના કે મોટા, બદામી, ખરબચડા, ઉભા થયેલા, નાના વિસ્તારોથી લઈને આખા ફળની સપાટીને ઢાંકતા હોઈ શકે છે, જે છાલને રસેટ સ્કેબ જેવો દેખાવ આપે છે.\n• ડાઘા ક્યારેક મોટા થઈને હળવા કેન્દ્ર અને ઘાટા કિનારીવાળા મોટા ડાઘા બનાવી શકે છે અને સ્પર્શમાં ખરબચડા હોય છે.\n• તે નાના ખરબચડા, ઉભા થયેલા ડાઘાથી લઈને આખા ફળની સપાટીને ઢાંકતા મોટા બદામી ડાઘા સુધીના વિવિધ આકાર અને કદના ડાઘા ઉત્પન્ન કરે છે, જેમાં રસેટ જેવો દેખાવ હોય છે.",
          "predisposingFactors": "22 - 28°C તાપમાન, વરસાદ અને પવન સાથે 45 - 65% ની આસપાસ ભેજ રોગના વિકાસ માટે અનુકૂળ છે.",
          "chemicalManagementTitle": "ફળના સ્કેબનું રાસાયણિક સંચાલન",
          "chemicalManagementIntro": "આ રોગ સામાન્ય રીતે વરસાદ પછી ફળો પર જોવા મળે છે. પાંદડા પર સામાન્ય રીતે ત્યારે જોવા મળે છે જ્યારે ફળો ન હોય. જો તમારી પાસે ગયા સિઝનમાં પણ સ્કેબ હતો તો રોગના લક્ષણોની રાહ ન જુઓ, વરસાદ પછી નિવારક સ્પ્રે લો. હવામાનની પરિસ્થિતિઓના આધારે 7-10 દિવસના અંતરે નીચે જણાવેલ સ્પ્રેને વૈકલ્પિક રીતે લો અને અંતે આપેલી મહત્વપૂર્ણ સૂચનાઓનું પાલન કરો,",
          "sprays": [
            "મેટિરામ 55% WG + પાયરાક્લોસ્ટ્રોબિન 5% @ 3 ગ્રામ/લિટર",
            "ટેબુકોનાઝોલ 50% + ટ્રાઇફ્લોક્સિસ્ટ્રોબિન 25% WG @ 0.5 ગ્રામ/લિટર",
            "એઝોક્સિસ્ટ્રોબિન 18.2% + ડાયફેનોકોનાઝોલ 11.4% SC @ 1 મિલી/લિટર",
            "ઝિનેબ 68% + હેક્સાકોનાઝોલ 4% WP @ 2.5 ગ્રામ/લિટર",
            "ફ્લુઓપીકોલાઇડ 5.56% + પ્રોપામોકાર્બ હાઇડ્રોક્લોરાઇડ 55.6% SC @"
          ],
          "chemicalManagementNote": "નોંધ: વરસાદ પછી તરત જ આપવામાં આવે તો શ્રેષ્ઠ પરિણામો મળે છે.",
          "importantInstructionsTitle": "મહત્વપૂર્ણ સૂચનાઓ",
          "instructions": [
            "ફૂલો આવતી વખતે મેન્ડિપ્રોપેમિડ 23.4% @ 1 મિલી/લિટર (10-15 દિવસે 2-3 સ્પ્રે) નો સ્પ્રે સર્કોસ્પોરા ફ્રુટ અને લીફ સ્પોટ અને સ્કેબ સહિત ઘણા ફૂગના રોગો માટે નિવારક તરીકે કામ કરે છે. તેથી આ ફૂલો આવતી વખતે લો.",
            "સેટિંગ વખતે ચેપગ્રસ્ત વિકૃત ફળોને દૂર કરી શકાય છે અને નાશ કરી શકાય છે. ક્યાંય પણ ડમ્પ કરશો નહીં કે ફેંકશો નહીં.",
            "જો તે દિવસે વરસાદની અપેક્ષા હોય તો સ્પ્રે ટાળો; સ્કેબના ચેપથી બચવા માટે વરસાદના થોડા કલાકો પછી સ્પ્રે કરવો વધુ સારું અને ખૂબ જ મહત્વપૂર્ણ છે.",
            "અંતિમ દ્રાવણ તૈયાર કર્યા પછી સ્પ્રેનું pH તપાસવું જોઈએ. તેને 6.5-7.0 pH/ અથવા ફૂગનાશક પેક પર સૂચવ્યા મુજબ ગોઠવવું જોઈએ. આ રાસાયણિક ઇજાઓ ટાળશે અને વધુ સારા પરિણામો આપશે.",
            "બોર્ડેક્સ મિશ્રણ સિવાય સ્પ્રે સાથે હંમેશા સ્પ્રેડર સ્ટીકરનો ઉપયોગ કરો.",
            "કોપર ફૂગનાશકો સિવાય કોઈપણ જંતુનાશકનો ઉપયોગ એક સિઝનમાં 2-3 વખતથી વધુ ન કરવો જોઈએ.",
            "અવશેષ-મુક્ત ઉત્પાદન માટે લણણી પહેલાના અંતરાલ મુજબ સ્પ્રેને રોટેશનમાં લઈ શકાય છે."
          ],
          "recommendations": [
            "ચેપગ્રસ્ત અથવા વિકૃત ફળોને દૂર કરો અને નાશ કરો.",
            "વરસાદ પછી નિવારક સ્પ્રે (દા.ત., મેટિરામ, ટેબુકોનાઝોલ) લગાવો.",
            "હવાના પરિભ્રમણમાં સુધારો કરવા માટે ઝાડની કાપણી કરો."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Bacterial": {
          "diseaseName": "રોગ: બેક્ટેરિયલ લીફ સ્પોટ/ઓઇલી સ્પોટ",
          "description": "અનુકૂળ પરિસ્થિતિઓમાં દાડમમાં બેક્ટેરિયલ બ્લાઇટ આર્થિક ઉપજમાં નુકસાન (60-100%) નું કારણ બને છે. તે જૂન-જુલાઈમાં વરસાદની મોસમ (મૃગ બહાર) દરમિયાન વધુ ગંભીર અને પ્રચલિત હોય છે અને રવિ મોસમ (હસ્તા બહાર) માં ઓછું હોય છે.",
          "causalOrganism": "ઝેન્થોમોનાસ એક્સોનોપોડિસ પીવી. પ્યુનિકે (સમાનાર્થી: ઝેન્થોમોનાસ સિટ્રી પીવી. પ્યુનિકે)",
          "symptoms": "• રોગના લક્ષણો છોડના તમામ ભાગો જેવા કે પાંદડા, દાંડી, ફૂલો અને ફળો પર જોવા મળે છે.\n• શરૂઆતમાં, પાંદડા પર નાના અનિયમિત ભૂખરા-કાળા પાણીથી લથબથ ડાઘા જોવા મળે છે જે રોગની પ્રગતિ સાથે મોટા થાય છે. રોગગ્રસ્ત પાંદડા ધીમે ધીમે પીળા થઈ જાય છે અને ખરી પડે છે (પ્લેટ 1a).\n• વરસાદ/સ્પ્રે/ઝાકળ પછી બેક્ટેરિયલ સ્રાવ બહાર આવે છે, જે હાથને ચીકણું લાગે છે અને સુકાઈ ગયા પછી સપાટી પર સફેદ ચળકતી પોપડી આપે છે. (પ્લેટ 1c).",
          "predisposingFactors": "તાપમાન (25 – 30° સે), સાપેક્ષ ભેજ (>50%), વરસાદ, ભલામણ કરતાં વધુ નાઇટ્રોજન ડોઝનો ઉપયોગ, સૂક્ષ્મ પોષકતત્વોની ઉણપ.",
          "cropSeasonManagementTitle": "પાકની મોસમ દરમિયાન વ્યવસ્થાપન પદ્ધતિઓ",
          "cropSeasonManagement": [
            "લણણી પછી આરામના સમયગાળા દરમિયાન અને ફળ ન આવે ત્યાં સુધી નવો બગીચો રોપ્યા પછી પણ પ્રોફીલેક્ટિક સ્પ્રે લેવા જોઈએ.",
            "બગીચા/પડોશી બગીચાઓમાં હાજર રોગ અને હવામાનની પરિસ્થિતિઓના આધારે 15 - 20 દિવસના અંતરે બ્રોનોપોલ @ 0.5 ગ્રામ/લિટર સાથે કોપર ઓક્સીક્લોરાઇડ અથવા કોપર હાઇડ્રોક્સાઇડ @ 2 -2.5 ગ્રામ/લિટર જેવા કોપર આધારિત ફોર્મ્યુલેશન સાથે બદલીને બોર્ડેક્સ મિશ્રણ (1%) નો સ્પ્રે કરો.",
            "જો બગીચાઓ આરામના સમયગાળામાં હોય અને તેમાં પાંદડાની બ્લાઇટનો ચેપ હોય, તો બોર્ડેક્સ મિશ્રણ અને બ્રોનોપોલ સાથે બદલીને સ્ટ્રેપ્ટોસાયક્લિન @ 0.5 ગ્રામ/લિટરનો એક સ્પ્રે લઈ શકાય છે."
          ],
          "cropSeasonManagementNote": "નોંધ: જો તે બેક્ટેરિયલ બ્લાઇટ મુક્ત વિસ્તાર હોય તો સ્ટ્રેપ્ટોસાયક્લિન અથવા બ્રોનોપોલના સ્પ્રેની જરૂર નથી.",
          "emergencySpraysTitle": "ઇમરજન્સી સ્પ્રે",
          "emergencySpraysIntro": "પાંદડા પર 5-10% બ્લાઇટ ચેપ જોવા મળ્યા પછી તરત જ 4 દિવસના અંતરે 1-2 સ્પ્રે કરવાથી બ્લાઇટનો વધુ ફેલાવો અટકે છે.",
          "emergencySprays": [
            "સ્ટ્રેપ્ટોસાયક્લિન @ 0.5 ગ્રામ/લિટર + 2-બ્રોમો-નાઇટ્રોપ્રોપેન-1, 3-ડાયોલ (બ્રોનોપોલ 95%) @ 0.5 ગ્રામ/લિટર + કોપર હાઇડ્રોક્સાઇડ 53.8% WP @ 2.0 ગ્રામ/લિટર + સ્પ્રેડર સ્ટીકર @ 0.5 મિલી/લિટર દ્રાવણ.",
            "સ્ટ્રેપ્ટોસાયક્લિન @ 0.5 ગ્રામ/લિટર + 2-બ્રોમો-નાઇટ્રોપ્રોપેન-1, 3-ડાયોલ (બ્રોનોપોલ 95%) @ 0.5 ગ્રામ/લિટર + કાર્બેન્ડાઝિમ 50% WP @ 1.0 ગ્રામ/લિટર + સ્પ્રેડર સ્ટીકર @ 0.5 મિલી/લિટર દ્રાવણ."
          ],
          "emergencySpraysNote": "નોંધ:\n• દરેક સ્પ્રે પહેલાં બ્લાઇટ પ્રભાવિત ફળોને દૂર કરીને નાશ કરો. બગીચાની યોગ્ય સ્વચ્છતા જાળવો અને આરામના સમયગાળામાં નિવારક સ્પ્રે લો.",
          "recommendations": [
            "પાંદડા સૂકા રાખવા માટે ઓવરહેડ સિંચાઈ ટાળો.",
            "નિવારક માપ તરીકે કોપર-આધારિત સ્પ્રે લગાવો.",
            "ચેપગ્રસ્ત પાંદડા તરત જ દૂર કરો અને નાશ કરો."
          ]
        },
        "Fungal": {
          "diseaseName": "રોગ: ફૂગના પાંદડાના ડાઘા",
          "description": "દાડમ ઘણા પાંદડાના ડાઘા પેદા કરતા રોગકારકો માટે સંવેદનશીલ છે જે ફળની ઉપજ અને ગુણવત્તા ઘટાડી શકે છે.",
          "causalOrganism": "પાંદડાના ડાઘા ઘણા ફૂગના રોગકારકો જેવા કે અલ્ટરનેરિયા અલ્ટરનેટા, સર્કોસ્પોરા પ્યુનિકે (સ્યુડોસર્કોસ્પોરા પ્યુનિકે), કોલેટોટ્રિકમ એસપી, ડ્રેક્સક્લેરા રોસ્ટ્રાટાને કારણે થાય છે. આ ઉપરાંત, પાંદડાના ડાઘા અન્ય ઘણી ફૂગની પ્રજાતિઓ જેવી કે બોટ્રિઓડિપ્લોડિયા થિયોબ્રોમી, કર્વુલારિયા એસપી, પેસ્ટાલોટિઓપ્સિસ એસપીને કારણે પણ થતા હોવાનું નોંધાયું છે.",
          "symptoms": "વિવિધ રોગકારકો ખાસ કરીને પાંદડા, દાંડી પર લાક્ષણિક ડાઘાના લક્ષણો ઉત્પન્ન કરે છે. જેની ચોક્કસ ઓળખ ફક્ત માઇક્રોસ્કોપિક અને શુદ્ધ સંસ્કૃતિ અભ્યાસ દ્વારા જ કરી શકાય છે કારણ કે મોટાભાગે કુદરતી પરિસ્થિતિઓમાં ઓવરલેપિંગ રોગના લક્ષણો જોવા મળે છે. પાંદડા અને ફળના ડાઘામાં, સર્કોસ્પોરા ડાઘા દાડમ પર સૌથી વધુ મુખ્ય છે.",
          "predisposingFactors": "20 - 30°C વચ્ચેનું તાપમાન અને લાંબા સમય સુધી 60% થી વધુ ભેજ રોગના વિકાસ માટે અનુકૂળ છે. વરસાદની મોસમમાં પાંદડા અને ફળના ડાઘા વધુ પ્રચલિત હોય છે.",
          "chemicalManagementTitle": "ફૂગના પાંદડાના ડાઘાનું રાસાયણિક સંચાલન",
          "chemicalManagementIntro": "હવામાનની પરિસ્થિતિઓના આધારે 7-10 દિવસના અંતરે નીચે જણાવેલ સ્પ્રેને વૈકલ્પિક રીતે લો અને અંતે આપેલી મહત્વપૂર્ણ સૂચનાઓનું પાલન કરો.",
          "sprays": [
            "ઝિનેબ 75% WP @ 2 ગ્રામ/લિટર",
            "ઝિનેબ 68% + હેક્સાકોનાઝોલ 4% WP @ 2.5 ગ્રામ/લિટર",
            "મેટિરામ 55% WG + પાયરાક્લોસ્ટ્રોબિન 5% @ 3 ગ્રામ/લિટર",
            "ટેબુકોનાઝોલ 50% + ટ્રાઇફ્લોક્સિસ્ટ્રોબિન 25% WG @ 0.5 ગ્રામ/લિટર",
            "પ્રોપીનેબ 70% WP @ 3 ગ્રામ/લિટર",
            "ટ્રાઇસાયક્લાઝોલ 18% + મેન્કોઝેબ 62% WP 2.5 થી 3.0 ગ્રામ/લિટર",
            "કોપર સલ્ફેટ 47.15% + મેન્કોઝેબ 30% WDG @ 2.5 ગ્રામ/લિટર",
            "એઝોક્સિસ્ટ્રોબિન 8.3% + મેન્કોઝેબ 66.7% WG @ 1.5 ગ્રામ/લિટર"
          ],
          "importantInstructionsTitle": "મહત્વપૂર્ણ સૂચનાઓ",
          "instructions": [
            "ફૂલો આવતી વખતે મેન્ડિપ્રોપેમિડ 23.4% @ 1 મિલી/લિટર (10-15 દિવસે 2-3 સ્પ્રે) નો સ્પ્રે સર્કોસ્પોરા ફ્રુટ અને લીફ સ્પોટ અને સ્કેબ સહિત ઘણા ફૂગના રોગો માટે નિવારક તરીકે કામ કરે છે. તેથી આ ફૂલો આવતી વખતે લો.",
            "જો તે દિવસે વરસાદની અપેક્ષા હોય તો સ્પ્રે ટાળો; વરસાદના થોડા કલાકો પછી સ્પ્રે કરવો વધુ સારું અને ખૂબ જ મહત્વપૂર્ણ છે.",
            "અંતિમ દ્રાવણ તૈયાર કર્યા પછી સ્પ્રેનું pH તપાસવું જોઈએ. તેને 6.5-7.0 pH/ અથવા ફૂગનાશક પેક પર સૂચવ્યા મુજબ ગોઠવવું જોઈએ. આ રાસાયણિક ઇજાઓ ટાળશે અને વધુ સારા પરિણામો આપશે.",
            "બોર્ડેક્સ મિશ્રણ સિવાય સ્પ્રે સાથે હંમેશા સ્પ્રેડર સ્ટીકરનો ઉપયોગ કરો.",
            "કોપર ફૂગનાશકો સિવાય કોઈપણ જંતુનાશકનો ઉપયોગ એક સિઝનમાં 2-3 વખતથી વધુ ન કરવો જોઈએ.",
            "અવશેષ-મુક્ત ઉત્પાદન માટે લણણી પહેલાના અંતરાલ મુજબ સ્પ્રેને રોટેશનમાં લઈ શકાય છે."
          ],
          "recommendations": [
            "યોગ્ય ફૂગનાશકો લગાવો, વિવિધ રાસાયણિક જૂથો વચ્ચે ફેરબદલ કરો.",
            "કાપણી દ્વારા હવાના પરિભ્રમણમાં સુધારો કરો.",
            "પાંદડા સૂકા રાખવા માટે છોડના પાયામાં પાણી આપો."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        }
      },
    },



    
    'te': {
      'appTitle': 'అనారరక్షక్',
      'appTagline': 'మీ దానిమ్మ ఫార్మ్ కాపరి',
      'selectLanguage': 'భాషను ఎంచుకోండి',
      'selectModelAndImage': 'మోడల్ & చిత్రం ఎంచుకోండి',
      'modelsLoading': 'దయచేసి వేచి ఉండండి, మోడల్స్ లోడ్ అవుతున్నాయి...',
      'runningInference': 'ప్రాసెస్ జరుగుతోంది...',
      'inferenceError': 'దోషం',
      'modelLoadFailed': 'మోడల్ లోడ్ విఫలమైంది: {error}',
      'inferenceFailed': 'విశ్లేషణ విఫలమైంది: {error}',
      'gallery': 'గ్యాలరీ',
      'camera': 'క్యామెరా',
      'selectImageSource': 'చిత్ర మూలాన్ని ఎంచుకోండి',
      'featureComingSoon': 'ఈ లక్షణం త్వరలో వస్తుంది.',
      'diseases': 'వ్యాధులు',
      'insectsAndPests': 'పురుగులు & కీటకాలు',
      'fruit': 'పండ్లు & పుష్పాలు',
      'fruit_subtitle': 'పండ్లపై వ్యాధులను గుర్తించండి',
      'leaf': 'ఆకు',
      'leaf_subtitle': 'ఆకు వ్యాధులను గుర్తించండి',
      'root': 'వేరు',
      'root_subtitle': 'వేరుల వ్యాధులను తనిఖీ చేయండి',
      'insects_title': 'సజీవ/మృత పురుగులు',
      'insects_subtitle': 'సాధారణ కీటకాలను గుర్తించండి',
      'flowers_title': 'ఆకులు/పుష్పాలు/పండ్లు',
      'flowers_subtitle': 'పుష్పాలను ప్రభావితం చేసే పురుగులు',
      'showManagementTechniques': 'నిర్వహణ పద్ధతులు\nచూపు',
      'managementTechniquesTitle': 'నిర్వహణ పద్ధతులు',
      'noManagementInfo': 'ఈ వ్యాధికి సమాచారం లేదు.',
      'ok': 'సరే',
      'causalOrganismLabel': 'కారణ జీవి',
      'symptomsLabel': 'లక్షణాలు',
      'predisposingFactorsLabel': 'పూర్వ పరిస్థితులు',
      'recommendationsLabel': 'సిఫారసులు',
      'sourceUrlLabel': 'మూలం',
      'confidence': 'నమ్మకం: {score}%',
      'resultLabel': 'ఫలితం:',
      'confidenceScoreLabel': 'నమ్మకం స్కోరు:',
      'Bacterial Blight': 'బాక్టీరియా బ్లైట్',
      'Calyx Rot': 'కేలిక్స్ కుళ్లు',
      'faqTitle': 'తరచుగా అడిగే ప్రశ్నలు',
      'faqData': _faqData, // Needs translation
      'flowers': 'ఆకులు/పుష్పాలు/పండ్లు',
      'insects': 'కీటకాలు',
      'insectsDescription': 'సజీవ/మృత కీటకాలు',
      'pestsCategory': 'పురుగులు & కీటకాలు',
      'diseaseCategory': 'వ్యాధి',
      'root': 'వేరు',
      'feedbackTitle': 'అభిప్రాయం',
      'feedbackHint': 'మీ అభిప్రాయాన్ని ఇక్కడ నమోదు చేయండి...',
      'submitFeedback': 'అభిప్రాయాన్ని సమర్పించండి',
      'feedbackCannotBeEmpty': 'అభిప్రాయం ఖాళీగా ఉండకూడదు.',
      'couldNotLaunchEmail': 'ఇమెయిల్ యాప్‌ను తెరవలేకపోయింది.',
      'searchFaqsHint': 'తరచుగా అడిగే ప్రశ్నలను శోధించండి...',
      'Fungal Cercospora': 'ఫంగల్ సెర్కోస్పోరా',
      'Fruit Rot': 'పండు కుళ్లు',
      'Healthy': 'ఆరోగ్యంగా ఉంది',
      'Fungal Scab': 'ఫంగల్ మచ్చ',
      'Bacterial': 'బాక్టీరియా',
      'Fungal': 'ఫంగల్',
      'Root Knot': 'రూట్ నాట్',
      'Wilt': 'విల్ట్', // Kept for potential other uses
      'Wilt plants': 'విల్ట్ మొక్కలు',
      'Aphids infestation': 'అఫిడ్స్ ముట్టడి',
      'Fruit borer': 'పండు తొలుచు పురుగు',
      'Fruit fly': 'పండు ఈగ',
      'Mealy Bug': 'పిండి నల్లి',
      'Thrisps': 'తామర పురుగులు',
      'management': {
        "Bacterial Blight": {
          "diseaseName": "వ్యాధి: బాక్టీరియా బ్లైట్",
          "description": "అనుకూల పరిస్థితులలో దానిమ్మలో బాక్టీరియా బ్లైట్ ఆర్థిక దిగుబడి నష్టాలను (60-100%) కలిగిస్తుంది. ఇది జూన్-జూలైలో వర్షాకాలంలో (మృగ్ బహార్) మరింత తీవ్రంగా మరియు ప్రబలంగా ఉంటుంది మరియు రబీ కాలంలో (హస్త బహార్) తక్కువగా ఉంటుంది.",
          "causalOrganism": "క్సాంతోమోనాస్ ఆక్సోనోపోడిస్ pv. పునికే (పర్యాయపదం: క్సాంతోమోనాస్ సిట్రి pv. పునికే)",
          "symptoms": "• వ్యాధి లక్షణాలు మొక్క యొక్క అన్ని భాగాలైన ఆకులు, కాండాలు, పువ్వులు మరియు పండ్లపై గమనించబడతాయి.\n• ప్రారంభంలో, ఆకులపై చిన్న అక్రమ బూడిద-నలుపు నీటితో తడిసిన గాయాలు గమనించబడతాయి, ఇవి వ్యాధి పురోగతితో పెద్దవిగా మారతాయి. వ్యాధి సోకిన ఆకులు క్రమంగా పసుపు రంగులోకి మారి రాలిపోతాయి (ప్లేట్ 1a).\n• కొమ్మలు మరియు కాండాలపై నల్లటి గాయాలు ప్రధానంగా కణుపుల వద్ద గమనించబడతాయి, దీని ఫలితంగా అణచివేయబడిన పెరుగుదలతో క్యాంకర్ ఏర్పడుతుంది (ప్లేట్ 1b).\n• అభివృద్ధి చెందిన పండ్లపై వ్యాధి లక్షణాలు ప్రముఖంగా ఉంటాయి. బూడిద-నలుపు గాయాలు పెద్దవిగా మారి కలిసిపోయి, పండు యొక్క మొత్తం ఉపరితలాన్ని కప్పివేస్తాయి. సోకిన పండ్లలో తరచుగా పగుళ్లు కనిపిస్తాయి. వర్షాలు/స్ప్రే/మంచు తర్వాత బాక్టీరియా స్రావం బయటకు వస్తుంది, ఇది చేతులకు అంటుకునేలా అనిపిస్తుంది మరియు ఎండిన తర్వాత ఉపరితలంపై తెల్లటి మెరిసే పొరను ఇస్తుంది. (ప్లేట్ 1c).",
          "predisposingFactors": "ఉష్ణోగ్రత (25 – 30° C), సాపేక్ష తేమ (>50%), వర్షపాతం, సిఫార్సు చేసిన దానికంటే ఎక్కువ నత్రజని మోతాదుల వాడకం, సూక్ష్మపోషకాల లోపాలు.",
          "pruningManagementTitle": "కత్తిరింపు సమయంలో నిర్వహణ పద్ధతులు",
          "pruningManagement": [
            "కాండం ఇన్ఫెక్షన్లు తీవ్రంగా ఉంటే, పంటకోత తర్వాత వెంటనే భారీ కత్తిరింపును పాటించండి మరియు బ్లైట్ ఇన్ఫెక్షన్ ఉన్న అన్ని కాండాలను తొలగించండి. సోకిన ప్రాంతానికి సుమారు 2 - 3 అంగుళాల దిగువన కత్తిరించండి.",
            "కత్తిరింపు తర్వాత కత్తిరించిన చివరలకు బోర్డియక్స్ పేస్ట్ (10%) ను పూయండి. వర్షాకాలంలో పేస్టింగ్ కోసం నూనె ఆధారిత పేస్ట్‌లు [500 గ్రాముల COC + 1 లీటరు అవిసె నూనె కలపడం ద్వారా తయారు చేయబడిన COC పెయింట్] ప్రాధాన్యత ఇవ్వబడతాయి లేదా 50 ml/L పేస్ట్‌లో నూనె కలపండి."
          ],
          "cropSeasonManagementTitle": "పంట కాలంలో నిర్వహణ పద్ధతులు",
          "cropSeasonManagement": [
            "పంటకోత తర్వాత విశ్రాంతి కాలంలో మరియు పండు వచ్చే వరకు కొత్త తోటను నాటిన తర్వాత కూడా రోగనిరోధక స్ప్రేలు తీసుకోవాలి.",
            "తోట/పొరుగు తోటలలో ఉన్న వ్యాధి మరియు వాతావరణ పరిస్థితులపై ఆధారపడి 15 - 20 రోజుల వ్యవధిలో బ్రోనోపోల్ @ 0.5 గ్రా/లీ తో కాపర్ ఆక్సిక్లోరైడ్ లేదా కాపర్ హైడ్రాక్సైడ్ @ 2 -2.5 గ్రా/లీ వంటి కాపర్ ఆధారిత ఫార్ములేషన్‌లతో మార్చి బోర్డియక్స్ మిశ్రమం (1%) తో స్ప్రే చేయండి.",
            "తోటలు విశ్రాంతి కాలంలో ఉండి, ఆకు బ్లైట్ ఇన్ఫెక్షన్ కలిగి ఉంటే, బోర్డియక్స్ మిశ్రమం మరియు బ్రోనోపోల్‌తో మార్చి స్ట్రెప్టోసైక్లిన్ @ 0.5 గ్రా/లీ యొక్క ఒక స్ప్రే తీసుకోవచ్చు."
          ],
          "cropSeasonManagementNote": "గమనిక: ఇది బాక్టీరియా బ్లైట్ లేని ప్రాంతం అయితే స్ట్రెప్టోసైక్లిన్ లేదా బ్రోనోపోల్ స్ప్రేలు అవసరం లేదు.",
          "emergencySpraysTitle": "అత్యవసర స్ప్రేలు",
          "emergencySpraysIntro": "పండ్లపై 5-10% బ్లైట్ ఇన్ఫెక్షన్ గమనించిన వెంటనే 4 రోజుల వ్యవధిలో 1-2 స్ప్రేలు బ్లైట్ వ్యాప్తిని మరింత నిరోధిస్తాయి.",
          "emergencySprays": [
            "స్ట్రెప్టోసైక్లిన్ @ 0.5 గ్రా/లీ + 2-బ్రోమో-నైట్రోప్రోపేన్-1, 3-డయోల్ (బ్రోనోపోల్ 95%) @ 0.5 గ్రా/లీ + కాపర్ హైడ్రాక్సైడ్ 53.8% WP @ 2.0 గ్రా/లీ + స్ప్రెడర్ స్టిక్కర్ @ 0.5 ml/L ద్రావణం.",
            "స్ట్రెప్టోసైక్లిన్ @ 0.5 గ్రా/లీ + 2-బ్రోమో-నైట్రోప్రోపేన్-1, 3-డయోల్ (బ్రోనోపోల్ 95%) @ 0.5 గ్రా/లీ + కార్బెండజిమ్ 50% WP @ 1.0 గ్రా/లీ + స్ప్రెడర్ స్టిక్కర్ @ 0.5 ml/L ద్రావణం."
          ],
          "emergencySpraysNote": "గమనిక:\n• ప్రతి స్ప్రేకు ముందు బ్లైట్ సోకిన పండ్లను తొలగించి నాశనం చేయండి. సరైన తోట పారిశుధ్యాన్ని నిర్వహించండి మరియు విశ్రాంతి కాలంలో నివారణ స్ప్రేలు తీసుకోండి.",
          "recommendations": [
            "బ్లైట్ ఇన్ఫెక్షన్ ఉన్న అన్ని కాండాలను కత్తిరించి తొలగించండి.",
            "కత్తిరింపు తర్వాత కత్తిరించిన చివరలకు బోర్డియక్స్ పేస్ట్ పూయండి.",
            "బోర్డియక్స్ మిశ్రమం లేదా బ్రోనోపోల్ వంటి రోగనిరోధక స్ప్రేలను ఉపయోగించండి.",
            "ప్రతి స్ప్రేకు ముందు బ్లైట్ సోకిన పండ్లను తొలగించి నాశనం చేయండి."
          ]
        },
        "Calyx Rot": {
          "diseaseName": "వ్యాధి: ఆంత్రాక్నోస్/ పండు కుళ్లు/కేలిక్స్ కుళ్లు",
          "description": "అర్ధ-శుష్క పరిస్థితులలో ఆంత్రాక్నోస్/పండు కుళ్లు ఒక ప్రధాన సమస్యగా మారుతోంది. ఈ వ్యాధి ఉష్ణమండల మరియు ఉపఉష్ణమండల ప్రాంతాలలో సాధారణం.",
          "causalOrganism": "కొల్లెటోట్రికమ్ spp.",
          "symptoms": "కొల్లెటోట్రికమ్ లక్షణాలు పువ్వులు, పండ్లు, ఆకులు లేదా కొమ్మలపై అభివృద్ధి చెందుతాయి, కానీ పండ్లు అత్యంత సున్నితంగా ఉంటాయి.\n• ఆకులపై, పసుపు రంగు వలయాలతో చిన్న వృత్తాకార మచ్చలు అభివృద్ధి చెందుతాయి; తరువాత సోకిన ఆకులు పసుపు రంగులోకి మారి అకాల ఆకురాలడానికి దారితీస్తాయి.\n• పండ్లపై, మొదటి లక్షణాలు కేలిక్స్ చివర నుండి పండు తొక్క రంగు మారడం లేదా అనేక వివిక్త మచ్చలుగా గమనించబడతాయి, ఇవి తరువాత కలిసిపోయి పండు ఉపరితలంపై అక్రమ మచ్చలను ఏర్పరుస్తాయి (కొల్లెటోట్రికమ్ spp.)\n• రంగు మారిన ప్రాంతాలు ఎరుపు/ముదురు గోధుమ నుండి నలుపు రంగులోకి మారతాయి. కుళ్లు తొక్క దాటి అరిల్స్‌లోకి విస్తరిస్తుంది, ఇవి విచ్ఛిన్నమై ముదురు బూడిద/గోధుమ-నలుపు రంగులో ఉంటాయి కానీ నీరుగా ఉండవు. ప్రభావిత పండ్లు తరువాత దశలో రాలిపోవచ్చు.\n• పండ్లు సెట్టింగ్ నుండి అన్ని దశలలో ఈ వ్యాధికి అత్యంత హాని కలిగి ఉంటాయి.",
          "predisposingFactors": "25 - 30°C ఉష్ణోగ్రతలు మరియు అధిక తేమ (>60%) వ్యాధి అభివృద్ధికి అనుకూలంగా ఉంటాయి. వేసవి నెలలలో అధిక తేమ, వర్షపాతం మరియు వెచ్చని ఉష్ణోగ్రతలు వ్యాధి తీవ్రతను పెంచుతాయి.",
          "chemicalManagementTitle": "కొల్లెటోట్రికమ్ కుళ్లల రసాయన నిర్వహణ",
          "chemicalManagementIntro": "వాతావరణ పరిస్థితులపై ఆధారపడి 7-10 రోజుల వ్యవధిలో క్రింద పేర్కొన్న స్ప్రేలను ప్రత్యామ్నాయంగా తీసుకోండి మరియు చివరలో ఇచ్చిన ముఖ్యమైన సూచనలను అనుసరించండి.",
          "sprays": [
            "జినెబ్ 68% + హెక్సాకోనజోల్ 4% WP @ 2.5గ్రా/లీటరు",
            "టెబుకోనజోల్ 50% + ట్రైఫ్లోక్సిస్ట్రోబిన్ 25% WG @ 0.5 గ్రా/లీటరు",
            "ప్రొపినెబ్ 70% WP @ 3 గ్రా/లీటరు",
            "కాపర్ ఆక్సిక్లోరైడ్ 45% + కసుగామైసిన్ 5% WP @ 2.5గ్రా/లీటరు",
            "అజాక్సిస్ట్రోబిన్ 8.3% + మాంకోజెబ్ 66.7% WG @ 1.5 గ్రా/లీటరు",
            "ఫ్లూయోపైరమ్ 21.4% + ట్రైఫ్లోక్సిస్ట్రోబిన్ 21.4% SC @ 0.7 ml/లీటరు",
            "ఫ్లూయోపికోలైడ్ 5.56% + ప్రొపామోకార్బ్ హైడ్రోక్లోరైడ్ 55.6% SC @ 1.25 ml/లీటరు"
          ],
          "importantInstructionsTitle": "ముఖ్యమైన సూచనలు",
          "instructions": [
            "పుష్పించే సమయంలో మాండిప్రోపామిడ్ 23.4% @ 1ml/l (10-15 రోజులకు 2-3 స్ప్రేలు) స్ప్రేలు అనేక శిలీంధ్ర వ్యాధులకు నివారణగా పనిచేస్తాయి. కాబట్టి దీనిని పుష్పించే సమయంలో తీసుకోండి.",
            "ఆ రోజు వర్షం ఆశించినట్లయితే స్ప్రేను నివారించండి; వర్షం తర్వాత కొన్ని గంటల తర్వాత స్ప్రే చేయడం మంచిది మరియు చాలా ముఖ్యం.",
            "తుది ద్రావణాన్ని సిద్ధం చేసిన తర్వాత స్ప్రే pH ను తనిఖీ చేయాలి. దీనిని 6.5-7.0 pH/ లేదా శిలీంద్రనాశని ప్యాక్‌పై సూచించిన విధంగా సర్దుబాటు చేయాలి. ఇది రసాయన గాయాలను నివారిస్తుంది మరియు మంచి ఫలితాలను ఇస్తుంది.",
            "బోర్డియక్స్ మిశ్రమం తప్ప స్ప్రేలతో ఎల్లప్పుడూ స్ప్రెడర్ స్టిక్కర్‌ను ఉపయోగించండి.",
            "కాపర్ శిలీంద్రనాశకాలు తప్ప ఏ పురుగుమందును ఒక సీజన్‌లో 2-3 సార్లు కంటే ఎక్కువ ఉపయోగించకూడదు.",
            "అవశేషాలు లేని ఉత్పత్తి కోసం పంటకోతకు ముందు విరామం ప్రకారం స్ప్రేలను రొటేషన్‌లో తీసుకోవచ్చు."
          ],
          "recommendations": [
            "ప్రభావిత పండ్లు మరియు ఆకులను తొలగించి నాశనం చేయండి.",
            "తగిన శిలీంద్రనాశని (ఉదా., జినెబ్, టెబుకోనజోల్) ను వర్తించండి.",
            "కత్తిరింపు ద్వారా గాలి ప్రసరణను మెరుగుపరచండి."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Fungal Cercospora": {
          "diseaseName": "వ్యాధి: సెర్కోస్పోరా పండు మచ్చ",
          "description": "దానిమ్మ పండు మచ్చ శిలీంధ్రాలకు, ముఖ్యంగా సెర్కోస్పోరా పునికే (సూడోసెర్కోస్పోరా పునికే) వ్యాధికారకాలకు గురవుతుంది, ఇవి పండు దిగుబడి మరియు నాణ్యతను తగ్గిస్తాయి.",
          "causalOrganism": "సెర్కోస్పోరా పునికే (సూడోసెర్కోస్పోరా పునికే)",
          "symptoms": "ఈ వ్యాధికారకం ముఖ్యంగా పండ్లపై లక్షణమైన మచ్చ లక్షణాలను ఉత్పత్తి చేస్తుంది. చిన్న, అక్రమ మచ్చలు మొదట వృత్తాకారంలో ఉంటాయి కానీ పెద్దవిగా మరియు ముదురు రంగులోకి మారతాయి.",
          "predisposingFactors": "20 - 30°C మధ్య ఉష్ణోగ్రతలు మరియు 60% కంటే ఎక్కువ తేమ దీర్ఘకాలం పాటు వ్యాధి అభివృద్ధికి అనుకూలంగా ఉంటాయి. వర్షాకాలంలో ఆకు మరియు పండు మచ్చలు తరచుగా ఎక్కువగా ఉంటాయి.",
          "chemicalManagementTitle": "శిలీంధ్ర ఆకు మరియు పండు మచ్చల రసాయన నిర్వహణ",
          "chemicalManagementIntro": "వాతావరణ పరిస్థితులు మరియు వ్యాధి ఒత్తిడిపై ఆధారపడి 7-10 రోజుల వ్యవధిలో క్రింద పేర్కొన్న స్ప్రేలను ప్రత్యామ్నాయంగా తీసుకోండి మరియు చివరలో ఇచ్చిన ముఖ్యమైన సూచనలను అనుసరించండి.",
          "sprays": [
            "జినెబ్ 75% WP @ 2గ్రా/లీటరు",
            "జినెబ్ 68% + హెక్సాకోనజోల్ 4% WP @ 2.5గ్రా/లీటరు",
            "మెటిరామ్ 55% WG + పైరాక్లోస్ట్రోబిన్ 5% @ 3 గ్రా/లీటరు",
            "టెబుకోనజోల్ 50% + ట్రైఫ్లోక్సిస్ట్రోబిన్ 25% WG @ 0.5 గ్రా/లీటరు",
            "ప్రొపినెబ్ 70% WP @ 3 గ్రా/లీటరు",
            "ట్రైసైక్లాజోల్ 18% + మాంకోజెబ్ 62% WP 2.5 నుండి 3.0 గ్రా/లీటరు",
            "కాపర్ సల్ఫేట్ 47.15% + మాంకోజెబ్ 30% WDG @ 2.5 గ్రా/లీటరు",
            "అజాక్సిస్ట్రోబిన్ 8.3% + మాంకోజెబ్ 66.7% WG @ 1.5 గ్రా/లీటరు"
          ],
          "importantInstructionsTitle": "ముఖ్యమైన సూచనలు",
          "instructions": [
            "పుష్పించే సమయంలో మాండిప్రోపామిడ్ 23.4% @ 1ml/l (10-15 రోజులకు 2-3 స్ప్రేలు) స్ప్రేలు సెర్కోస్పోరా పండు మరియు ఆకు మచ్చ మరియు స్కాబ్ సహా అనేక శిలీంధ్ర వ్యాధులకు నివారణగా పనిచేస్తాయి. కాబట్టి దీనిని పుష్పించే సమయంలో తీసుకోండి.",
            "ఆ రోజు వర్షం ఆశించినట్లయితే స్ప్రేను నివారించండి; వర్షం తర్వాత కొన్ని గంటల తర్వాత స్ప్రే చేయడం మంచిది మరియు చాలా ముఖ్యం.",
            "తుది ద్రావణాన్ని సిద్ధం చేసిన తర్వాత స్ప్రే pH ను తనిఖీ చేయాలి. దీనిని 6.5-7.0 pH/ లేదా శిలీంద్రనాశని ప్యాక్‌పై సూచించిన విధంగా సర్దుబాటు చేయాలి. ఇది రసాయన గాయాలను నివారిస్తుంది మరియు మంచి ఫలితాలను ఇస్తుంది.",
            "బోర్డియక్స్ మిశ్రమం తప్ప స్ప్రేలతో ఎల్లప్పుడూ స్ప్రెడర్ స్టిక్కర్‌ను ఉపయోగించండి.",
            "కాపర్ శిలీంద్రనాశకాలు తప్ప ఏ పురుగుమందును ఒక సీజన్‌లో 2-3 సార్లు కంటే ఎక్కువ ఉపయోగించకూడదు.",
            "అవశేషాలు లేని ఉత్పత్తి కోసం పంటకోతకు ముందు విరామం ప్రకారం స్ప్రేలను రొటేషన్‌లో తీసుకోవచ్చు."
          ],
          "recommendations": [
            "సోకిన ఆకులను తొలగించి కాల్చివేయండి.",
            "నివారణగా శిలీంద్రనాశకాలను వర్తించండి.",
            "మంచి గాలి ప్రసరణను నిర్ధారించుకోండి."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Fruit Rot": {
          "diseaseName": "వ్యాధి: ఆంత్రాక్నోస్/ పండు కుళ్లు/కేలిక్స్ కుళ్లు",
          "description": "అర్ధ-శుష్క పరిస్థితులలో ఆంత్రాక్నోస్/పండు కుళ్లు ఒక ప్రధాన సమస్యగా మారుతోంది. ఈ వ్యాధి ఉష్ణమండల మరియు ఉపఉష్ణమండల ప్రాంతాలలో సాధారణం.",
          "causalOrganism": "కొల్లెటోట్రికమ్ spp.",
          "symptoms": "కొల్లెటోట్రికమ్ లక్షణాలు పువ్వులు, పండ్లు, ఆకులు లేదా కొమ్మలపై అభివృద్ధి చెందుతాయి, కానీ పండ్లు అత్యంత సున్నితంగా ఉంటాయి.\n• ఆకులపై, పసుపు రంగు వలయాలతో చిన్న వృత్తాకార మచ్చలు అభివృద్ధి చెందుతాయి; తరువాత సోకిన ఆకులు పసుపు రంగులోకి మారి అకాల ఆకురాలడానికి దారితీస్తాయి.\n• పండ్లపై, మొదటి లక్షణాలు కేలిక్స్ చివర నుండి పండు తొక్క రంగు మారడం లేదా అనేక వివిక్త మచ్చలుగా గమనించబడతాయి, ఇవి తరువాత కలిసిపోయి పండు ఉపరితలంపై అక్రమ మచ్చలను ఏర్పరుస్తాయి (కొల్లెటోట్రికమ్ spp.)\n• రంగు మారిన ప్రాంతాలు ఎరుపు/ముదురు గోధుమ నుండి నలుపు రంగులోకి మారతాయి. కుళ్లు తొక్క దాటి అరిల్స్‌లోకి విస్తరిస్తుంది, ఇవి విచ్ఛిన్నమై ముదురు బూడిద/గోధుమ-నలుపు రంగులో ఉంటాయి కానీ నీరుగా ఉండవు. ప్రభావిత పండ్లు తరువాత దశలో రాలిపోవచ్చు.\n• పండ్లు సెట్టింగ్ నుండి అన్ని దశలలో ఈ వ్యాధికి అత్యంత హాని కలిగి ఉంటాయి.",
          "predisposingFactors": "25 - 30°C ఉష్ణోగ్రతలు మరియు అధిక తేమ (>60%) వ్యాధి అభివృద్ధికి అనుకూలంగా ఉంటాయి. వేసవి నెలలలో అధిక తేమ, వర్షపాతం మరియు వెచ్చని ఉష్ణోగ్రతలు వ్యాధి తీవ్రతను పెంచుతాయి.",
          "chemicalManagementTitle": "కొల్లెటోట్రికమ్ కుళ్లల రసాయన నిర్వహణ",
          "chemicalManagementIntro": "వాతావరణ పరిస్థితులపై ఆధారపడి 7-10 రోజుల వ్యవధిలో క్రింద పేర్కొన్న స్ప్రేలను ప్రత్యామ్నాయంగా తీసుకోండి మరియు చివరలో ఇచ్చిన ముఖ్యమైన సూచనలను అనుసరించండి.",
          "sprays": [
            "జినెబ్ 68% + హెక్సాకోనజోల్ 4% WP @ 2.5గ్రా/లీటరు",
            "టెబుకోనజోల్ 50% + ట్రైఫ్లోక్సిస్ట్రోబిన్ 25% WG @ 0.5 గ్రా/లీటరు",
            "ప్రొపినెబ్ 70% WP @ 3 గ్రా/లీటరు",
            "కాపర్ ఆక్సిక్లోరైడ్ 45% + కసుగామైసిన్ 5% WP @ 2.5గ్రా/లీటరు",
            "అజాక్సిస్ట్రోబిన్ 8.3% + మాంకోజెబ్ 66.7% WG @ 1.5 గ్రా/లీటరు",
            "ఫ్లూయోపైరమ్ 21.4% + ట్రైఫ్లోక్సిస్ట్రోబిన్ 21.4% SC @ 0.7 ml/లీటరు",
            "ఫ్లూయోపికోలైడ్ 5.56% + ప్రొపామోకార్బ్ హైడ్రోక్లోరైడ్ 55.6% SC @ 1.25 ml/లీటరు"
          ],
          "importantInstructionsTitle": "ముఖ్యమైన సూచనలు",
          "instructions": [
            "పుష్పించే సమయంలో మాండిప్రోపామిడ్ 23.4% @ 1ml/l (10-15 రోజులకు 2-3 స్ప్రేలు) స్ప్రేలు అనేక శిలీంధ్ర వ్యాధులకు నివారణగా పనిచేస్తాయి. కాబట్టి దీనిని పుష్పించే సమయంలో తీసుకోండి.",
            "ఆ రోజు వర్షం ఆశించినట్లయితే స్ప్రేను నివారించండి; వర్షం తర్వాత కొన్ని గంటల తర్వాత స్ప్రే చేయడం మంచిది మరియు చాలా ముఖ్యం.",
            "తుది ద్రావణాన్ని సిద్ధం చేసిన తర్వాత స్ప్రే pH ను తనిఖీ చేయాలి. దీనిని 6.5-7.0 pH/ లేదా శిలీంద్రనాశని ప్యాక్‌పై సూచించిన విధంగా సర్దుబాటు చేయాలి. ఇది రసాయన గాయాలను నివారిస్తుంది మరియు మంచి ఫలితాలను ఇస్తుంది.",
            "బోర్డియక్స్ మిశ్రమం తప్ప స్ప్రేలతో ఎల్లప్పుడూ స్ప్రెడర్ స్టిక్కర్‌ను ఉపయోగించండి.",
            "కాపర్ శిలీంద్రనాశకాలు తప్ప ఏ పురుగుమందును ఒక సీజన్‌లో 2-3 సార్లు కంటే ఎక్కువ ఉపయోగించకూడదు.",
            "అవశేషాలు లేని ఉత్పత్తి కోసం పంటకోతకు ముందు విరామం ప్రకారం స్ప్రేలను రొటేషన్‌లో తీసుకోవచ్చు."
          ],
          "recommendations": [
            "ప్రభావిత పండ్లు మరియు ఆకులను తొలగించి నాశనం చేయండి.",
            "తగిన శిలీంద్రనాశని (ఉదా., జినెబ్, టెబుకోనజోల్) ను వర్తించండి.",
            "కత్తిరింపు ద్వారా గాలి ప్రసరణను మెరుగుపరచండి."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Healthy": {
          "description": "నిర్దిష్ట నిర్వహణ అవసరం లేదు. ఒత్తిడి లేదా వ్యాధి యొక్క ఏవైనా సంకేతాల కోసం మొక్కను పర్యవేక్షించడం కొనసాగించండి మరియు మంచి వ్యవసాయ పద్ధతులను నిర్వహించండి."
        },
        "Fungal Scab": {
          "diseaseName": "వ్యాధి: పండు స్కాబ్",
          "description": "2016 నుండి, భారతదేశంలోని శుష్క మరియు అర్ధ-శుష్క ప్రాంతాలలో దానిమ్మ ఉత్పత్తిలో స్కాబ్ ఒక పరిమిత కారకంగా మారింది. వ్యాధి ప్రబలంగా ఉన్న ప్రాంతాలలో, 90-100% పండ్లు ప్రభావితమైన తోటలను కనుగొనడం అసాధారణం కాదు.",
          "causalOrganism": "స్ఫాసెలోమా (syn. ఎల్సినో) పునికే",
          "symptoms": "ఈ వ్యాధికారకం పుష్పించే నుండి పండు పక్వానికి వచ్చే వరకు ఏ దశలోనైనా దాడి చేస్తుంది. పూల మొగ్గలు లేదా చిన్న పండ్ల ఇన్ఫెక్షన్లు వైకల్యానికి దారితీస్తాయి మరియు తత్ఫలితంగా దిగుబడి నష్టాలకు దారితీస్తాయి. పక్వానికి వచ్చిన పండ్ల ఇన్ఫెక్షన్ పండ్ల రూపాన్ని మరియు బాహ్య నాణ్యతను ప్రభావితం చేస్తుంది. గాయాలు బాహ్య తొక్క ఉపరితలాన్ని మాత్రమే ప్రభావితం చేస్తాయి, అరిల్ లేదా రసం నాణ్యతను ప్రభావితం చేయకుండా.\n• పండ్లపై గాయాలు చిన్నవిగా లేదా పెద్దవిగా, గోధుమ రంగులో, గరుకుగా, ఉబ్బెత్తుగా, చిన్న ప్రాంతాల నుండి మొత్తం పండు ఉపరితలాన్ని కప్పివేసే వరకు ఉండవచ్చు, ఇది తొక్కకు రస్సెట్ స్కాబ్ రూపాన్ని ఇస్తుంది.\n• మచ్చలు కొన్నిసార్లు పెద్దవిగా మారి తేలికపాటి కేంద్రం మరియు ముదురు అంచుతో పెద్ద మచ్చలను ఏర్పరుస్తాయి మరియు తాకడానికి గరుకుగా ఉంటాయి.\n• ఇది చిన్న గరుకు, ఉబ్బెత్తు మచ్చల నుండి మొత్తం పండు ఉపరితలాన్ని కప్పివేసే పెద్ద గోధుమ మచ్చల వరకు వివిధ ఆకారం మరియు పరిమాణాల మచ్చలను ఉత్పత్తి చేస్తుంది, ఇది రస్సెట్ రూపాన్ని కలిగి ఉంటుంది.",
          "predisposingFactors": "22 - 28°C ఉష్ణోగ్రతలు, 45 - 65% చుట్టూ తేమతో పాటు వర్షం మరియు గాలి వ్యాధి అభివృద్ధికి అనుకూలంగా ఉంటాయి.",
          "chemicalManagementTitle": "పండు స్కాబ్ యొక్క రసాయన నిర్వహణ",
          "chemicalManagementIntro": "ఈ వ్యాధి సాధారణంగా వర్షాల తర్వాత పండ్లపై గమనించబడుతుంది. ఆకులపై సాధారణంగా పండ్లు లేనప్పుడు గమనించబడుతుంది. గత సీజన్‌లో కూడా మీకు స్కాబ్ ఉంటే వ్యాధి లక్షణాల కోసం వేచి ఉండకండి, వర్షాల తర్వాత నివారణ స్ప్రేలు తీసుకోండి. వాతావరణ పరిస్థితులపై ఆధారపడి 7-10 రోజుల వ్యవధిలో క్రింద పేర్కొన్న స్ప్రేలను ప్రత్యామ్నాయంగా తీసుకోండి మరియు చివరలో ఇచ్చిన ముఖ్యమైన సూచనలను అనుసరించండి,",
          "sprays": [
            "మెటిరామ్ 55% WG + పైరాక్లోస్ట్రోబిన్ 5% @ 3 గ్రా/లీటరు",
            "టెబుకోనజోల్ 50% + ట్రైఫ్లోక్సిస్ట్రోబిన్ 25% WG @ 0.5 గ్రా/లీటరు",
            "అజాక్సిస్ట్రోబిన్ 18.2% + డైఫెనోకోనజోల్ 11.4% SC @ 1ml/ లీటరు",
            "జినెబ్ 68% + హెక్సాకోనజోల్ 4% WP @ 2.5గ్రా/ లీటరు",
            "ఫ్లూయోపికోలైడ్ 5.56% + ప్రొపామోకార్బ్ హైడ్రోక్లోరైడ్ 55.6% SC @"
          ],
          "chemicalManagementNote": "గమనిక: వర్షం తర్వాత వెంటనే ఇస్తే ఉత్తమ ఫలితాలు వస్తాయి.",
          "importantInstructionsTitle": "ముఖ్యమైన సూచనలు",
          "instructions": [
            "పుష్పించే సమయంలో మాండిప్రోపామిడ్ 23.4% @ 1ml/l (10-15 రోజులకు 2-3 స్ప్రేలు) స్ప్రేలు సెర్కోస్పోరా పండు మరియు ఆకు మచ్చ మరియు స్కాబ్ సహా అనేక శిలీంధ్ర వ్యాధులకు నివారణగా పనిచేస్తాయి. కాబట్టి దీనిని పుష్పించే సమయంలో తీసుకోండి.",
            "సెట్టింగ్ వద్ద సోకిన వక్రీకరించిన పండ్లను తొలగించి నాశనం చేయవచ్చు. ఎక్కడా పడవేయవద్దు లేదా విసిరివేయవద్దు.",
            "ఆ రోజు వర్షం ఆశించినట్లయితే స్ప్రేను నివారించండి; స్కాబ్ ఇన్ఫెక్షన్‌ను నివారించడానికి వర్షం తర్వాత కొన్ని గంటల తర్వాత స్ప్రే చేయడం మంచిది మరియు చాలా ముఖ్యం.",
            "తుది ద్రావణాన్ని సిద్ధం చేసిన తర్వాత స్ప్రే pH ను తనిఖీ చేయాలి. దీనిని 6.5-7.0 pH/ లేదా శిలీంద్రనాశని ప్యాక్‌పై సూచించిన విధంగా సర్దుబాటు చేయాలి. ఇది రసాయన గాయాలను నివారిస్తుంది మరియు మంచి ఫలితాలను ఇస్తుంది.",
            "బోర్డియక్స్ మిశ్రమం తప్ప స్ప్రేలతో ఎల్లప్పుడూ స్ప్రెడర్ స్టిక్కర్‌ను ఉపయోగించండి.",
            "కాపర్ శిలీంద్రనాశకాలు తప్ప ఏ పురుగుమందును ఒక సీజన్‌లో 2-3 సార్లు కంటే ఎక్కువ ఉపయోగించకూడదు.",
            "అవశేషాలు లేని ఉత్పత్తి కోసం పంటకోతకు ముందు విరామం ప్రకారం స్ప్రేలను రొటేషన్‌లో తీసుకోవచ్చు."
          ],
          "recommendations": [
            "సోకిన లేదా వక్రీకరించిన పండ్లను తొలగించి నాశనం చేయండి.",
            "వర్షాల తర్వాత నివారణ స్ప్రేలు (ఉదా., మెటిరామ్, టెబుకోనజోల్) వర్తించండి.",
            "గాలి ప్రసరణను మెరుగుపరచడానికి చెట్లను కత్తిరించండి."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Bacterial": {
          "diseaseName": "వ్యాధి: బాక్టీరియా ఆకు మచ్చ/జిడ్డు మచ్చ",
          "description": "అనుకూల పరిస్థితులలో దానిమ్మలో బాక్టీరియా బ్లైట్ ఆర్థిక దిగుబడి నష్టాలను (60-100%) కలిగిస్తుంది. ఇది జూన్-జూలైలో వర్షాకాలంలో (మృగ్ బహార్) మరింత తీవ్రంగా మరియు ప్రబలంగా ఉంటుంది మరియు రబీ కాలంలో (హస్త బహార్) తక్కువగా ఉంటుంది.",
          "causalOrganism": "క్సాంతోమోనాస్ ఆక్సోనోపోడిస్ pv. పునికే (పర్యాయపదం: క్సాంతోమోనాస్ సిట్రి pv. పునికే)",
          "symptoms": "• వ్యాధి లక్షణాలు మొక్క యొక్క అన్ని భాగాలైన ఆకులు, కాండాలు, పువ్వులు మరియు పండ్లపై గమనించబడతాయి.\n• ప్రారంభంలో, ఆకులపై చిన్న అక్రమ బూడిద-నలుపు నీటితో తడిసిన గాయాలు గమనించబడతాయి, ఇవి వ్యాధి పురోగతితో పెద్దవిగా మారతాయి. వ్యాధి సోకిన ఆకులు క్రమంగా పసుపు రంగులోకి మారి రాలిపోతాయి (ప్లేట్ 1a).\n• వర్షాలు/స్ప్రే/మంచు తర్వాత బాక్టీరియా స్రావం బయటకు వస్తుంది, ఇది చేతులకు అంటుకునేలా అనిపిస్తుంది మరియు ఎండిన తర్వాత ఉపరితలంపై తెల్లటి మెరిసే పొరను ఇస్తుంది. (ప్లేట్ 1c).",
          "predisposingFactors": "ఉష్ణోగ్రత (25 – 30° C), సాపేక్ష తేమ (>50%), వర్షపాతం, సిఫార్సు చేసిన దానికంటే ఎక్కువ నత్రజని మోతాదుల వాడకం, సూక్ష్మపోషకాల లోపాలు.",
          "cropSeasonManagementTitle": "పంట కాలంలో నిర్వహణ పద్ధతులు",
          "cropSeasonManagement": [
            "పంటకోత తర్వాత విశ్రాంతి కాలంలో మరియు పండు వచ్చే వరకు కొత్త తోటను నాటిన తర్వాత కూడా రోగనిరోధక స్ప్రేలు తీసుకోవాలి.",
            "తోట/పొరుగు తోటలలో ఉన్న వ్యాధి మరియు వాతావరణ పరిస్థితులపై ఆధారపడి 15 - 20 రోజుల వ్యవధిలో బ్రోనోపోల్ @ 0.5 గ్రా/లీ తో కాపర్ ఆక్సిక్లోరైడ్ లేదా కాపర్ హైడ్రాక్సైడ్ @ 2 -2.5 గ్రా/లీ వంటి కాపర్ ఆధారిత ఫార్ములేషన్‌లతో మార్చి బోర్డియక్స్ మిశ్రమం (1%) తో స్ప్రే చేయండి.",
            "తోటలు విశ్రాంతి కాలంలో ఉండి, ఆకు బ్లైట్ ఇన్ఫెక్షన్ కలిగి ఉంటే, బోర్డియక్స్ మిశ్రమం మరియు బ్రోనోపోల్‌తో మార్చి స్ట్రెప్టోసైక్లిన్ @ 0.5 గ్రా/లీ యొక్క ఒక స్ప్రే తీసుకోవచ్చు."
          ],
          "cropSeasonManagementNote": "గమనిక: ఇది బాక్టీరియా బ్లైట్ లేని ప్రాంతం అయితే స్ట్రెప్టోసైక్లిన్ లేదా బ్రోనోపోల్ స్ప్రేలు అవసరం లేదు.",
          "emergencySpraysTitle": "అత్యవసర స్ప్రేలు",
          "emergencySpraysIntro": "ఆకులపై 5-10% బ్లైట్ ఇన్ఫెక్షన్ గమనించిన వెంటనే 4 రోజుల వ్యవధిలో 1-2 స్ప్రేలు బ్లైట్ వ్యాప్తిని మరింత నిరోధిస్తాయి.",
          "emergencySprays": [
            "స్ట్రెప్టోసైక్లిన్ @ 0.5 గ్రా/లీ + 2-బ్రోమో-నైట్రోప్రోపేన్-1, 3-డయోల్ (బ్రోనోపోల్ 95%) @ 0.5 గ్రా/లీ + కాపర్ హైడ్రాక్సైడ్ 53.8% WP @ 2.0 గ్రా/లీ + స్ప్రెడర్ స్టిక్కర్ @ 0.5 ml/L ద్రావణం.",
            "స్ట్రెప్టోసైక్లిన్ @ 0.5 గ్రా/లీ + 2-బ్రోమో-నైట్రోప్రోపేన్-1, 3-డయోల్ (బ్రోనోపోల్ 95%) @ 0.5 గ్రా/లీ + కార్బెండజిమ్ 50% WP @ 1.0 గ్రా/లీ + స్ప్రెడర్ స్టిక్కర్ @ 0.5 ml/L ద్రావణం."
          ],
          "emergencySpraysNote": "గమనిక:\n• ప్రతి స్ప్రేకు ముందు బ్లైట్ సోకిన పండ్లను తొలగించి నాశనం చేయండి. సరైన తోట పారిశుధ్యాన్ని నిర్వహించండి మరియు విశ్రాంతి కాలంలో నివారణ స్ప్రేలు తీసుకోండి.",
          "recommendations": [
            "ఆకులను పొడిగా ఉంచడానికి ఓవర్ హెడ్ నీటిపారుదలని నివారించండి.",
            "నివారణ చర్యగా కాపర్ ఆధారిత స్ప్రేలను వర్తించండి.",
            "సోకిన ఆకులను వెంటనే తొలగించి నాశనం చేయండి."
          ]
        },
        "Fungal": {
          "diseaseName": "వ్యాధి: శిలీంధ్ర ఆకు మచ్చలు",
          "description": "దానిమ్మ అనేక ఆకు మచ్చలను కలిగించే వ్యాధికారకాలకు గురవుతుంది, ఇవి పండు దిగుబడి మరియు నాణ్యతను తగ్గిస్తాయి.",
          "causalOrganism": "ఆకు మచ్చలు అనేక శిలీంధ్ర వ్యాధికారకాలైన ఆల్టర్నేరియా ఆల్టర్నేటా, సెర్కోస్పోరా పునికే (సూడోసెర్కోస్పోరా పునికే), కొల్లెటోట్రికమ్ sp., డ్రెక్స్క్లెరా రోస్ట్రాటా వల్ల కలుగుతాయి. అంతేకాకుండా, ఆకు మచ్చలు బోట్రియోడిప్లోడియా థియోబ్రోమే, కర్వులేరియా sp., పెస్టలోటియోప్సిస్ sp. వంటి అనేక ఇతర శిలీంధ్ర జాతుల వల్ల కూడా కలుగుతాయని నివేదించబడింది.",
          "symptoms": "వివిధ వ్యాధికారకాలు ముఖ్యంగా ఆకులు, కాండాలపై లక్షణమైన మచ్చ లక్షణాలను ఉత్పత్తి చేస్తాయి. దీని యొక్క ఖచ్చితమైన గుర్తింపు సూక్ష్మదర్శిని మరియు స్వచ్ఛమైన కల్చర్ అధ్యయనాల ద్వారా మాత్రమే చేయబడుతుంది, ఎందుకంటే చాలాసార్లు సహజ పరిస్థితులలో అతివ్యాప్తి చెందుతున్న వ్యాధి లక్షణాలు గమనించబడతాయి. ఆకు మరియు పండు మచ్చలలో, సెర్కోస్పోరా మచ్చలు దానిమ్మపై అత్యంత ప్రముఖంగా ఉంటాయి.",
          "predisposingFactors": "20 - 30°C మధ్య ఉష్ణోగ్రతలు మరియు 60% కంటే ఎక్కువ తేమ దీర్ఘకాలం పాటు వ్యాధి అభివృద్ధికి అనుకూలంగా ఉంటాయి. వర్షాకాలంలో ఆకు మరియు పండు మచ్చలు తరచుగా ఎక్కువగా ఉంటాయి.",
          "chemicalManagementTitle": "శిలీంధ్ర ఆకు మచ్చల రసాయన నిర్వహణ",
          "chemicalManagementIntro": "వాతావరణ పరిస్థితులపై ఆధారపడి 7-10 రోజుల వ్యవధిలో క్రింద పేర్కొన్న స్ప్రేలను ప్రత్యామ్నాయంగా తీసుకోండి మరియు చివరలో ఇచ్చిన ముఖ్యమైన సూచనలను అనుసరించండి.",
          "sprays": [
            "జినెబ్ 75% WP @ 2గ్రా/లీటరు",
            "జినెబ్ 68% + హెక్సాకోనజోల్ 4% WP @ 2.5గ్రా/లీటరు",
            "మెటిరామ్ 55% WG + పైరాక్లోస్ట్రోబిన్ 5% @ 3 గ్రా/లీటరు",
            "టెబుకోనజోల్ 50% + ట్రైఫ్లోక్సిస్ట్రోబిన్ 25% WG @ 0.5 గ్రా/లీటరు",
            "ప్రొపినెబ్ 70% WP @ 3 గ్రా/లీటరు",
            "ట్రైసైక్లాజోల్ 18% + మాంకోజెబ్ 62% WP 2.5 నుండి 3.0 గ్రా/లీటరు",
            "కాపర్ సల్ఫేట్ 47.15% + మాంకోజెబ్ 30% WDG @ 2.5 గ్రా/లీటరు",
            "అజాక్సిస్ట్రోబిన్ 8.3% + మాంకోజెబ్ 66.7% WG @ 1.5 గ్రా/లీటరు"
          ],
          "importantInstructionsTitle": "ముఖ్యమైన సూచనలు",
          "instructions": [
            "పుష్పించే సమయంలో మాండిప్రోపామిడ్ 23.4% @ 1ml/l (10-15 రోజులకు 2-3 స్ప్రేలు) స్ప్రేలు సెర్కోస్పోరా పండు మరియు ఆకు మచ్చ మరియు స్కాబ్ సహా అనేక శిలీంధ్ర వ్యాధులకు నివారణగా పనిచేస్తాయి. కాబట్టి దీనిని పుష్పించే సమయంలో తీసుకోండి.",
            "ఆ రోజు వర్షం ఆశించినట్లయితే స్ప్రేను నివారించండి; వర్షం తర్వాత కొన్ని గంటల తర్వాత స్ప్రే చేయడం మంచిది మరియు చాలా ముఖ్యం.",
            "తుది ద్రావణాన్ని సిద్ధం చేసిన తర్వాత స్ప్రే pH ను తనిఖీ చేయాలి. దీనిని 6.5-7.0 pH/ లేదా శిలీంద్రనాశని ప్యాక్‌పై సూచించిన విధంగా సర్దుబాటు చేయాలి. ఇది రసాయన గాయాలను నివారిస్తుంది మరియు మంచి ఫలితాలను ఇస్తుంది.",
            "బోర్డియక్స్ మిశ్రమం తప్ప స్ప్రేలతో ఎల్లప్పుడూ స్ప్రెడర్ స్టిక్కర్‌ను ఉపయోగించండి.",
            "కాపర్ శిలీంద్రనాశకాలు తప్ప ఏ పురుగుమందును ఒక సీజన్‌లో 2-3 సార్లు కంటే ఎక్కువ ఉపయోగించకూడదు.",
            "అవశేషాలు లేని ఉత్పత్తి కోసం పంటకోతకు ముందు విరామం ప్రకారం స్ప్రేలను రొటేషన్‌లో తీసుకోవచ్చు."
          ],
          "recommendations": [
            "తగిన శిలీంద్రనాశకాలను వర్తించండి, వివిధ రసాయన సమూహాల మధ్య మారుస్తూ.",
            "కత్తిరింపు ద్వారా గాలి ప్రసరణను మెరుగుపరచండి.",
            "ఆకులను పొడిగా ఉంచడానికి మొక్క యొక్క ఆధారం వద్ద నీరు పోయండి."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        }
      },
    },
    'kn': {
      'appTitle': 'ಅನಾರರಕ್ಷಕ',
      'appTagline': 'ನಿಮ್ಮ ದಾಳಿಂಬೆ ತೋಟದ ರಕ್ಷಕ',
      'selectLanguage': 'ಭಾಷೆ ಆಯ್ಕೆಮಾಡಿ',
      'selectModelAndImage': 'ಮಾದರಿಯನ್ನೂ ಚಿತ್ರವನ್ನೂ ಆಯ್ಕೆಮಾಡಿ',
      'modelsLoading': 'ದಯವಿಟ್ಟು ನಿರೀಕ್ಷಿಸಿ, ಮಾದರಿಗಳು ಲೋಡ್ ಆಗುತ್ತಿವೆ...',
      'runningInference': 'ಪ್ರಕ್ರಿಯೆ ನಡೆಯುತ್ತಿದೆ...',
      'inferenceError': 'ದೋಷ',
      'modelLoadFailed': 'ಮಾದರಿ ಲೋಡ್ ವಿಫಲ: {error}',
      'inferenceFailed': 'ಪ್ರಕ್ರಿಯೆ ವಿಫಲ: {error}',
      'gallery': 'ಗ್ಯಾಲರಿ',
      'camera': 'ಕ್ಯಾಮೆರಾ',
      'selectImageSource': 'ಚಿತ್ರ ಮೂಲವನ್ನು ಆಯ್ಕೆಮಾಡಿ',
      'featureComingSoon': 'ಈ ವೈಶಿಷ್ಟ್ಯ ಶೀಘ್ರದಲ್ಲೇ ಬರುತ್ತದೆ.',
      'diseases': 'ರೋಗಗಳು',
      'insectsAndPests': 'ಕೀಟಗಳು ಮತ್ತು ಕೀಡು',
      'fruit': 'ಹಣ್ಣು & ಹೂವು',
      'fruit_subtitle': 'ಹಣ್ಣಿನ ರೋಗಗಳನ್ನು ಗುರುತಿಸಿ',
      'leaf': 'ಇಲೆ',
      'leaf_subtitle': 'ಇಲೆಯ ರೋಗಗಳನ್ನು ಗುರುತಿಸಿ',
      'root': 'ಮೂಲ',
      'root_subtitle': 'ಮೂಲ ರೋಗಗಳನ್ನು ಪರಿಶೀಲಿಸಿ',
      'insects_title': 'ಸಜೀವ/ಸಾವಿನ ಕೀಟಗಳು',
      'insects_subtitle': 'ಸಾಮಾನ್ಯ ಕೀಟಗಳನ್ನು ಗುರುತಿಸಿ',
      'flowers_title': 'ಇಲೆ/ಹೂವು/ಹಣ್ಣು',
      'flowers_subtitle': 'ಹೂವಿನ ಮೇಲೆ ಪರಿಣಾಮ ಬೀರುವ ಕೀಟಗಳು',
      'showManagementTechniques': 'ನಿರ್ವಹಣಾ ತಂತ್ರಗಳು\nತೋರಿಸಿ',
      'managementTechniquesTitle': 'ನಿರ್ವಹಣಾ ತಂತ್ರಗಳು',
      'noManagementInfo': 'ಈ ರೋಗಕ್ಕೆ ಮಾಹಿತಿ ಲಭ್ಯವಿಲ್ಲ.',
      'ok': 'ಸರಿ',
      'causalOrganismLabel': 'ಕಾರಕ ಜೀವಿ',
      'symptomsLabel': 'ಲಕ್ಷಣಗಳು',
      'predisposingFactorsLabel': 'ಪೂರ್ವಪರಿಸ್ಥಿತಿಗಳು',
      'recommendationsLabel': 'ಶಿಫಾರಸುಗಳು',
      'sourceUrlLabel': 'ಮೂಲ',
      'confidence': 'ಆತ್ಮವಿಶ್ವಾಸ: {score}%',
      'resultLabel': 'ಫಲಿತಾಂಶ:',
      'confidenceScoreLabel': 'ಆತ್ಮವಿಶ್ವಾಸ ಅಂಕೆ:',
      'Bacterial Blight': 'ಬ್ಯಾಕ್ಟೀರಿಯಾ ಬ್ಲೈಟ್',
      'Calyx Rot': 'ಕೇಲಿಕ್ಸ್ ಕುಳು',
      'faqTitle': 'ಪದೇ ಪದೇ ಕೇಳಲಾಗುವ ಪ್ರಶ್ನೆಗಳು',
      'faqData': _faqData, // Needs translation
      'flowers': 'ಎಲೆಗಳು/ಹೂವುಗಳು/ಹಣ್ಣುಗಳು',
      'insects': 'ಕೀಟಗಳು',
      'insectsDescription': 'ಜೀವಂತ/ಸತ್ತ ಕೀಟಗಳು',
      'pestsCategory': 'ಕೀಟಗಳು ಮತ್ತು ಪೀಡೆಗಳು',
      'diseaseCategory': 'ರೋಗ',
      'feedbackTitle': 'ಪ್ರತಿಕ್ರಿಯೆ',
      'feedbackHint': 'ನಿಮ್ಮ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಇಲ್ಲಿ ನಮೂದಿಸಿ...',
      'submitFeedback': 'ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಸಲ್ಲಿಸಿ',
      'feedbackCannotBeEmpty': 'ಪ್ರತಿಕ್ರಿಯೆ ಖಾಲಿಯಾಗಿರಲು ಸಾಧ್ಯವಿಲ್ಲ.',
      'couldNotLaunchEmail': 'ಇಮೇಲ್ ಅಪ್ಲಿಕೇಶನ್ ತೆರೆಯಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ.',
      'searchFaqsHint': 'ಪದೇ ಪದೇ ಕೇಳಲಾಗುವ ಪ್ರಶ್ನೆಗಳನ್ನು ಹುಡುಕಿ...',
      'Fungal Cercospora': 'ಶಿಲೀಂಧ್ರ ಸೆರ್ಕೋಸ್ಪೋರಾ',
      'Fruit Rot': 'ಹಣ್ಣು ಕುಳು',
      'Healthy': 'ಆರೋಗ್ಯಕರ',
      'Fungal Scab': 'ಶಿಲೀಂಧ್ರ ಮಸಿ',
      'Bacterial': 'ಬ್ಯಾಕ್ಟೀರಿಯಾ',
      'Fungal': 'ಶಿಲೀಂಧ್ರ',
      'Root Knot': 'ರೂಟ್ ನಾಟ್',
      'Wilt': 'ವಿಲ್ಟ್', // Kept for potential other uses
      'Wilt plants': 'ವಿಲ್ಟ್ ಗಿಡಗಳು',
      'Aphids infestation': 'ಏಫಿಡ್ ಮುತ್ತಿಕೊಳ್ಳುವಿಕೆ',
      'Fruit borer': 'ಹಣ್ಣು ಕೊರಕ',
      'Fruit fly': 'ಹಣ್ಣಿನ ನೊಣ',
      'Mealy Bug': 'ಹಿಟ್ಟು ತಿಗಣೆ',
      'Thrisps': 'ಥ್ರಿಪ್ಸ್',
      'management': {
        "Bacterial Blight": {
          "diseaseName": "ರೋಗ: ಬ್ಯಾಕ್ಟೀರಿಯಾದ ಬ್ಲೈಟ್",
          "description": "ಅನುಕೂಲಕರ ಪರಿಸ್ಥಿತಿಗಳಲ್ಲಿ ದಾಳಿಂಬೆಯಲ್ಲಿ ಬ್ಯಾಕ್ಟೀರಿಯಾದ ಬ್ಲೈಟ್ ಆರ್ಥಿಕ ಇಳುವರಿ ನಷ್ಟವನ್ನು (60-100%) ಉಂಟುಮಾಡುತ್ತದೆ. ಇದು ಜೂನ್-ಜುಲೈನಲ್ಲಿ ಮಳೆಗಾಲದಲ್ಲಿ (ಮೃಗ್ ಬಹಾರ್) ಹೆಚ್ಚು ತೀವ್ರ ಮತ್ತು ಪ್ರಚಲಿತವಾಗಿದೆ ಮತ್ತು ರಬಿ ಋತುವಿನಲ್ಲಿ (ಹಸ್ತಾ ಬಹಾರ್) ಕಡಿಮೆ ಇರುತ್ತದೆ.",
          "causalOrganism": "ಕ್ಸಾಂಥೋಮೊನಾಸ್ ಆಕ್ಸೊನೊಪೊಡಿಸ್ ಪಿವಿ. ಪುನಿಕೇ (ಸಮಾನಾರ್ಥಕ: ಕ್ಸಾಂಥೋಮೊನಾಸ್ ಸಿಟ್ರಿ ಪಿವಿ. ಪುನಿಕೇ)",
          "symptoms": "• ರೋಗದ ಲಕ್ಷಣಗಳು ಸಸ್ಯದ ಎಲ್ಲಾ ಭಾಗಗಳಾದ ಎಲೆಗಳು, ಕಾಂಡಗಳು, ಹೂವುಗಳು ಮತ್ತು ಹಣ್ಣುಗಳ ಮೇಲೆ ಕಂಡುಬರುತ್ತವೆ.\n• ಆರಂಭದಲ್ಲಿ, ಎಲೆಗಳ ಮೇಲೆ ಸಣ್ಣ ಅನಿಯಮಿತ ಬೂದು-ಕಪ್ಪು ನೀರಿನಿಂದ ಕೂಡಿದ ಗಾಯಗಳು ಕಂಡುಬರುತ್ತವೆ, ಇದು ರೋಗದ ಪ್ರಗತಿಯೊಂದಿಗೆ ದೊಡ್ಡದಾಗುತ್ತದೆ. ರೋಗಗ್ರಸ್ತ ಎಲೆಗಳು ಕ್ರಮೇಣ ಹಳದಿ ಬಣ್ಣಕ್ಕೆ ತಿರುಗಿ ಉದುರಿಹೋಗುತ್ತವೆ (ಪ್ಲೇಟ್ 1a).\n• ಕೊಂಬೆಗಳು ಮತ್ತು ಕಾಂಡಗಳ ಮೇಲೆ ಕಪ್ಪು ಗಾಯಗಳು ಮುಖ್ಯವಾಗಿ ಗಂಟುಗಳ ಮೇಲೆ ಕಂಡುಬರುತ್ತವೆ, ಇದು ಕುಗ್ಗಿದ ಬೆಳವಣಿಗೆಯೊಂದಿಗೆ ಕ್ಯಾಂಕರ್ ರಚನೆಗೆ ಕಾರಣವಾಗುತ್ತದೆ (ಪ್ಲೇಟ್ 1b).\n• ಅಭಿವೃದ್ಧಿ ಹೊಂದಿದ ಹಣ್ಣುಗಳ ಮೇಲೆ ರೋಗದ ಲಕ್ಷಣಗಳು ಪ್ರಮುಖವಾಗಿವೆ. ಬೂದು-ಕಪ್ಪು ಗಾಯಗಳು ದೊಡ್ಡದಾಗಿ ಮತ್ತು ಒಂದಕ್ಕೊಂದು ಸೇರಿಕೊಂಡು, ಹಣ್ಣಿನ ಸಂಪೂರ್ಣ ಮೇಲ್ಮೈಯನ್ನು ಆವರಿಸುತ್ತವೆ. ಸೋಂಕಿತ ಹಣ್ಣುಗಳು ಆಗಾಗ್ಗೆ ಬಿರುಕುಗಳನ್ನು ತೋರಿಸುತ್ತವೆ. ಮಳೆ/ಸಿಂಪಡಣೆ/ಇಬ್ಬನಿಯ ನಂತರ ಬ್ಯಾಕ್ಟೀರಿಯಾದ ಸ್ರಾವ ಹೊರಬರುತ್ತದೆ, ಇದು ಕೈಗಳಿಗೆ ಜಿಗುಟಾಗಿರುತ್ತದೆ ಮತ್ತು ಒಣಗಿದ ನಂತರ ಮೇಲ್ಮೈಯಲ್ಲಿ ಬಿಳಿ ಹೊಳೆಯುವ ಪದರವನ್ನು ನೀಡುತ್ತದೆ. (ಪ್ಲೇಟ್ 1c).",
          "predisposingFactors": "ತಾಪಮಾನ (25 – 30° C), ಸಾಪೇಕ್ಷ ಆರ್ದ್ರತೆ (>50%), ಮಳೆ, ಶಿಫಾರಸು ಮಾಡಿದ್ದಕ್ಕಿಂತ ಹೆಚ್ಚಿನ ಸಾರಜನಕ ಪ್ರಮಾಣದ ಅನ್ವಯ, ಸೂಕ್ಷ್ಮ ಪೋಷಕಾಂಶಗಳ ಕೊರತೆ.",
          "pruningManagementTitle": "ಸಮರುವಿಕೆಯ ಸಮಯದಲ್ಲಿ ನಿರ್ವಹಣಾ ಪದ್ಧತಿಗಳು",
          "pruningManagement": [
            "ಕಾಂಡದ ಸೋಂಕುಗಳು ತೀವ್ರವಾಗಿದ್ದರೆ, ಕೊಯ್ಲಿನ ನಂತರ ತಕ್ಷಣವೇ ಭಾರಿ ಸಮರುವಿಕೆಯನ್ನು ಅಭ್ಯಾಸ ಮಾಡಿ ಮತ್ತು ಬ್ಲೈಟ್ ಸೋಂಕಿನೊಂದಿಗೆ ಎಲ್ಲಾ ಕಾಂಡಗಳನ್ನು ತೆಗೆದುಹಾಕಿ. ಸೋಂಕಿತ ಪ್ರದೇಶಕ್ಕಿಂತ ಸುಮಾರು 2 - 3 ಇಂಚು ಕೆಳಗೆ ಸಮರುವಿಕೆ ಮಾಡಿ.",
            "ಸಮರುವಿಕೆಯ ನಂತರ ಕತ್ತರಿಸಿದ ತುದಿಗಳಿಗೆ ಬೋರ್ಡೆಕ್ಸ್ ಪೇಸ್ಟ್ (10%) ಅನ್ನು ಅನ್ವಯಿಸಿ. ಮಳೆಗಾಲದಲ್ಲಿ ಪೇಸ್ಟ್ ಮಾಡಲು ಎಣ್ಣೆ ಆಧಾರಿತ ಪೇಸ್ಟ್‌ಗಳು [500 ಗ್ರಾಂ COC + 1 ಲೀಟರ್ ಲಿನ್ಸೆಡ್ ಎಣ್ಣೆಯನ್ನು ಬೆರೆಸಿ ಮಾಡಿದ COC ಪೇಂಟ್] ಉತ್ತಮ ಅಥವಾ 50 ಮಿಲಿ/ಲೀಟರ್ ಪೇಸ್ಟ್‌ನಲ್ಲಿ ಎಣ್ಣೆಯನ್ನು ಬೆರೆಸಿ."
          ],
          "cropSeasonManagementTitle": "ಬೆಳೆ ಋತುವಿನಲ್ಲಿ ನಿರ್ವಹಣಾ ಪದ್ಧತಿಗಳು",
          "cropSeasonManagement": [
            "ಕೊಯ್ಲಿನ ನಂತರ ವಿಶ್ರಾಂತಿ ಅವಧಿಯಲ್ಲಿ ಮತ್ತು ಹಣ್ಣು ಬಿಡುವವರೆಗೆ ಹೊಸ ತೋಟವನ್ನು ನೆಟ್ಟ ನಂತರವೂ ರೋಗನಿರೋಧಕ ಸಿಂಪಡಣೆಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳಬೇಕು.",
            "ತೋಟ/ನೆರೆಯ ತೋಟಗಳಲ್ಲಿ ಇರುವ ರೋಗ ಮತ್ತು ಹವಾಮಾನ ಪರಿಸ್ಥಿತಿಗಳನ್ನು ಅವಲಂಬಿಸಿ 15 - 20 ದಿನಗಳ ಅಂತರದಲ್ಲಿ ಬ್ರೋನೋಪೋಲ್ @ 0.5 ಗ್ರಾಂ/ಲೀಟರ್ ನೊಂದಿಗೆ ತಾಮ್ರದ ಆಕ್ಸಿಕ್ಲೋರೈಡ್ ಅಥವಾ ತಾಮ್ರದ ಹೈಡ್ರಾಕ್ಸೈಡ್ @ 2 -2.5 ಗ್ರಾಂ/ಲೀಟರ್ ನಂತಹ ತಾಮ್ರ ಆಧಾರಿತ ಸೂತ್ರೀಕರಣಗಳೊಂದಿಗೆ ಬದಲಾಯಿಸಿ ಬೋರ್ಡೆಕ್ಸ್ ಮಿಶ್ರಣ (1%) ದೊಂದಿಗೆ ಸಿಂಪಡಿಸಿ.",
            "ತೋಟಗಳು ವಿಶ್ರಾಂತಿ ಅವಧಿಯಲ್ಲಿದ್ದರೆ ಮತ್ತು ಎಲೆ ಬ್ಲೈಟ್ ಸೋಂಕನ್ನು ಹೊಂದಿದ್ದರೆ, ಬೋರ್ಡೆಕ್ಸ್ ಮಿಶ್ರಣ ಮತ್ತು ಬ್ರೋನೋಪೋಲ್ ನೊಂದಿಗೆ ಬದಲಾಯಿಸಿ ಸ್ಟ್ರೆಪ್ಟೋಸೈಕ್ಲಿನ್ @ 0.5 ಗ್ರಾಂ/ಲೀಟರ್ ನ ಒಂದು ಸಿಂಪಡಣೆಯನ್ನು ತೆಗೆದುಕೊಳ್ಳಬಹುದು."
          ],
          "cropSeasonManagementNote": "ಗಮನಿಸಿ: ಇದು ಬ್ಯಾಕ್ಟೀರಿಯಾದ ಬ್ಲೈಟ್ ಮುಕ್ತ ಪ್ರದೇಶವಾಗಿದ್ದರೆ ಸ್ಟ್ರೆಪ್ಟೋಸೈಕ್ಲಿನ್ ಅಥವಾ ಬ್ರೋನೋಪೋಲ್ ಸಿಂಪಡಣೆಗಳು ಅಗತ್ಯವಿಲ್ಲ.",
          "emergencySpraysTitle": "ತುರ್ತು ಸಿಂಪಡಣೆಗಳು",
          "emergencySpraysIntro": "ಹಣ್ಣುಗಳ ಮೇಲೆ 5-10% ಬ್ಲೈಟ್ ಸೋಂಕು ಕಂಡುಬಂದ ತಕ್ಷಣ 4 ದಿನಗಳ ಅಂತರದಲ್ಲಿ 1-2 ಸಿಂಪಡಣೆಗಳು ಬ್ಲೈಟ್ ಹರಡುವುದನ್ನು ಮತ್ತಷ್ಟು ನಿರ್ಬಂಧಿಸುತ್ತವೆ.",
          "emergencySprays": [
            "ಸ್ಟ್ರೆಪ್ಟೋಸೈಕ್ಲಿನ್ @ 0.5 ಗ್ರಾಂ/ಲೀ + 2-ಬ್ರೋಮೋ-ನೈಟ್ರೋಪ್ರೊಪೇನ್-1, 3-ಡಯೋಲ್ (ಬ್ರೋನೋಪೋಲ್ 95%) @ 0.5 ಗ್ರಾಂ/ಲೀ + ತಾಮ್ರದ ಹೈಡ್ರಾಕ್ಸೈಡ್ 53.8% WP @ 2.0 ಗ್ರಾಂ/ಲೀ + ಸ್ಪ್ರೆಡರ್ ಸ್ಟಿಕ್ಕರ್ @ 0.5 ಮಿಲಿ/ಲೀ ದ್ರಾವಣ.",
            "ಸ್ಟ್ರೆಪ್ಟೋಸೈಕ್ಲಿನ್ @ 0.5 ಗ್ರಾಂ/ಲೀ + 2-ಬ್ರೋಮೋ-ನೈಟ್ರೋಪ್ರೊಪೇನ್-1, 3-ಡಯೋಲ್ (ಬ್ರೋನೋಪೋಲ್ 95%) @ 0.5 ಗ್ರಾಂ/ಲೀ + ಕಾರ್ಬೆಂಡಜಿಮ್ 50% WP @ 1.0 ಗ್ರಾಂ/ಲೀ + ಸ್ಪ್ರೆಡರ್ ಸ್ಟಿಕ್ಕರ್ @ 0.5 ಮಿಲಿ/ಲೀ ದ್ರಾವಣ."
          ],
          "emergencySpraysNote": "ಗಮನಿಸಿ:\n• ಪ್ರತಿ ಸಿಂಪಡಣೆಯ ಮೊದಲು ಬ್ಲೈಟ್ ಪೀಡಿತ ಹಣ್ಣುಗಳನ್ನು ತೆಗೆದುಹಾಕಿ ಮತ್ತು ನಾಶಮಾಡಿ. ಸರಿಯಾದ ತೋಟದ ನೈರ್ಮಲ್ಯವನ್ನು ಕಾಪಾಡಿಕೊಳ್ಳಿ ಮತ್ತು ವಿಶ್ರಾಂತಿ ಅವಧಿಯಲ್ಲಿ ತಡೆಗಟ್ಟುವ ಸಿಂಪಡಣೆಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ.",
          "recommendations": [
            "ಬ್ಲೈಟ್ ಸೋಂಕಿನೊಂದಿಗೆ ಎಲ್ಲಾ ಕಾಂಡಗಳನ್ನು ಸಮರುವಿಕೆ ಮಾಡಿ ಮತ್ತು ತೆಗೆದುಹಾಕಿ.",
            "ಸಮರುವಿಕೆಯ ನಂತರ ಕತ್ತರಿಸಿದ ತುದಿಗಳಿಗೆ ಬೋರ್ಡೆಕ್ಸ್ ಪೇಸ್ಟ್ ಅನ್ನು ಅನ್ವಯಿಸಿ.",
            "ಬೋರ್ಡೆಕ್ಸ್ ಮಿಶ್ರಣ ಅಥವಾ ಬ್ರೋನೋಪೋಲ್ ನಂತಹ ರೋಗನಿರೋಧಕ ಸಿಂಪಡಣೆಗಳನ್ನು ಬಳಸಿ.",
            "ಪ್ರತಿ ಸಿಂಪಡಣೆಯ ಮೊದಲು ಬ್ಲೈಟ್ ಪೀಡಿತ ಹಣ್ಣುಗಳನ್ನು ತೆಗೆದುಹಾಕಿ ಮತ್ತು ನಾಶಮಾಡಿ."
          ]
        },
        "Calyx Rot": {
          "diseaseName": "ರೋಗ: ಆಂಥ್ರಾಕ್ನೋಸ್/ ಹಣ್ಣು ಕೊಳೆತ/ಕ್ಯಾಲಿಕ್ಸ್ ಕೊಳೆತ",
          "description": "ಅರೆ-ಶುಷ್ಕ ಪರಿಸ್ಥಿತಿಗಳಲ್ಲಿ ಆಂಥ್ರಾಕ್ನೋಸ್/ಹಣ್ಣು ಕೊಳೆತ ಒಂದು ಪ್ರಮುಖ ಸಮಸ್ಯೆಯಾಗುತ್ತಿದೆ. ಈ ರೋಗವು ಉಷ್ಣವಲಯ ಮತ್ತು ಉಪೋಷ್ಣವಲಯದ ಪ್ರದೇಶಗಳಲ್ಲಿ ಸಾಮಾನ್ಯವಾಗಿದೆ.",
          "causalOrganism": "ಕೊಲೆಟೊಟ್ರಿಕಮ್ spp.",
          "symptoms": "ಕೊಲೆಟೊಟ್ರಿಕಮ್ ಲಕ್ಷಣಗಳು ಹೂವುಗಳು, ಹಣ್ಣುಗಳು, ಎಲೆಗಳು ಅಥವಾ ಕೊಂಬೆಗಳ ಮೇಲೆ ಬೆಳೆಯುತ್ತವೆ, ಆದರೆ ಹಣ್ಣುಗಳು ಹೆಚ್ಚು ಒಳಗಾಗುತ್ತವೆ.\n• ಎಲೆಗಳ ಮೇಲೆ, ಹಳದಿ ಪ್ರಭಾವಲಯಗಳೊಂದಿಗೆ ಸಣ್ಣ ವೃತ್ತಾಕಾರದ ಚುಕ್ಕೆಗಳು ಬೆಳೆಯುತ್ತವೆ; ನಂತರ ಸೋಂಕಿತ ಎಲೆಗಳು ಹಳದಿ ಬಣ್ಣಕ್ಕೆ ತಿರುಗಿ ಅಕಾಲಿಕ ಎಲೆ ಉದುರುವಿಕೆಗೆ ಕಾರಣವಾಗುತ್ತವೆ.\n• ಹಣ್ಣುಗಳ ಮೇಲೆ, ಮೊದಲ ಲಕ್ಷಣಗಳು ಕ್ಯಾಲಿಕ್ಸ್ ತುದಿಯಿಂದ ಹಣ್ಣಿನ ಸಿಪ್ಪೆಯ ಬಣ್ಣ ಬದಲಾವಣೆ ಅಥವಾ ಹಲವಾರು ಪ್ರತ್ಯೇಕ ಚುಕ್ಕೆಗಳಾಗಿ ಕಂಡುಬರುತ್ತವೆ, ಅದು ನಂತರ ಒಟ್ಟಿಗೆ ಸೇರಿ ಹಣ್ಣಿನ ಮೇಲ್ಮೈಯಲ್ಲಿ ಅನಿಯಮಿತ ಕಲೆಗಳನ್ನು ರೂಪಿಸುತ್ತದೆ (ಕೊಲೆಟೊಟ್ರಿಕಮ್ spp.)\n• ಬಣ್ಣಬದಲಾದ ಪ್ರದೇಶಗಳು ಕೆಂಪು/ಗಾಢ ಕಂದು ಬಣ್ಣದಿಂದ ಕಪ್ಪು ಬಣ್ಣಕ್ಕೆ ತಿರುಗುತ್ತವೆ. ಕೊಳೆತವು ಸಿಪ್ಪೆಯ ಆಚೆಗೆ ಅರಿಲ್‌ಗಳಿಗೆ ವಿಸ್ತರಿಸುತ್ತದೆ, ಅದು ವಿಘಟನೆಯಾಗುತ್ತದೆ ಮತ್ತು ಗಾಢ ಬೂದು/ಕಂದು-ಕಪ್ಪು ಬಣ್ಣದ್ದಾಗಿರುತ್ತದೆ ಆದರೆ ನೀರಿಲ್ಲ. ಪೀಡಿತ ಹಣ್ಣುಗಳು ನಂತರದ ಹಂತದಲ್ಲಿ ಉದುರಿಹೋಗಬಹುದು.\n• ಹಣ್ಣುಗಳು ಸೆಟ್ಟಿಂಗ್‌ನಿಂದ ಎಲ್ಲಾ ಹಂತಗಳಲ್ಲಿ ಈ ರೋಗಕ್ಕೆ ಹೆಚ್ಚು ಗುರಿಯಾಗುತ್ತವೆ.",
          "predisposingFactors": "25 - 30°C ತಾಪಮಾನ ಮತ್ತು ಹೆಚ್ಚಿನ ಆರ್ದ್ರತೆ (>60%) ರೋಗದ ಬೆಳವಣಿಗೆಗೆ ಅನುಕೂಲಕರವಾಗಿದೆ. ಬೇಸಿಗೆ ತಿಂಗಳುಗಳಲ್ಲಿ ಹೆಚ್ಚಿನ ಆರ್ದ್ರತೆ, ಮಳೆ ಮತ್ತು ಬೆಚ್ಚಗಿನ ತಾಪಮಾನವು ರೋಗದ ತೀವ್ರತೆಯನ್ನು ಹೆಚ್ಚಿಸುತ್ತದೆ.",
          "chemicalManagementTitle": "ಕೊಲೆಟೊಟ್ರಿಕಮ್ ಕೊಳೆತಗಳ ರಾಸಾಯನಿಕ ನಿರ್ವಹಣೆ",
          "chemicalManagementIntro": "ಹವಾಮಾನ ಪರಿಸ್ಥಿತಿಗಳನ್ನು ಅವಲಂಬಿಸಿ 7-10 ದಿನಗಳ ಅಂತರದಲ್ಲಿ ಕೆಳಗೆ ತಿಳಿಸಲಾದ ಸಿಂಪಡಣೆಗಳನ್ನು ಪರ್ಯಾಯವಾಗಿ ತೆಗೆದುಕೊಳ್ಳಿ ಮತ್ತು ಕೊನೆಯಲ್ಲಿ ನೀಡಲಾದ ಪ್ರಮುಖ ಸೂಚನೆಗಳನ್ನು ಅನುಸರಿಸಿ.",
          "sprays": [
            "ಜಿನೆಬ್ 68% + ಹೆಕ್ಸಾಕೊನಜೋಲ್ 4% WP @ 2.5g/ ಲೀಟರ್",
            "ಟೆಬುಕೊನಜೋಲ್ 50% + ಟ್ರೈಫ್ಲಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 25% WG @ 0.5 g/ಲೀಟರ್",
            "ಪ್ರೊಪಿನೆಬ್ 70% WP @ 3 g/ಲೀಟರ್",
            "ತಾಮ್ರದ ಆಕ್ಸಿಕ್ಲೋರೈಡ್ 45% + ಕಸುಗಾಮೈಸಿನ್ 5% WP @ 2.5g/ ಲೀಟರ್",
            "ಅಜಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 8.3% + ಮ್ಯಾಂಕೋಜೆಬ್ 66.7% WG @ 1.5 g/ಲೀಟರ್",
            "ಫ್ಲೂಓಪೈರಾಮ್ 21.4% + ಟ್ರೈಫ್ಲಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 21.4% SC @ 0.7 ml/ಲೀಟರ್",
            "ಫ್ಲೂಓಪಿಕೊಲೈಡ್ 5.56% + ಪ್ರೊಪಮೊಕಾರ್ಬ್ ಹೈಡ್ರೋಕ್ಲೋರೈಡ್ 55.6% SC @ 1.25 ml/ಲೀಟರ್"
          ],
          "importantInstructionsTitle": "ಪ್ರಮುಖ ಸೂಚನೆಗಳು",
          "instructions": [
            "ಹೂಬಿಡುವ ಸಮಯದಲ್ಲಿ ಮ್ಯಾಂಡಿಪ್ರೊಪಾಮಿಡ್ 23.4% @ 1ml/l (10-15 ದಿನಗಳಲ್ಲಿ 2-3 ಸಿಂಪಡಣೆಗಳು) ಸಿಂಪಡಣೆಗಳು ಅನೇಕ ಶಿಲೀಂಧ್ರ ರೋಗಗಳಿಗೆ ತಡೆಗಟ್ಟುವಿಕೆಯಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತವೆ. ಆದ್ದರಿಂದ ಇದನ್ನು ಹೂಬಿಡುವ ಸಮಯದಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಿ.",
            "ಆ ದಿನ ಮಳೆ ನಿರೀಕ್ಷೆಯಿದ್ದರೆ ಸಿಂಪಡಣೆಯನ್ನು ತಪ್ಪಿಸಿ; ಮಳೆಯ ನಂತರ ಕೆಲವು ಗಂಟೆಗಳ ನಂತರ ಸಿಂಪಡಿಸುವುದು ಉತ್ತಮ ಮತ್ತು ಬಹಳ ಮುಖ್ಯ.",
            "ಅಂತಿಮ ದ್ರಾವಣವನ್ನು ಸಿದ್ಧಪಡಿಸಿದ ನಂತರ ಸಿಂಪಡಣೆಯ pH ಅನ್ನು ಪರಿಶೀಲಿಸಬೇಕು. ಅದನ್ನು 6.5-7.0 pH/ ಅಥವಾ ಶಿಲೀಂಧ್ರನಾಶಕ ಪ್ಯಾಕ್‌ನಲ್ಲಿ ಸೂಚಿಸಿದಂತೆ ಸರಿಹೊಂದಿಸಬೇಕು. ಇದು ರಾಸಾಯನಿಕ ಗಾಯಗಳನ್ನು ತಪ್ಪಿಸುತ್ತದೆ ಮತ್ತು ಉತ್ತಮ ಫಲಿತಾಂಶಗಳನ್ನು ನೀಡುತ್ತದೆ.",
            "ಬೋರ್ಡೆಕ್ಸ್ ಮಿಶ್ರಣವನ್ನು ಹೊರತುಪಡಿಸಿ ಸಿಂಪಡಣೆಗಳೊಂದಿಗೆ ಯಾವಾಗಲೂ ಸ್ಪ್ರೆಡರ್ ಸ್ಟಿಕ್ಕರ್ ಬಳಸಿ.",
            "ತಾಮ್ರದ ಶಿಲೀಂಧ್ರನಾಶಕಗಳನ್ನು ಹೊರತುಪಡಿಸಿ ಯಾವುದೇ ಕೀಟನಾಶಕವನ್ನು ಒಂದು ಋತುವಿನಲ್ಲಿ 2-3 ಬಾರಿಗಿಂತ ಹೆಚ್ಚು ಬಳಸಬಾರದು.",
            "ಅವಶೇಷ-ಮುಕ್ತ ಉತ್ಪಾದನೆಗಾಗಿ ಕೊಯ್ಲಿನ ಪೂರ್ವದ ಮಧ್ಯಂತರದ ಪ್ರಕಾರ ಸಿಂಪಡಣೆಗಳನ್ನು ಸರದಿಯಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಬಹುದು."
          ],
          "recommendations": [
            "ಪೀಡಿತ ಹಣ್ಣು ಮತ್ತು ಎಲೆಗಳನ್ನು ತೆಗೆದುಹಾಕಿ ಮತ್ತು ನಾಶಮಾಡಿ.",
            "ಸೂಕ್ತವಾದ ಶಿಲೀಂಧ್ರನಾಶಕವನ್ನು (ಉದಾ., ಜಿನೆಬ್, ಟೆಬುಕೊನಜೋಲ್) ಅನ್ವಯಿಸಿ.",
            "ಸಮರುವಿಕೆಯ ಮೂಲಕ ಗಾಳಿಯ ಪ್ರಸರಣವನ್ನು ಸುಧಾರಿಸಿ."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Fungal Cercospora": {
          "diseaseName": "ರೋಗ: ಸೆರ್ಕೋಸ್ಪೋರಾ ಹಣ್ಣಿನ ಚುಕ್ಕೆ",
          "description": "ದಾಳಿಂಬೆಯು ಹಣ್ಣಿನ ಚುಕ್ಕೆ ಶಿಲೀಂಧ್ರಗಳಿಗೆ, ವಿಶೇಷವಾಗಿ ಸೆರ್ಕೋಸ್ಪೋರಾ ಪುನಿಕೇ (ಸ್ಯೂಡೋಸೆರ್ಕೋಸ್ಪೋರಾ ಪುನಿಕೇ) ರೋಗಕಾರಕಗಳಿಗೆ ಒಳಗಾಗುತ್ತದೆ, ಇದು ಹಣ್ಣಿನ ಇಳುವರಿ ಮತ್ತು ಗುಣಮಟ್ಟವನ್ನು ಕಡಿಮೆ ಮಾಡುತ್ತದೆ.",
          "causalOrganism": "ಸೆರ್ಕೋಸ್ಪೋರಾ ಪುನಿಕೇ (ಸ್ಯೂಡೋಸೆರ್ಕೋಸ್ಪೋರಾ ಪುನಿಕೇ)",
          "symptoms": "ರೋಗಕಾರಕವು ವಿಶೇಷವಾಗಿ ಹಣ್ಣುಗಳ ಮೇಲೆ ವಿಶಿಷ್ಟವಾದ ಚುಕ್ಕೆ ಲಕ್ಷಣಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತದೆ. ಸಣ್ಣ, ಅನಿಯಮಿತ ಚುಕ್ಕೆಗಳು ಆರಂಭದಲ್ಲಿ ವೃತ್ತಾಕಾರದಲ್ಲಿರುತ್ತವೆ ಆದರೆ ದೊಡ್ಡದಾಗಿ ಮತ್ತು ಗಾಢವಾಗುತ್ತವೆ.",
          "predisposingFactors": "20 - 30°C ನಡುವಿನ ತಾಪಮಾನ ಮತ್ತು ದೀರ್ಘಕಾಲದವರೆಗೆ 60% ಕ್ಕಿಂತ ಹೆಚ್ಚಿನ ಆರ್ದ್ರತೆಯು ರೋಗದ ಬೆಳವಣಿಗೆಗೆ ಅನುಕೂಲಕರವಾಗಿದೆ. ಮಳೆಗಾಲದಲ್ಲಿ ಎಲೆ ಮತ್ತು ಹಣ್ಣಿನ ಚುಕ್ಕೆಗಳು ಹೆಚ್ಚಾಗಿ ಕಂಡುಬರುತ್ತವೆ.",
          "chemicalManagementTitle": "ಶಿಲೀಂಧ್ರ ಎಲೆ ಮತ್ತು ಹಣ್ಣಿನ ಚುಕ್ಕೆಗಳ ರಾಸಾಯನಿಕ ನಿರ್ವಹಣೆ",
          "chemicalManagementIntro": "ಹವಾಮಾನ ಪರಿಸ್ಥಿತಿಗಳು ಮತ್ತು ರೋಗದ ಒತ್ತಡವನ್ನು ಅವಲಂಬಿಸಿ 7-10 ದಿನಗಳ ಅಂತರದಲ್ಲಿ ಕೆಳಗೆ ತಿಳಿಸಲಾದ ಸಿಂಪಡಣೆಗಳನ್ನು ಪರ್ಯಾಯವಾಗಿ ತೆಗೆದುಕೊಳ್ಳಿ ಮತ್ತು ಕೊನೆಯಲ್ಲಿ ನೀಡಲಾದ ಪ್ರಮುಖ ಸೂಚನೆಗಳನ್ನು ಅನುಸರಿಸಿ.",
          "sprays": [
            "ಜಿನೆಬ್ 75% WP @ 2g/ಲೀಟರ್",
            "ಜಿನೆಬ್ 68% + ಹೆಕ್ಸಾಕೊನಜೋಲ್ 4% WP @ 2.5g/ ಲೀಟರ್",
            "ಮೆಟಿರಾಮ್ 55% WG + ಪೈರಾಕ್ಲೋಸ್ಟ್ರೋಬಿನ್ 5% @ 3 g/ಲೀಟರ್",
            "ಟೆಬುಕೊನಜೋಲ್ 50% + ಟ್ರೈಫ್ಲಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 25% WG @ 0.5 g/ಲೀಟರ್",
            "ಪ್ರೊಪಿನೆಬ್ 70% WP @ 3 g/ಲೀಟರ್",
            "ಟ್ರೈಸೈಕ್ಲಾಜೋಲ್ 18% + ಮ್ಯಾಂಕೋಜೆಬ್ 62% WP 2.5 ರಿಂದ 3.0 g/ಲೀಟರ್",
            "ತಾಮ್ರದ ಸಲ್ಫೇಟ್ 47.15% + ಮ್ಯಾಂಕೋಜೆಬ್ 30% WDG @ 2.5 g/ಲೀಟರ್",
            "ಅಜಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 8.3% + ಮ್ಯಾಂಕೋಜೆಬ್ 66.7% WG @ 1.5 g/ಲೀಟರ್"
          ],
          "importantInstructionsTitle": "ಪ್ರಮುಖ ಸೂಚನೆಗಳು",
          "instructions": [
            "ಹೂಬಿಡುವ ಸಮಯದಲ್ಲಿ ಮ್ಯಾಂಡಿಪ್ರೊಪಾಮಿಡ್ 23.4% @ 1ml/l (10-15 ದಿನಗಳಲ್ಲಿ 2-3 ಸಿಂಪಡಣೆಗಳು) ಸಿಂಪಡಣೆಗಳು ಸೆರ್ಕೋಸ್ಪೋರಾ ಹಣ್ಣು ಮತ್ತು ಎಲೆ ಚುಕ್ಕೆ ಮತ್ತು ಸ್ಕ್ಯಾಬ್ ಸೇರಿದಂತೆ ಅನೇಕ ಶಿಲೀಂಧ್ರ ರೋಗಗಳಿಗೆ ತಡೆಗಟ್ಟುವಿಕೆಯಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತವೆ. ಆದ್ದರಿಂದ ಇದನ್ನು ಹೂಬಿಡುವ ಸಮಯದಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಿ.",
            "ಆ ದಿನ ಮಳೆ ನಿರೀಕ್ಷೆಯಿದ್ದರೆ ಸಿಂಪಡಣೆಯನ್ನು ತಪ್ಪಿಸಿ; ಮಳೆಯ ನಂತರ ಕೆಲವು ಗಂಟೆಗಳ ನಂತರ ಸಿಂಪಡಿಸುವುದು ಉತ್ತಮ ಮತ್ತು ಬಹಳ ಮುಖ್ಯ.",
            "ಅಂತಿಮ ದ್ರಾವಣವನ್ನು ಸಿದ್ಧಪಡಿಸಿದ ನಂತರ ಸಿಂಪಡಣೆಯ pH ಅನ್ನು ಪರಿಶೀಲಿಸಬೇಕು. ಅದನ್ನು 6.5-7.0 pH/ ಅಥವಾ ಶಿಲೀಂಧ್ರನಾಶಕ ಪ್ಯಾಕ್‌ನಲ್ಲಿ ಸೂಚಿಸಿದಂತೆ ಸರಿಹೊಂದಿಸಬೇಕು. ಇದು ರಾಸಾಯನಿಕ ಗಾಯಗಳನ್ನು ತಪ್ಪಿಸುತ್ತದೆ ಮತ್ತು ಉತ್ತಮ ಫಲಿತಾಂಶಗಳನ್ನು ನೀಡುತ್ತದೆ.",
            "ಬೋರ್ಡೆಕ್ಸ್ ಮಿಶ್ರಣವನ್ನು ಹೊರತುಪಡಿಸಿ ಸಿಂಪಡಣೆಗಳೊಂದಿಗೆ ಯಾವಾಗಲೂ ಸ್ಪ್ರೆಡರ್ ಸ್ಟಿಕ್ಕರ್ ಬಳಸಿ.",
            "ತಾಮ್ರದ ಶಿಲೀಂಧ್ರನಾಶಕಗಳನ್ನು ಹೊರತುಪಡಿಸಿ ಯಾವುದೇ ಕೀಟನಾಶಕವನ್ನು ಒಂದು ಋತುವಿನಲ್ಲಿ 2-3 ಬಾರಿಗಿಂತ ಹೆಚ್ಚು ಬಳಸಬಾರದು.",
            "ಅವಶೇಷ-ಮುಕ್ತ ಉತ್ಪಾದನೆಗಾಗಿ ಕೊಯ್ಲಿನ ಪೂರ್ವದ ಮಧ್ಯಂತರದ ಪ್ರಕಾರ ಸಿಂಪಡಣೆಗಳನ್ನು ಸರದಿಯಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಬಹುದು."
          ],
          "recommendations": [
            "ಸೋಂಕಿತ ಎಲೆಗಳನ್ನು ತೆಗೆದುಹಾಕಿ ಮತ್ತು ಸುಟ್ಟುಹಾಕಿ.",
            "ತಡೆಗಟ್ಟುವಿಕೆಯಾಗಿ ಶಿಲೀಂಧ್ರನಾಶಕಗಳನ್ನು ಅನ್ವಯಿಸಿ.",
            "ಉತ್ತಮ ಗಾಳಿಯ ಪ್ರಸರಣವನ್ನು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Fruit Rot": {
          "diseaseName": "ರೋಗ: ಆಂಥ್ರಾಕ್ನೋಸ್/ ಹಣ್ಣು ಕೊಳೆತ/ಕ್ಯಾಲಿಕ್ಸ್ ಕೊಳೆತ",
          "description": "ಅರೆ-ಶುಷ್ಕ ಪರಿಸ್ಥಿತಿಗಳಲ್ಲಿ ಆಂಥ್ರಾಕ್ನೋಸ್/ಹಣ್ಣು ಕೊಳೆತ ಒಂದು ಪ್ರಮುಖ ಸಮಸ್ಯೆಯಾಗುತ್ತಿದೆ. ಈ ರೋಗವು ಉಷ್ಣವಲಯ ಮತ್ತು ಉಪೋಷ್ಣವಲಯದ ಪ್ರದೇಶಗಳಲ್ಲಿ ಸಾಮಾನ್ಯವಾಗಿದೆ.",
          "causalOrganism": "ಕೊಲೆಟೊಟ್ರಿಕಮ್ spp.",
          "symptoms": "ಕೊಲೆಟೊಟ್ರಿಕಮ್ ಲಕ್ಷಣಗಳು ಹೂವುಗಳು, ಹಣ್ಣುಗಳು, ಎಲೆಗಳು ಅಥವಾ ಕೊಂಬೆಗಳ ಮೇಲೆ ಬೆಳೆಯುತ್ತವೆ, ಆದರೆ ಹಣ್ಣುಗಳು ಹೆಚ್ಚು ಒಳಗಾಗುತ್ತವೆ.\n• ಎಲೆಗಳ ಮೇಲೆ, ಹಳದಿ ಪ್ರಭಾವಲಯಗಳೊಂದಿಗೆ ಸಣ್ಣ ವೃತ್ತಾಕಾರದ ಚುಕ್ಕೆಗಳು ಬೆಳೆಯುತ್ತವೆ; ನಂತರ ಸೋಂಕಿತ ಎಲೆಗಳು ಹಳದಿ ಬಣ್ಣಕ್ಕೆ ತಿರುಗಿ ಅಕಾಲಿಕ ಎಲೆ ಉದುರುವಿಕೆಗೆ ಕಾರಣವಾಗುತ್ತವೆ.\n• ಹಣ್ಣುಗಳ ಮೇಲೆ, ಮೊದಲ ಲಕ್ಷಣಗಳು ಕ್ಯಾಲಿಕ್ಸ್ ತುದಿಯಿಂದ ಹಣ್ಣಿನ ಸಿಪ್ಪೆಯ ಬಣ್ಣ ಬದಲಾವಣೆ ಅಥವಾ ಹಲವಾರು ಪ್ರತ್ಯೇಕ ಚುಕ್ಕೆಗಳಾಗಿ ಕಂಡುಬರುತ್ತವೆ, ಅದು ನಂತರ ಒಟ್ಟಿಗೆ ಸೇರಿ ಹಣ್ಣಿನ ಮೇಲ್ಮೈಯಲ್ಲಿ ಅನಿಯಮಿತ ಕಲೆಗಳನ್ನು ರೂಪಿಸುತ್ತದೆ (ಕೊಲೆಟೊಟ್ರಿಕಮ್ spp.)\n• ಬಣ್ಣಬದಲಾದ ಪ್ರದೇಶಗಳು ಕೆಂಪು/ಗಾಢ ಕಂದು ಬಣ್ಣದಿಂದ ಕಪ್ಪು ಬಣ್ಣಕ್ಕೆ ತಿರುಗುತ್ತವೆ. ಕೊಳೆತವು ಸಿಪ್ಪೆಯ ಆಚೆಗೆ ಅರಿಲ್‌ಗಳಿಗೆ ವಿಸ್ತರಿಸುತ್ತದೆ, ಅದು ವಿಘಟನೆಯಾಗುತ್ತದೆ ಮತ್ತು ಗಾಢ ಬೂದು/ಕಂದು-ಕಪ್ಪು ಬಣ್ಣದ್ದಾಗಿರುತ್ತದೆ ಆದರೆ ನೀರಿಲ್ಲ. ಪೀಡಿತ ಹಣ್ಣುಗಳು ನಂತರದ ಹಂತದಲ್ಲಿ ಉದುರಿಹೋಗಬಹುದು.\n• ಹಣ್ಣುಗಳು ಸೆಟ್ಟಿಂಗ್‌ನಿಂದ ಎಲ್ಲಾ ಹಂತಗಳಲ್ಲಿ ಈ ರೋಗಕ್ಕೆ ಹೆಚ್ಚು ಗುರಿಯಾಗುತ್ತವೆ.",
          "predisposingFactors": "25 - 30°C ತಾಪಮಾನ ಮತ್ತು ಹೆಚ್ಚಿನ ಆರ್ದ್ರತೆ (>60%) ರೋಗದ ಬೆಳವಣಿಗೆಗೆ ಅನುಕೂಲಕರವಾಗಿದೆ. ಬೇಸಿಗೆ ತಿಂಗಳುಗಳಲ್ಲಿ ಹೆಚ್ಚಿನ ಆರ್ದ್ರತೆ, ಮಳೆ ಮತ್ತು ಬೆಚ್ಚಗಿನ ತಾಪಮಾನವು ರೋಗದ ತೀವ್ರತೆಯನ್ನು ಹೆಚ್ಚಿಸುತ್ತದೆ.",
          "chemicalManagementTitle": "ಕೊಲೆಟೊಟ್ರಿಕಮ್ ಕೊಳೆತಗಳ ರಾಸಾಯನಿಕ ನಿರ್ವಹಣೆ",
          "chemicalManagementIntro": "ಹವಾಮಾನ ಪರಿಸ್ಥಿತಿಗಳನ್ನು ಅವಲಂಬಿಸಿ 7-10 ದಿನಗಳ ಅಂತರದಲ್ಲಿ ಕೆಳಗೆ ತಿಳಿಸಲಾದ ಸಿಂಪಡಣೆಗಳನ್ನು ಪರ್ಯಾಯವಾಗಿ ತೆಗೆದುಕೊಳ್ಳಿ ಮತ್ತು ಕೊನೆಯಲ್ಲಿ ನೀಡಲಾದ ಪ್ರಮುಖ ಸೂಚನೆಗಳನ್ನು ಅನುಸರಿಸಿ.",
          "sprays": [
            "ಜಿನೆಬ್ 68% + ಹೆಕ್ಸಾಕೊನಜೋಲ್ 4% WP @ 2.5g/ ಲೀಟರ್",
            "ಟೆಬುಕೊನಜೋಲ್ 50% + ಟ್ರೈಫ್ಲಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 25% WG @ 0.5 g/ಲೀಟರ್",
            "ಪ್ರೊಪಿನೆಬ್ 70% WP @ 3 g/ಲೀಟರ್",
            "ತಾಮ್ರದ ಆಕ್ಸಿಕ್ಲೋರೈಡ್ 45% + ಕಸುಗಾಮೈಸಿನ್ 5% WP @ 2.5g/ ಲೀಟರ್",
            "ಅಜಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 8.3% + ಮ್ಯಾಂಕೋಜೆಬ್ 66.7% WG @ 1.5 g/ಲೀಟರ್",
            "ಫ್ಲೂಓಪೈರಾಮ್ 21.4% + ಟ್ರೈಫ್ಲಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 21.4% SC @ 0.7 ml/ಲೀಟರ್",
            "ಫ್ಲೂಓಪಿಕೊಲೈಡ್ 5.56% + ಪ್ರೊಪಮೊಕಾರ್ಬ್ ಹೈಡ್ರೋಕ್ಲೋರೈಡ್ 55.6% SC @ 1.25 ml/ಲೀಟರ್"
          ],
          "importantInstructionsTitle": "ಪ್ರಮುಖ ಸೂಚನೆಗಳು",
          "instructions": [
            "ಹೂಬಿಡುವ ಸಮಯದಲ್ಲಿ ಮ್ಯಾಂಡಿಪ್ರೊಪಾಮಿಡ್ 23.4% @ 1ml/l (10-15 ದಿನಗಳಲ್ಲಿ 2-3 ಸಿಂಪಡಣೆಗಳು) ಸಿಂಪಡಣೆಗಳು ಅನೇಕ ಶಿಲೀಂಧ್ರ ರೋಗಗಳಿಗೆ ತಡೆಗಟ್ಟುವಿಕೆಯಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತವೆ. ಆದ್ದರಿಂದ ಇದನ್ನು ಹೂಬಿಡುವ ಸಮಯದಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಿ.",
            "ಆ ದಿನ ಮಳೆ ನಿರೀಕ್ಷೆಯಿದ್ದರೆ ಸಿಂಪಡಣೆಯನ್ನು ತಪ್ಪಿಸಿ; ಮಳೆಯ ನಂತರ ಕೆಲವು ಗಂಟೆಗಳ ನಂತರ ಸಿಂಪಡಿಸುವುದು ಉತ್ತಮ ಮತ್ತು ಬಹಳ ಮುಖ್ಯ.",
            "ಅಂತಿಮ ದ್ರಾವಣವನ್ನು ಸಿದ್ಧಪಡಿಸಿದ ನಂತರ ಸಿಂಪಡಣೆಯ pH ಅನ್ನು ಪರಿಶೀಲಿಸಬೇಕು. ಅದನ್ನು 6.5-7.0 pH/ ಅಥವಾ ಶಿಲೀಂಧ್ರನಾಶಕ ಪ್ಯಾಕ್‌ನಲ್ಲಿ ಸೂಚಿಸಿದಂತೆ ಸರಿಹೊಂದಿಸಬೇಕು. ಇದು ರಾಸಾಯನಿಕ ಗಾಯಗಳನ್ನು ತಪ್ಪಿಸುತ್ತದೆ ಮತ್ತು ಉತ್ತಮ ಫಲಿತಾಂಶಗಳನ್ನು ನೀಡುತ್ತದೆ.",
            "ಬೋರ್ಡೆಕ್ಸ್ ಮಿಶ್ರಣವನ್ನು ಹೊರತುಪಡಿಸಿ ಸಿಂಪಡಣೆಗಳೊಂದಿಗೆ ಯಾವಾಗಲೂ ಸ್ಪ್ರೆಡರ್ ಸ್ಟಿಕ್ಕರ್ ಬಳಸಿ.",
            "ತಾಮ್ರದ ಶಿಲೀಂಧ್ರನಾಶಕಗಳನ್ನು ಹೊರತುಪಡಿಸಿ ಯಾವುದೇ ಕೀಟನಾಶಕವನ್ನು ಒಂದು ಋತುವಿನಲ್ಲಿ 2-3 ಬಾರಿಗಿಂತ ಹೆಚ್ಚು ಬಳಸಬಾರದು.",
            "ಅವಶೇಷ-ಮುಕ್ತ ಉತ್ಪಾದನೆಗಾಗಿ ಕೊಯ್ಲಿನ ಪೂರ್ವದ ಮಧ್ಯಂತರದ ಪ್ರಕಾರ ಸಿಂಪಡಣೆಗಳನ್ನು ಸರದಿಯಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಬಹುದು."
          ],
          "recommendations": [
            "ಪೀಡಿತ ಹಣ್ಣು ಮತ್ತು ಎಲೆಗಳನ್ನು ತೆಗೆದುಹಾಕಿ ಮತ್ತು ನಾಶಮಾಡಿ.",
            "ಸೂಕ್ತವಾದ ಶಿಲೀಂಧ್ರನಾಶಕವನ್ನು (ಉದಾ., ಜಿನೆಬ್, ಟೆಬುಕೊನಜೋಲ್) ಅನ್ವಯಿಸಿ.",
            "ಸಮರುವಿಕೆಯ ಮೂಲಕ ಗಾಳಿಯ ಪ್ರಸರಣವನ್ನು ಸುಧಾರಿಸಿ."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Healthy": {
          "description": "ಯಾವುದೇ ನಿರ್ದಿಷ್ಟ ನಿರ್ವಹಣೆ ಅಗತ್ಯವಿಲ್ಲ. ಒತ್ತಡ ಅಥವಾ ರೋಗದ ಯಾವುದೇ ಚಿಹ್ನೆಗಳಿಗಾಗಿ ಸಸ್ಯವನ್ನು ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡುವುದನ್ನು ಮುಂದುವರಿಸಿ ಮತ್ತು ಉತ್ತಮ ಕೃಷಿ ಪದ್ಧತಿಗಳನ್ನು ನಿರ್ವಹಿಸಿ."
        },
        "Fungal Scab": {
          "diseaseName": "ರೋಗ: ಹಣ್ಣಿನ ಸ್ಕ್ಯಾಬ್",
          "description": "2016 ರಿಂದ, ಭಾರತದ ಶುಷ್ಕ ಮತ್ತು ಅರೆ-ಶುಷ್ಕ ಪ್ರದೇಶಗಳಲ್ಲಿ ದಾಳಿಂಬೆ ಉತ್ಪಾದನೆಯಲ್ಲಿ ಸ್ಕ್ಯಾಬ್ ಒಂದು ಸೀಮಿತಗೊಳಿಸುವ ಅಂಶವಾಗಿದೆ. ರೋಗವು ಪ್ರಚಲಿತದಲ್ಲಿರುವ ಪ್ರದೇಶಗಳಲ್ಲಿ, 90-100% ಹಣ್ಣುಗಳು ಪೀಡಿತವಾಗಿರುವ ತೋಟಗಳನ್ನು ಕಂಡುಹಿಡಿಯುವುದು ಅಸಾಮಾನ್ಯವೇನಲ್ಲ.",
          "causalOrganism": "ಸ್ಫಾಸೆಲೋಮಾ (syn. ಎಲ್ಸಿನೋ) ಪುನಿಕೇ",
          "symptoms": "ರೋಗಕಾರಕವು ಹೂಬಿಡುವಿಕೆಯಿಂದ ಹಣ್ಣು ಮಾಗುವವರೆಗೆ ಯಾವುದೇ ಹಂತದಲ್ಲಿ ದಾಳಿ ಮಾಡುತ್ತದೆ. ಹೂವಿನ ಮೊಗ್ಗುಗಳು ಅಥವಾ ಸಣ್ಣ ಹಣ್ಣುಗಳ ಸೋಂಕುಗಳು ವಿರೂಪಕ್ಕೆ ಕಾರಣವಾಗುತ್ತವೆ ಮತ್ತು ಪರಿಣಾಮವಾಗಿ ಇಳುವರಿ ನಷ್ಟವಾಗುತ್ತದೆ. ಮಾಗಿದ ಹಣ್ಣುಗಳ ಸೋಂಕು ಹಣ್ಣುಗಳ ನೋಟ ಮತ್ತು ಬಾಹ್ಯ ಗುಣಮಟ್ಟದ ಮೇಲೆ ಪರಿಣಾಮ ಬೀರುತ್ತದೆ. ಗಾಯಗಳು ಹೊರಗಿನ ಸಿಪ್ಪೆಯ ಮೇಲ್ಮೈಯನ್ನು ಮಾತ್ರ ಪರಿಣಾಮ ಬೀರುತ್ತವೆ, ಅರಿಲ್ ಅಥವಾ ರಸದ ಗುಣಮಟ್ಟದ ಮೇಲೆ ಪರಿಣಾಮ ಬೀರದೆ.\n• ಹಣ್ಣುಗಳ ಮೇಲಿನ ಗಾಯಗಳು ಸಣ್ಣ ಅಥವಾ ದೊಡ್ಡದಾಗಿರಬಹುದು, ಕಂದು, ಒರಟು, ಎತ್ತರವಾಗಿ, ಸಣ್ಣ ಪ್ರದೇಶಗಳಿಂದ ಹಿಡಿದು ಸಂಪೂರ್ಣ ಹಣ್ಣಿನ ಮೇಲ್ಮೈಯನ್ನು ಆವರಿಸಬಹುದು, ಇದು ಸಿಪ್ಪೆಗೆ ರಸ್ಸೆಟ್ ಸ್ಕ್ಯಾಬ್ ನೋಟವನ್ನು ನೀಡುತ್ತದೆ.\n• ಚುಕ್ಕೆಗಳು ಕೆಲವೊಮ್ಮೆ ದೊಡ್ಡದಾಗಿ, ಹಗುರವಾದ ಕೇಂದ್ರ ಮತ್ತು ಗಾಢವಾದ ಅಂಚುಗಳೊಂದಿಗೆ ದೊಡ್ಡ ಕಲೆಗಳನ್ನು ರೂಪಿಸಬಹುದು ಮತ್ತು ಸ್ಪರ್ಶಕ್ಕೆ ಒರಟಾಗಿರುತ್ತವೆ.\n• ಇದು ಸಣ್ಣ ಒರಟು, ಎತ್ತರದ ಚುಕ್ಕೆಗಳಿಂದ ಹಿಡಿದು ಸಂಪೂರ್ಣ ಹಣ್ಣಿನ ಮೇಲ್ಮೈಯನ್ನು ಆವರಿಸುವ ದೊಡ್ಡ ಕಂದು ಕಲೆಗಳವರೆಗೆ ವಿವಿಧ ಆಕಾರ ಮತ್ತು ಗಾತ್ರದ ಚುಕ್ಕೆಗಳನ್ನು ಉತ್ಪಾದಿಸುತ್ತದೆ, ಇದು ರಸ್ಸೆಟ್ ನೋಟವನ್ನು ಹೊಂದಿರುತ್ತದೆ.",
          "predisposingFactors": "22 - 28°C ತಾಪಮಾನ, 45 - 65% ಸುತ್ತಮುತ್ತಲಿನ ಆರ್ದ್ರತೆಯೊಂದಿಗೆ ಮಳೆ ಮತ್ತು ಗಾಳಿಯು ರೋಗದ ಬೆಳವಣಿಗೆಗೆ ಅನುಕೂಲಕರವಾಗಿದೆ.",
          "chemicalManagementTitle": "ಹಣ್ಣಿನ ಸ್ಕ್ಯಾಬ್‌ನ ರಾಸಾಯನಿಕ ನಿರ್ವಹಣೆ",
          "chemicalManagementIntro": "ಈ ರೋಗವು ಸಾಮಾನ್ಯವಾಗಿ ಮಳೆಯ ನಂತರ ಹಣ್ಣುಗಳ ಮೇಲೆ ಕಂಡುಬರುತ್ತದೆ. ಎಲೆಗಳ ಮೇಲೆ ಸಾಮಾನ್ಯವಾಗಿ ಹಣ್ಣುಗಳು ಇಲ್ಲದಿದ್ದಾಗ ಕಂಡುಬರುತ್ತದೆ. ಕಳೆದ ಋತುವಿನಲ್ಲಿಯೂ ನಿಮಗೆ ಸ್ಕ್ಯಾಬ್ ಇದ್ದರೆ ರೋಗದ ಲಕ್ಷಣಗಳಿಗಾಗಿ ಕಾಯಬೇಡಿ, ಮಳೆಯ ನಂತರ ತಡೆಗಟ್ಟುವ ಸಿಂಪಡಣೆಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ. ಹವಾಮಾನ ಪರಿಸ್ಥಿತಿಗಳನ್ನು ಅವಲಂಬಿಸಿ 7-10 ದಿನಗಳ ಅಂತರದಲ್ಲಿ ಕೆಳಗೆ ತಿಳಿಸಲಾದ ಸಿಂಪಡಣೆಗಳನ್ನು ಪರ್ಯಾಯವಾಗಿ ತೆಗೆದುಕೊಳ್ಳಿ ಮತ್ತು ಕೊನೆಯಲ್ಲಿ ನೀಡಲಾದ ಪ್ರಮುಖ ಸೂಚನೆಗಳನ್ನು ಅನುಸರಿಸಿ,",
          "sprays": [
            "ಮೆಟಿರಾಮ್ 55% WG + ಪೈರಾಕ್ಲೋಸ್ಟ್ರೋಬಿನ್ 5% @ 3 g/ಲೀಟರ್",
            "ಟೆಬುಕೊನಜೋಲ್ 50% + ಟ್ರೈಫ್ಲಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 25% WG @ 0.5 g/ಲೀಟರ್",
            "ಅಜಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 18.2% + ಡೈಫೆನೊಕೊನಜೋಲ್ 11.4% SC @ 1ml/ ಲೀಟರ್",
            "ಜಿನೆಬ್ 68% + ಹೆಕ್ಸಾಕೊನಜೋಲ್ 4% WP @ 2.5g/ ಲೀಟರ್",
            "ಫ್ಲೂಓಪಿಕೊಲೈಡ್ 5.56% + ಪ್ರೊಪಮೊಕಾರ್ಬ್ ಹೈಡ್ರೋಕ್ಲೋರೈಡ್ 55.6% SC @"
          ],
          "chemicalManagementNote": "ಗಮನಿಸಿ: ಮಳೆಯ ನಂತರ ತಕ್ಷಣವೇ ನೀಡಿದರೆ ಉತ್ತಮ ಫಲಿತಾಂಶಗಳು ಸಿಗುತ್ತವೆ.",
          "importantInstructionsTitle": "ಪ್ರಮುಖ ಸೂಚನೆಗಳು",
          "instructions": [
            "ಹೂಬಿಡುವ ಸಮಯದಲ್ಲಿ ಮ್ಯಾಂಡಿಪ್ರೊಪಾಮಿಡ್ 23.4% @ 1ml/l (10-15 ದಿನಗಳಲ್ಲಿ 2-3 ಸಿಂಪಡಣೆಗಳು) ಸಿಂಪಡಣೆಗಳು ಸೆರ್ಕೋಸ್ಪೋರಾ ಹಣ್ಣು ಮತ್ತು ಎಲೆ ಚುಕ್ಕೆ ಮತ್ತು ಸ್ಕ್ಯಾಬ್ ಸೇರಿದಂತೆ ಅನೇಕ ಶಿಲೀಂಧ್ರ ರೋಗಗಳಿಗೆ ತಡೆಗಟ್ಟುವಿಕೆಯಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತವೆ. ಆದ್ದರಿಂದ ಇದನ್ನು ಹೂಬಿಡುವ ಸಮಯದಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಿ.",
            "ಸೆಟ್ಟಿಂಗ್‌ನಲ್ಲಿ ಸೋಂಕಿತ ವಿರೂಪಗೊಂಡ ಹಣ್ಣುಗಳನ್ನು ತೆಗೆದುಹಾಕಿ ಮತ್ತು ನಾಶಪಡಿಸಬಹುದು. ಎಲ್ಲಿಯೂ ಡಂಪ್ ಮಾಡಬೇಡಿ ಅಥವಾ ಎಸೆಯಬೇಡಿ.",
            "ಆ ದಿನ ಮಳೆ ನಿರೀಕ್ಷೆಯಿದ್ದರೆ ಸಿಂಪಡಣೆಯನ್ನು ತಪ್ಪಿಸಿ; ಸ್ಕ್ಯಾಬ್ ಸೋಂಕನ್ನು ತಪ್ಪಿಸಲು ಮಳೆಯ ನಂತರ ಕೆಲವು ಗಂಟೆಗಳ ನಂತರ ಸಿಂಪಡಿಸುವುದು ಉತ್ತಮ ಮತ್ತು ಬಹಳ ಮುಖ್ಯ.",
            "ಅಂತಿಮ ದ್ರಾವಣವನ್ನು ಸಿದ್ಧಪಡಿಸಿದ ನಂತರ ಸಿಂಪಡಣೆಯ pH ಅನ್ನು ಪರಿಶೀಲಿಸಬೇಕು. ಅದನ್ನು 6.5-7.0 pH/ ಅಥವಾ ಶಿಲೀಂಧ್ರನಾಶಕ ಪ್ಯಾಕ್‌ನಲ್ಲಿ ಸೂಚಿಸಿದಂತೆ ಸರಿಹೊಂದಿಸಬೇಕು. ಇದು ರಾಸಾಯನಿಕ ಗಾಯಗಳನ್ನು ತಪ್ಪಿಸುತ್ತದೆ ಮತ್ತು ಉತ್ತಮ ಫಲಿತಾಂಶಗಳನ್ನು ನೀಡುತ್ತದೆ.",
            "ಬೋರ್ಡೆಕ್ಸ್ ಮಿಶ್ರಣವನ್ನು ಹೊರತುಪಡಿಸಿ ಸಿಂಪಡಣೆಗಳೊಂದಿಗೆ ಯಾವಾಗಲೂ ಸ್ಪ್ರೆಡರ್ ಸ್ಟಿಕ್ಕರ್ ಬಳಸಿ.",
            "ತಾಮ್ರದ ಶಿಲೀಂಧ್ರನಾಶಕಗಳನ್ನು ಹೊರತುಪಡಿಸಿ ಯಾವುದೇ ಕೀಟನಾಶಕವನ್ನು ಒಂದು ಋತುವಿನಲ್ಲಿ 2-3 ಬಾರಿಗಿಂತ ಹೆಚ್ಚು ಬಳಸಬಾರದು.",
            "ಅವಶೇಷ-ಮುಕ್ತ ಉತ್ಪಾದನೆಗಾಗಿ ಕೊಯ್ಲಿನ ಪೂರ್ವದ ಮಧ್ಯಂತರದ ಪ್ರಕಾರ ಸಿಂಪಡಣೆಗಳನ್ನು ಸರದಿಯಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಬಹುದು."
          ],
          "recommendations": [
            "ಸೋಂಕಿತ ಅಥವಾ ವಿರೂಪಗೊಂಡ ಹಣ್ಣುಗಳನ್ನು ತೆಗೆದುಹಾಕಿ ಮತ್ತು ನಾಶಮಾಡಿ.",
            "ಮಳೆಯ ನಂತರ ತಡೆಗಟ್ಟುವ ಸಿಂಪಡಣೆಗಳನ್ನು (ಉದಾ., ಮೆಟಿರಾಮ್, ಟೆಬುಕೊನಜೋಲ್) ಅನ್ವಯಿಸಿ.",
            "ಗಾಳಿಯ ಪ್ರಸರಣವನ್ನು ಸುಧಾರಿಸಲು ಮರಗಳನ್ನು ಸಮರುವಿಕೆ ಮಾಡಿ."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        },
        "Bacterial": {
          "diseaseName": "ರೋಗ: ಬ್ಯಾಕ್ಟೀರಿಯಾದ ಎಲೆ ಚುಕ್ಕೆ/ಎಣ್ಣೆಯುಕ್ತ ಚುಕ್ಕೆ",
          "description": "ಅನುಕೂಲಕರ ಪರಿಸ್ಥಿತಿಗಳಲ್ಲಿ ದಾಳಿಂಬೆಯಲ್ಲಿ ಬ್ಯಾಕ್ಟೀರಿಯಾದ ಬ್ಲೈಟ್ ಆರ್ಥಿಕ ಇಳುವರಿ ನಷ್ಟವನ್ನು (60-100%) ಉಂಟುಮಾಡುತ್ತದೆ. ಇದು ಜೂನ್-ಜುಲೈನಲ್ಲಿ ಮಳೆಗಾಲದಲ್ಲಿ (ಮೃಗ್ ಬಹಾರ್) ಹೆಚ್ಚು ತೀವ್ರ ಮತ್ತು ಪ್ರಚಲಿತವಾಗಿದೆ ಮತ್ತು ರಬಿ ಋತುವಿನಲ್ಲಿ (ಹಸ್ತಾ ಬಹಾರ್) ಕಡಿಮೆ ಇರುತ್ತದೆ.",
          "causalOrganism": "ಕ್ಸಾಂಥೋಮೊನಾಸ್ ಆಕ್ಸೊನೊಪೊಡಿಸ್ ಪಿವಿ. ಪುನಿಕೇ (ಸಮಾನಾರ್ಥಕ: ಕ್ಸಾಂಥೋಮೊನಾಸ್ ಸಿಟ್ರಿ ಪಿವಿ. ಪುನಿಕೇ)",
          "symptoms": "• ರೋಗದ ಲಕ್ಷಣಗಳು ಸಸ್ಯದ ಎಲ್ಲಾ ಭಾಗಗಳಾದ ಎಲೆಗಳು, ಕಾಂಡಗಳು, ಹೂವುಗಳು ಮತ್ತು ಹಣ್ಣುಗಳ ಮೇಲೆ ಕಂಡುಬರುತ್ತವೆ.\n• ಆರಂಭದಲ್ಲಿ, ಎಲೆಗಳ ಮೇಲೆ ಸಣ್ಣ ಅನಿಯಮಿತ ಬೂದು-ಕಪ್ಪು ನೀರಿನಿಂದ ಕೂಡಿದ ಗಾಯಗಳು ಕಂಡುಬರುತ್ತವೆ, ಇದು ರೋಗದ ಪ್ರಗತಿಯೊಂದಿಗೆ ದೊಡ್ಡದಾಗುತ್ತದೆ. ರೋಗಗ್ರಸ್ತ ಎಲೆಗಳು ಕ್ರಮೇಣ ಹಳದಿ ಬಣ್ಣಕ್ಕೆ ತಿರುಗಿ ಉದುರಿಹೋಗುತ್ತವೆ (ಪ್ಲೇಟ್ 1a).\n• ಮಳೆ/ಸಿಂಪಡಣೆ/ಇಬ್ಬನಿಯ ನಂತರ ಬ್ಯಾಕ್ಟೀರಿಯಾದ ಸ್ರಾವ ಹೊರಬರುತ್ತದೆ, ಇದು ಕೈಗಳಿಗೆ ಜಿಗುಟಾಗಿರುತ್ತದೆ ಮತ್ತು ಒಣಗಿದ ನಂತರ ಮೇಲ್ಮೈಯಲ್ಲಿ ಬಿಳಿ ಹೊಳೆಯುವ ಪದರವನ್ನು ನೀಡುತ್ತದೆ. (ಪ್ಲೇಟ್ 1c).",
          "predisposingFactors": "ತಾಪಮಾನ (25 – 30° C), ಸಾಪೇಕ್ಷ ಆರ್ದ್ರತೆ (>50%), ಮಳೆ, ಶಿಫಾರಸು ಮಾಡಿದ್ದಕ್ಕಿಂತ ಹೆಚ್ಚಿನ ಸಾರಜನಕ ಪ್ರಮಾಣದ ಅನ್ವಯ, ಸೂಕ್ಷ್ಮ ಪೋಷಕಾಂಶಗಳ ಕೊರತೆ.",
          "cropSeasonManagementTitle": "ಬೆಳೆ ಋತುವಿನಲ್ಲಿ ನಿರ್ವಹಣಾ ಪದ್ಧತಿಗಳು",
          "cropSeasonManagement": [
            "ಕೊಯ್ಲಿನ ನಂತರ ವಿಶ್ರಾಂತಿ ಅವಧಿಯಲ್ಲಿ ಮತ್ತು ಹಣ್ಣು ಬಿಡುವವರೆಗೆ ಹೊಸ ತೋಟವನ್ನು ನೆಟ್ಟ ನಂತರವೂ ರೋಗನಿರೋಧಕ ಸಿಂಪಡಣೆಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳಬೇಕು.",
            "ತೋಟ/ನೆರೆಯ ತೋಟಗಳಲ್ಲಿ ಇರುವ ರೋಗ ಮತ್ತು ಹವಾಮಾನ ಪರಿಸ್ಥಿತಿಗಳನ್ನು ಅವಲಂಬಿಸಿ 15 - 20 ದಿನಗಳ ಅಂತರದಲ್ಲಿ ಬ್ರೋನೋಪೋಲ್ @ 0.5 ಗ್ರಾಂ/ಲೀಟರ್ ನೊಂದಿಗೆ ತಾಮ್ರದ ಆಕ್ಸಿಕ್ಲೋರೈಡ್ ಅಥವಾ ತಾಮ್ರದ ಹೈಡ್ರಾಕ್ಸೈಡ್ @ 2 -2.5 ಗ್ರಾಂ/ಲೀಟರ್ ನಂತಹ ತಾಮ್ರ ಆಧಾರಿತ ಸೂತ್ರೀಕರಣಗಳೊಂದಿಗೆ ಬದಲಾಯಿಸಿ ಬೋರ್ಡೆಕ್ಸ್ ಮಿಶ್ರಣ (1%) ದೊಂದಿಗೆ ಸಿಂಪಡಿಸಿ.",
            "ತೋಟಗಳು ವಿಶ್ರಾಂತಿ ಅವಧಿಯಲ್ಲಿದ್ದರೆ ಮತ್ತು ಎಲೆ ಬ್ಲೈಟ್ ಸೋಂಕನ್ನು ಹೊಂದಿದ್ದರೆ, ಬೋರ್ಡೆಕ್ಸ್ ಮಿಶ್ರಣ ಮತ್ತು ಬ್ರೋನೋಪೋಲ್ ನೊಂದಿಗೆ ಬದಲಾಯಿಸಿ ಸ್ಟ್ರೆಪ್ಟೋಸೈಕ್ಲಿನ್ @ 0.5 ಗ್ರಾಂ/ಲೀಟರ್ ನ ಒಂದು ಸಿಂಪಡಣೆಯನ್ನು ತೆಗೆದುಕೊಳ್ಳಬಹುದು."
          ],
          "cropSeasonManagementNote": "ಗಮನಿಸಿ: ಇದು ಬ್ಯಾಕ್ಟೀರಿಯಾದ ಬ್ಲೈಟ್ ಮುಕ್ತ ಪ್ರದೇಶವಾಗಿದ್ದರೆ ಸ್ಟ್ರೆಪ್ಟೋಸೈಕ್ಲಿನ್ ಅಥವಾ ಬ್ರೋನೋಪೋಲ್ ಸಿಂಪಡಣೆಗಳು ಅಗತ್ಯವಿಲ್ಲ.",
          "emergencySpraysTitle": "ತುರ್ತು ಸಿಂಪಡಣೆಗಳು",
          "emergencySpraysIntro": "ಎಲೆಗಳ ಮೇಲೆ 5-10% ಬ್ಲೈಟ್ ಸೋಂಕು ಕಂಡುಬಂದ ತಕ್ಷಣ 4 ದಿನಗಳ ಅಂತರದಲ್ಲಿ 1-2 ಸಿಂಪಡಣೆಗಳು ಬ್ಲೈಟ್ ಹರಡುವುದನ್ನು ಮತ್ತಷ್ಟು ನಿರ್ಬಂಧಿಸುತ್ತವೆ.",
          "emergencySprays": [
            "ಸ್ಟ್ರೆಪ್ಟೋಸೈಕ್ಲಿನ್ @ 0.5 ಗ್ರಾಂ/ಲೀ + 2-ಬ್ರೋಮೋ-ನೈಟ್ರೋಪ್ರೊಪೇನ್-1, 3-ಡಯೋಲ್ (ಬ್ರೋನೋಪೋಲ್ 95%) @ 0.5 ಗ್ರಾಂ/ಲೀ + ತಾಮ್ರದ ಹೈಡ್ರಾಕ್ಸೈಡ್ 53.8% WP @ 2.0 ಗ್ರಾಂ/ಲೀ + ಸ್ಪ್ರೆಡರ್ ಸ್ಟಿಕ್ಕರ್ @ 0.5 ಮಿಲಿ/ಲೀ ದ್ರಾವಣ.",
            "ಸ್ಟ್ರೆಪ್ಟೋಸೈಕ್ಲಿನ್ @ 0.5 ಗ್ರಾಂ/ಲೀ + 2-ಬ್ರೋಮೋ-ನೈಟ್ರೋಪ್ರೊಪೇನ್-1, 3-ಡಯೋಲ್ (ಬ್ರೋನೋಪೋಲ್ 95%) @ 0.5 ಗ್ರಾಂ/ಲೀ + ಕಾರ್ಬೆಂಡಜಿಮ್ 50% WP @ 1.0 ಗ್ರಾಂ/ಲೀ + ಸ್ಪ್ರೆಡರ್ ಸ್ಟಿಕ್ಕರ್ @ 0.5 ಮಿಲಿ/ಲೀ ದ್ರಾವಣ."
          ],
          "emergencySpraysNote": "ಗಮನಿಸಿ:\n• ಪ್ರತಿ ಸಿಂಪಡಣೆಯ ಮೊದಲು ಬ್ಲೈಟ್ ಪೀಡಿತ ಹಣ್ಣುಗಳನ್ನು ತೆಗೆದುಹಾಕಿ ಮತ್ತು ನಾಶಮಾಡಿ. ಸರಿಯಾದ ತೋಟದ ನೈರ್ಮಲ್ಯವನ್ನು ಕಾಪಾಡಿಕೊಳ್ಳಿ ಮತ್ತು ವಿಶ್ರಾಂತಿ ಅವಧಿಯಲ್ಲಿ ತಡೆಗಟ್ಟುವ ಸಿಂಪಡಣೆಗಳನ್ನು ತೆಗೆದುಕೊಳ್ಳಿ.",
          "recommendations": [
            "ಎಲೆಗಳನ್ನು ಒಣಗಿಸಲು ಓವರ್‌ಹೆಡ್ ನೀರಾವರಿಯನ್ನು ತಪ್ಪಿಸಿ.",
            "ತಡೆಗಟ್ಟುವ ಕ್ರಮವಾಗಿ ತಾಮ್ರ-ಆಧಾರಿತ ಸಿಂಪಡಣೆಗಳನ್ನು ಅನ್ವಯಿಸಿ.",
            "ಸೋಂಕಿತ ಎಲೆಗಳನ್ನು ತಕ್ಷಣವೇ ತೆಗೆದುಹಾಕಿ ಮತ್ತು ನಾಶಮಾಡಿ."
          ]
        },
        "Fungal": {
          "diseaseName": "ರೋಗ: ಶಿಲೀಂಧ್ರ ಎಲೆ ಚುಕ್ಕೆಗಳು",
          "description": "ದಾಳಿಂಬೆಯು ಹಲವಾರು ಎಲೆ ಚುಕ್ಕೆಗಳನ್ನು ಉಂಟುಮಾಡುವ ರೋಗಕಾರಕಗಳಿಗೆ ಒಳಗಾಗುತ್ತದೆ, ಇದು ಹಣ್ಣಿನ ಇಳುವರಿ ಮತ್ತು ಗುಣಮಟ್ಟವನ್ನು ಕಡಿಮೆ ಮಾಡುತ್ತದೆ.",
          "causalOrganism": "ಎಲೆ ಚುಕ್ಕೆಗಳು ಆಲ್ಟರ್ನೇರಿಯಾ ಆಲ್ಟರ್ನೇಟಾ, ಸೆರ್ಕೋಸ್ಪೋರಾ ಪುನಿಕೇ (ಸ್ಯೂಡೋಸೆರ್ಕೋಸ್ಪೋರಾ ಪುನಿಕೇ), ಕೊಲೆಟೊಟ್ರಿಕಮ್ sp., ಡ್ರೆಕ್ಸ್ಕ್ಲೆರಾ ರೋಸ್ಟ್ರಾಟಾ ಮುಂತಾದ ಅನೇಕ ಶಿಲೀಂಧ್ರ ರೋಗಕಾರಕಗಳಿಂದ ಉಂಟಾಗುತ್ತವೆ. ಇದಲ್ಲದೆ, ಎಲೆ ಚುಕ್ಕೆಗಳು ಬೊಟ್ರಿಯೋಡಿಪ್ಲೋಡಿಯಾ ಥಿಯೋಬ್ರೋಮೆ, ಕರ್ವುಲೇರಿಯಾ sp., ಪೆಸ್ಟಲೋಟಿಯೋಪ್ಸಿಸ್ sp. ಮುಂತಾದ ಅನೇಕ ಇತರ ಶಿಲೀಂಧ್ರ ಪ್ರಭೇದಗಳಿಂದ ಉಂಟಾಗುತ್ತವೆ ಎಂದು ವರದಿಯಾಗಿದೆ.",
          "symptoms": "ವಿವಿಧ ರೋಗಕಾರಕಗಳು ವಿಶೇಷವಾಗಿ ಎಲೆಗಳು, ಕಾಂಡಗಳ ಮೇಲೆ ವಿಶಿಷ್ಟವಾದ ಚುಕ್ಕೆ ಲಕ್ಷಣಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತವೆ. ಇದರ ನಿಖರವಾದ ಗುರುತಿಸುವಿಕೆಯನ್ನು ಸೂಕ್ಷ್ಮದರ್ಶಕ ಮತ್ತು ಶುದ್ಧ ಸಂಸ್ಕೃತಿ ಅಧ್ಯಯನಗಳ ಮೂಲಕ ಮಾತ್ರ ಮಾಡಬಹುದು, ಏಕೆಂದರೆ ಹೆಚ್ಚಿನ ಸಮಯ ನೈಸರ್ಗಿಕ ಪರಿಸ್ಥಿತಿಗಳಲ್ಲಿ ಅತಿಕ್ರಮಿಸುವ ರೋಗ ಲಕ್ಷಣಗಳು ಕಂಡುಬರುತ್ತವೆ. ಎಲೆ ಮತ್ತು ಹಣ್ಣಿನ ಚುಕ್ಕೆಗಳಲ್ಲಿ, ಸೆರ್ಕೋಸ್ಪೋರಾ ಚುಕ್ಕೆಗಳು ದಾಳಿಂಬೆಯ ಮೇಲೆ ಹೆಚ್ಚು ಪ್ರಮುಖವಾಗಿವೆ.",
          "predisposingFactors": "20 - 30°C ನಡುವಿನ ತಾಪಮಾನ ಮತ್ತು ದೀರ್ಘಕಾಲದವರೆಗೆ 60% ಕ್ಕಿಂತ ಹೆಚ್ಚಿನ ಆರ್ದ್ರತೆಯು ರೋಗದ ಬೆಳವಣಿಗೆಗೆ ಅನುಕೂಲಕರವಾಗಿದೆ. ಮಳೆಗಾಲದಲ್ಲಿ ಎಲೆ ಮತ್ತು ಹಣ್ಣಿನ ಚುಕ್ಕೆಗಳು ಹೆಚ್ಚಾಗಿ ಕಂಡುಬರುತ್ತವೆ.",
          "chemicalManagementTitle": "ಶಿಲೀಂಧ್ರ ಎಲೆ ಚುಕ್ಕೆಗಳ ರಾಸಾಯನಿಕ ನಿರ್ವಹಣೆ",
          "chemicalManagementIntro": "ಹವಾಮಾನ ಪರಿಸ್ಥಿತಿಗಳನ್ನು ಅವಲಂಬಿಸಿ 7-10 ದಿನಗಳ ಅಂತರದಲ್ಲಿ ಕೆಳಗೆ ತಿಳಿಸಲಾದ ಸಿಂಪಡಣೆಗಳನ್ನು ಪರ್ಯಾಯವಾಗಿ ತೆಗೆದುಕೊಳ್ಳಿ ಮತ್ತು ಕೊನೆಯಲ್ಲಿ ನೀಡಲಾದ ಪ್ರಮುಖ ಸೂಚನೆಗಳನ್ನು ಅನುಸರಿಸಿ.",
          "sprays": [
            "ಜಿನೆಬ್ 75% WP @ 2g/ಲೀಟರ್",
            "ಜಿನೆಬ್ 68% + ಹೆಕ್ಸಾಕೊನಜೋಲ್ 4% WP @ 2.5g/ ಲೀಟರ್",
            "ಮೆಟಿರಾಮ್ 55% WG + ಪೈರಾಕ್ಲೋಸ್ಟ್ರೋಬಿನ್ 5% @ 3 g/ಲೀಟರ್",
            "ಟೆಬುಕೊನಜೋಲ್ 50% + ಟ್ರೈಫ್ಲಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 25% WG @ 0.5 g/ಲೀಟರ್",
            "ಪ್ರೊಪಿನೆಬ್ 70% WP @ 3 g/ಲೀಟರ್",
            "ಟ್ರೈಸೈಕ್ಲಾಜೋಲ್ 18% + ಮ್ಯಾಂಕೋಜೆಬ್ 62% WP 2.5 ರಿಂದ 3.0 g/ಲೀಟರ್",
            "ತಾಮ್ರದ ಸಲ್ಫೇಟ್ 47.15% + ಮ್ಯಾಂಕೋಜೆಬ್ 30% WDG @ 2.5 g/ಲೀಟರ್",
            "ಅಜಾಕ್ಸಿಸ್ಟ್ರೋಬಿನ್ 8.3% + ಮ್ಯಾಂಕೋಜೆಬ್ 66.7% WG @ 1.5 g/ಲೀಟರ್"
          ],
          "importantInstructionsTitle": "ಪ್ರಮುಖ ಸೂಚನೆಗಳು",
          "instructions": [
            "ಹೂಬಿಡುವ ಸಮಯದಲ್ಲಿ ಮ್ಯಾಂಡಿಪ್ರೊಪಾಮಿಡ್ 23.4% @ 1ml/l (10-15 ದಿನಗಳಲ್ಲಿ 2-3 ಸಿಂಪಡಣೆಗಳು) ಸಿಂಪಡಣೆಗಳು ಸೆರ್ಕೋಸ್ಪೋರಾ ಹಣ್ಣು ಮತ್ತು ಎಲೆ ಚುಕ್ಕೆ ಮತ್ತು ಸ್ಕ್ಯಾಬ್ ಸೇರಿದಂತೆ ಅನೇಕ ಶಿಲೀಂಧ್ರ ರೋಗಗಳಿಗೆ ತಡೆಗಟ್ಟುವಿಕೆಯಾಗಿ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತವೆ. ಆದ್ದರಿಂದ ಇದನ್ನು ಹೂಬಿಡುವ ಸಮಯದಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಿ.",
            "ಆ ದಿನ ಮಳೆ ನಿರೀಕ್ಷೆಯಿದ್ದರೆ ಸಿಂಪಡಣೆಯನ್ನು ತಪ್ಪಿಸಿ; ಮಳೆಯ ನಂತರ ಕೆಲವು ಗಂಟೆಗಳ ನಂತರ ಸಿಂಪಡಿಸುವುದು ಉತ್ತಮ ಮತ್ತು ಬಹಳ ಮುಖ್ಯ.",
            "ಅಂತಿಮ ದ್ರಾವಣವನ್ನು ಸಿದ್ಧಪಡಿಸಿದ ನಂತರ ಸಿಂಪಡಣೆಯ pH ಅನ್ನು ಪರಿಶೀಲಿಸಬೇಕು. ಅದನ್ನು 6.5-7.0 pH/ ಅಥವಾ ಶಿಲೀಂಧ್ರನಾಶಕ ಪ್ಯಾಕ್‌ನಲ್ಲಿ ಸೂಚಿಸಿದಂತೆ ಸರಿಹೊಂದಿಸಬೇಕು. ಇದು ರಾಸಾಯನಿಕ ಗಾಯಗಳನ್ನು ತಪ್ಪಿಸುತ್ತದೆ ಮತ್ತು ಉತ್ತಮ ಫಲಿತಾಂಶಗಳನ್ನು ನೀಡುತ್ತದೆ.",
            "ಬೋರ್ಡೆಕ್ಸ್ ಮಿಶ್ರಣವನ್ನು ಹೊರತುಪಡಿಸಿ ಸಿಂಪಡಣೆಗಳೊಂದಿಗೆ ಯಾವಾಗಲೂ ಸ್ಪ್ರೆಡರ್ ಸ್ಟಿಕ್ಕರ್ ಬಳಸಿ.",
            "ತಾಮ್ರದ ಶಿಲೀಂಧ್ರನಾಶಕಗಳನ್ನು ಹೊರತುಪಡಿಸಿ ಯಾವುದೇ ಕೀಟನಾಶಕವನ್ನು ಒಂದು ಋತುವಿನಲ್ಲಿ 2-3 ಬಾರಿಗಿಂತ ಹೆಚ್ಚು ಬಳಸಬಾರದು.",
            "ಅವಶೇಷ-ಮುಕ್ತ ಉತ್ಪಾದನೆಗಾಗಿ ಕೊಯ್ಲಿನ ಪೂರ್ವದ ಮಧ್ಯಂತರದ ಪ್ರಕಾರ ಸಿಂಪಡಣೆಗಳನ್ನು ಸರದಿಯಲ್ಲಿ ತೆಗೆದುಕೊಳ್ಳಬಹುದು."
          ],
          "recommendations": [
            "ಸೂಕ್ತವಾದ ಶಿಲೀಂಧ್ರನಾಶಕಗಳನ್ನು ಅನ್ವಯಿಸಿ, ವಿವಿಧ ರಾಸಾಯನಿಕ ಗುಂಪುಗಳ ನಡುವೆ ಸರದಿ ಮಾಡಿ.",
            "ಸಮರುವಿಕೆಯ ಮೂಲಕ ಗಾಳಿಯ ಪ್ರಸರಣವನ್ನು ಸುಧಾರಿಸಿ.",
            "ಎಲೆಗಳನ್ನು ಒಣಗಿಸಲು ಸಸ್ಯದ ಬುಡದಲ್ಲಿ ನೀರು ಹಾಕಿ."
          ],
          "sourceUrl": "https://nrcpomegranate.icar.gov.in/files/Advisory"
        }
      },
    },


  };

  String get showManagementTechniques {
    return _localizedValues[languageCode]!['showManagementTechniques'] as String;
  }

  String get managementTechniquesTitle {
    return _localizedValues[languageCode]!['managementTechniquesTitle'];
  }

  String get noManagementInfo {
    return _localizedValues[languageCode]!['noManagementInfo'];
  }

  String get causalOrganismLabel {
    return _localizedValues[languageCode]!['causalOrganismLabel'];
  }

  String get symptomsLabel {
    return _localizedValues[languageCode]!['symptomsLabel'];
  }

  String get predisposingFactorsLabel {
    return _localizedValues[languageCode]!['predisposingFactorsLabel'];
  }

  String get recommendationsLabel {
    return _localizedValues[languageCode]!['recommendationsLabel'];
  }

  String get sourceUrlLabel {
    return _localizedValues[languageCode]!['sourceUrlLabel'];
  }

  Map<String, dynamic>? getManagementInfo(String diseaseName) {
    // The labels from the model might have slight variations.
    // e.g. 'Cercospora Fungus' vs 'Fungal Cercospora'
    // This mapping helps find the correct management info.
    const Map<String, String> labelToManagementKey = {
      'Bacterial Blight': 'Bacterial Blight',
      'Calyx Rot': 'Calyx Rot',
      'Cercospora Fungus': 'Fungal Cercospora',
      'Fruit Rot': 'Fruit Rot',
      'Healthy': 'Healthy',
      'Scab Fungus': 'Fungal Scab',
      'Bacterial': 'Bacterial',
      'Fungal': 'Fungal',
      'Root Knot': 'Root Knot',
      'Wilt': 'Wilt',
      'Wilt plants': 'Wilt plants',
      'Aphids infestation': 'Aphids infestation',
      'Fruit borer': 'Fruit borer',
      'Fruit fly': 'Fruit fly',
      'Mealy Bug': 'Mealy Bug',
      'Thrisps': 'Thrips',
    };

    final managementKey = labelToManagementKey[diseaseName];
    if (managementKey == null) return null;

    final managementData = _localizedValues[languageCode]!['management'];
    return managementData[managementKey];
  }
}

final List<Map<String, String>> _faqData = [
  {
    "question": "1. Are there any effective chemicals to check bacterial blight completely?",
    "answer":
        "There is no single chemical which can check bacterial blight completely, however integrated approach including cultural, nutritional and plant protection operations can completely check bacterial blight. The IDIPM schedule given on NRCP website (www.nrcpomegranate.org) can effectively reduce disease by 50-80% in first year and 70-100% in second year. However, the effective chemicals include bactericide 2-bromo-2- nitropropane-1, 3-diol (Bronopol) @ 0.5 g/L; antibiotic Streptomycin sulphate 90% + Tetracycline hydrochloride 10% @ 0.5g/L; Copper oxychloride 50% WP @ 3 g/L, Copper hydroxide 77% WP @ 2 g/L and Bordeaux mixture 0.5 - 1%. These need to be taken in alteration as in IDIPM. Four sprays of salicylic acid @ 0.3g/L and micronutrient sprays @ 1-1.5 g/L at one month interval starting from pre-flowering, increase disease resistance in plants and also improve fruit yield and quality."
  },
  {
    "question": "2. Is the IDIPM schedule for bacterial blight affected orchards only?",
    "answer":
        "The IDIPM schedule is for management of all commonly appearing diseases and insect pests in pomegranate. This schedule can be used in general for getting disease and insect damage free yield in any season, however, farmers should not use Streptocycline (Streptomycin sulphate 90 % + tetracycline hydrochloride 10%) and Bronopol (2-bromo, 2-nitropropane-1, 3-diol) if their orchards are free from bacterial blight and are in bacterial blight free areas."
  },
  {
    "question": "3. In spite of taking so many sprays why we are unable to control bacterial blight?",
    "answer":
        "Recommended bactericides when sprayed at lower doses are ineffective in checking the blight disease. Too many sprays (spraying every day or alternate days) with one or the other spray solution results in increase in bacterial blight, as these sprays are without bactericide or contain lower doses of bactericide (than recommended) which are ineffective in killing the blight bacterium on one hand and on the other hand, provide much needed water and humidity to the bacterium for its multiplication and spread (plant to plant spread and entry to new areas). Hence, you do not require too many sprays but proper chemical at right dose to check blight."
  },
  {
    "question": "4. What all precautions we need to take while taking sprays?",
    "answer":
        "Self-protection, wind speed, time of spray. Need to include\n• Take only need based sprays at recommended doses, too many sprays increase the disease.\n• Always remove and destroy blight affected fruits before starting any spray.\n• Do not dump affected fruits in or near your orchard, they are source of infection in your field, burry them in pit, cover with soil and allow to decompose.\n• Keep spray interval of 7-14 days depending on weather conditions. Depending on compatibility, combine insecticides, fungicides or micronutrient sprays with bactericidal sprays. Mixture should not form precipitate or cause phytotoxicity on plants.\n• In affected plots, take without fail, additional spray with a bactericide after the rains -when plant leaf surfaces dry up.\n• Always (rains or no rains) mix good quality non-ionic spreader sticker with sprays. Do not use spreader sticker with Bordeaux mixture.\n• Always prepare Bordeaux mixture fresh and use on the same day.\n• To prepare spray mixture, dilute solutions of each chemical separately (based on their recommended dose) and mix to make total volume. If precipitate is formed, either mixture chemicals are not compatible or pH is not proper.\n• The spray solution should have a pH of 6.5 -7 for good results.\n• In case no rains are there for long duration or blight is not increasing, sprays can be taken at 10-15 days’ interval instead of 7 days.\n• The active ingredients (a.i.) in Streptocycline are Streptomycin sulphate 90% + Tetracycline hydrochloride 10% and in Bronopol ‘2-bromo, 2-nitropropane-1, 3-diol 95%.’ Both Streptocycline and Bronopol are available with different trade names from different companies. Check if a.i. is less then increase the dose accordingly.\n• Do not buy products which do not mention percent active ingredient/chemical on the packing."
  },
  {
    "question": "5. When blight affected fruits are removed, blight incidence seems to be more. Is it true?",
    "answer":
        "No, it is completely wrong. If you continue spraying with blight affected fruits, you cannot get the desired results. When you do not remove blight affected fruits, you are not able to easily identify new affected fruits because of infection on many fruits all around and you think infection has not increased. But when you remove blight affected fruits before each spray, and if you get new infection you are able to see it easily and you feel removing fruits has increased blight infection."
  },
  {
    "question":
        "6. We are unable to get any produce since last 2-3 years due to bacterial blight. We have cankers on stems. Is it possible to control the disease now or should we remove the orchard?",
    "answer":
        "There is no need to remove orchard affected with blight. The blight is not a systemic disease, blight infection is a localized and restricted to tissues around entry point. Therefore, the pathogenic bacterium is not inside the plant system and trees can be rejuvenated with IDIPM or farmers can adopt the stem solarization technology to get good yield. There are several such examples where farmers are getting normal yield in spite of cankers on the main stem."
  },
  {
    "question": "7. Is there a permanent remedy for controlling bacterial blight?",
    "answer":
        "Developing disease resistant variety is the long term solution to control bacterial diseases in any crop. As on date, there is no pomegranate variety / germplasm resistant to bacterial blight. Recently, ICAR-NRCP has developed six step stem solarization technology, if followed properly, can effectively manage the blight in mrig bahar also. With the NRCP’s modified IDIPM schedule farmers can manage the blight from 60 to 100%."
  },
  {
    "question": "8. Why has NRCP not developed any blight resistant variety so far?",
    "answer":
        "NRCP has screened all available germplasm (more than 300) seedling population and hybrids developed; all are susceptible to blight to varying degree. Moreover, blight is low in the germplasm and hybrids with negative fruit character (small size, sour in taste, hard seed or devoid of red colour). Hence, we are working at genetic level to overcome this hurdle so as to get both blight resistance varieties with good fruit quality."
  },
  {
    "question": "9. What is the stem solarization technology developed by ICAR-NRCP?",
    "answer":
        "The ‘Six Step’ schedule or stem solarization technology to manage Bacterial Blight Disease (BBD) is for the farmers taking mrig bahar and late mrig bahar crop of pomegranate and facing loses due to BBD. Following are the six main steps involved in this technique:\ni. Main Pruning: Soon after harvesting of previous season fruits in December end/to February mid, main pruning should be done, removing crowded branches, damaged and dry branches so that proper light penetration and aeration is there. Secondary and tertiary branches with BBD cankers should be cut 2-4 inches below the cankers and cut end should be pasted with 10% Bordeaux paste. Also apply 10% Bordeaux paste on stem up to 1.5-2 feet from ground. All BBD affected stems and fruits should be destroyed or buried in soil for decomposition.\nii. Rest period management: Apply rest period dose of fertilizer (both organic and inorganic) according to the age of the plant just after main pruning and cleaning of orchard. After the 30 days of the fertilizer application, apply any or combinations of bio-formulations after growing them separately in manure. Start light irrigation. Keep the pomegranate orchard in the rest period for 2 to 4 months. The irrigation should be just enough for nutrient uptake in soil and increase storage in the plant. During rest period, depending on the pest and disease incidence sprays of 1% Bordeaux mixture, neem oil and copper based fungicide should be taken at 15 days’ interval.\niii. Stress period: Stop the irrigation from mid/end March to put crop on stress till 100% natural defoliation occurs. After complete defoliation, remove the cankers visible on the branches by cutting the branch 2 - 4 inches below the canker using secateurs and burn it outside the orchard.\niv. Expose defoliated stems to solar radiation: Expose defoliated naked stems to solar radiation for 15 - 20 days before crop initiation to kill bacteria in the nodes (this is the latest modification and key step to eradicate the bacteria blight pathogen). Monitor this period critically. As soon as 1 - 2 cm tip drying of stems is observed, first irrigation is to be given and farmer should not wait for 20 days.\nv. Light pruning and fertilizer application: Go for light pruning of top 8-10 inches of branches. Remove the cankers if any as mentioned above. Go for pasting with 10% Bordeaux paste as detailed in step I.\nvi. Follow crop season fertilizer and IDIPM spray schedule: Applying recommended doses of crop season fertilizer along with humic acid and sulphur (according to soil pH). Give 4 sprays of micronutrient mixture @ 1.5-2 g/L and salicylic acid @ 300 ppm (30 g in 100 litre) at 1-month interval starting pre-flowering stage. Take sprays of recommended fungicides and insecticides @ 7-10 days’ interval as per plot requirement for quality production. Harvest the good quality produce during December.\nThis technology if followed properly and in community approach farmers can get 100% bacterial blight free mrig bahar produce."
  },
  {
    "question": "10. What are the most important environmental conditions for severe blight attack?",
    "answer":
        "Factors favourable for blight development are mainly favourable temperature and humidity for 10-16 hours. Blight starts when the relative humidity is more than 30% and develops at a fast rate above 50% if temperatures between 25.0oC to 35.0oC exist. Rainfall of 0.1 mm or our sprays are sufficient to provide required water for its development and wind speed 3.5 m/sec along with rain help in spread and entry in new locations.\nFactors not favourable for blight development include long durations of temperature below 20oC or above 35oC and RH below 30%."
  },
  {
    "question": "11. Is there any relation of nutrients with bacterial blight disease severity?",
    "answer":
        "Yes, balanced use of nutrients is most important for protecting plants not only from bacterial blight but also other diseases and disorders. The nutrients like Ca, Mg, Fe and Mn & Cu when used in balanced proportions, reduce the bacterial blight disease severity while excess of N and K enhances the disease severity."
  },
  {
    "question": "12. What are the most important steps to keep your orchard free from bacterial blight?",
    "answer":
        "• Plant with assured disease free planting material.\n• Plant soon after the rains never before the rains.\n• Use recommended manures and fertilizers at right time and right dose.\n• Give lot of organics from planting and avoid inorganic fertilizers for the first two years till first crop regulation.\n• Sanitation of orchard should be maintained.\n• Do not allow people coming from affected orchards for pruning or visit in your orchard.\n• Allow plants to grow at least for two years before taking first crop.\n• Do not take too many fruits per tree. Take optimum number depending on age and plant vigour.\n• Give proper rest to the crop and apply organic manures, micronutrients, potash and phosphorous soon after harvest in rest period with minimum irrigation.\n• Unattended and disease affected orchards should be removed.\n• Take prophylactic sprays throughout the year: crop season, rest period and after rains.\n• Bordeaux mixture (0.5-1%) freshly prepared on day of use is the best broad spectrum bactericide and fungicide.\n• Do not spray anything and everything blindly. Use genuine chemicals.\n• Do not use Streptocycline (Streptomycin sulphate 90% + tetracycline hydrochloride 10%) in blight free orchards/areas."
  },
  {
    "question": "13. What are the most important steps to manage bacterial blight once it is seen in the orchard?",
    "answer":
        "• Farmers willing to take the mrig bahar crop, adopt the stem solarization technique developed by NRCP for blight management.\n• If possible, shift to hasta / early hasta bahar crop once disease is observed in the orchard.\n• Give proper rest to the crop and follow recommended practices during rest period.\n• Adopt uniform bahar and management schedule in your locality for all the orchards.\n• Unattended affected orchards should be removed; sanitation of orchard should be maintained.\n• Use recommended manures and fertilizers at right time and right dose. Give lot of organics.\n• Taking proper spray schedules at recommended doses throughout the year (crop season, rest period and after rains).\n• Do not spray anything and everything blindly. Use genuine chemicals which mention active ingredient (a.i.) percent or declare ingredient details with percent of each."
  },
  {
    "question": "14. Are there any alternate hosts for the bacterial blight pathogen?",
    "answer":
        "No there are no alternate hosts for bacterial blight pathogen X. axonopodis pv punicae. Neem is reported as alternate hosts by some, are having other bacteria causing blight symptoms on them."
  },
  {
    "question": "15. Bacterial blight is caused by only bacteria or some other organism is also involved?",
    "answer":
        "Bacterial blight is caused by bacterium Xanthomonas axonopodis pv punicae only and no other organism is involved with it."
  },
  {
    "question": "16. How do we identify the bacterial blight disease in early stages?",
    "answer":
        "• The first symptoms on leaves are small water soaked (oily) spots on the under surface of leaves, which can be seen clearly against light.\n• On fruits, first symptoms are water soaked/oily spots on the outer skin.\n• On twigs, water soaked grey tissue around nodes is seen usually on new/ young twigs. These later turn black brown with water soaked margins in active lesions.\n• To confirm the disease, take samples to nearest laboratory, where laboratory ooze test can confirm bacterial blight instantly. The bacterial spots on fruits and stems will feel sticky to touch with a drop of water and rubbing the finger on it."
  },
  {
    "question": "17. Once it enters the plant after how many days, the disease symptoms can be seen?",
    "answer":
        "In a newly established orchard if the planting material is carrying hidden infection of the bacteria (generally axils/dormant buds carry bacteria), the blackening of nodes appears in scattered plants, generally after 5 - 7 months’ age, depending on environmental conditions.\nIn blight infected orchard new infections can be seen between 4 - 7 days after the bacterium enters the leaves/fruits, when water through rains or sprays is available."
  },
  {
    "question": "18. What measures are required to establish a disease free new orchard of pomegranate?",
    "answer":
        "Bring planting material from a disease free area/orchard and constantly monitor the orchard for nodal infection, because of reasons given in Q4. It is wise to uproot such infected plants immediately and burn them. Immediately take protective sprays of Streptocycline @ 0.5 g/L + Copper Oxychloride @ 2.5g/L) alternate with Bordeaux mixture (0.5%) at 10 -15 days’ interval or immediately after rains."
  },
  {
    "question": "19. Does bacterial blight spread through air? How long can it travel in air?",
    "answer":
        "Bacterial blight spreads through air only when rain storms are there or there is high humidity in air, because the bacterium dies in dry air. In air, it can travel generally short distances infecting neighbouring plants up to few meters, however rain storms may carry them up to long distances."
  },
  {
    "question": "20. What are the different methods of spread for bacterial blight?",
    "answer":
        "Bacterial blight can spread through infected planting material, plant to plant contact, rains, run off water and rain/ spray water splashes, wind-blown rain splashes, person handling the plants, contaminated tools, visiting insects."
  },
  {
    "question": "21. Is bacterial blight organism present in soil and if yes, for how long? Can soil be a carrier of blight bacteria?",
    "answer":
        "It is present in soil below the blight affected plant or where blight affected plant debris are buried. It cannot remain without pomegranate tissue (leaves, fruits or stems) for more than 30 days. Hence, 25-30 days after plant tissue decomposes in soil blight bacteria Xanthomonas will die. Therefore, soil is not important for spread of bacteria if plant tissue has decomposed."
  },
  {
    "question":
        "22. I have a badly affected blight orchard, I want to remove and plant new orchard. After how much time of removing blight affected orchard can I plant new orchard?",
    "answer":
        "Yes. Remove all plant debris especially affected fruits and stems from orchard and destroy them as these do not decompose easily and take long time. Rake the soil several times for tilling and exposing the soil to sun rays. Best time to do this is in hottest months of the year and then grows some green manure crops like Dhaincha etc. just before the rains start. Plough it in the soil after 50-60 days then plant after the rains when there is good soil moisture and cooler day temperatures for better and disease free establishment of new plants."
  },
  {
    "question": "23. Unable to control Colletotrichum rot (also called plague by farmers)",
    "answer":
        "The pathogenic fungus, Colletotrichum attacks fruits in hot humid conditions and results in heavy losses even by itself. Remove affected fruits and destroy/burn them, do not dump in around orchard nor throw elsewhere. Take 2 sprays at 7-day interval with any of the fungicide Tricyclazole 18% + Mancozeb 62% WP @ 2.5 g/L or Propiconazole 25% EC @ 1 ml/L + Azoxystrobin 23% SC @ 1 ml/L or Chlorothalonil 75% WP @ 2 g/L or Mandipropamid 23.4 % SC @ 1 ml/L. or Metiram 55% + Pyraclostrobin 5% EC @ 3 g /L. One systemic and one contact fungicide should be taken per month as preventive from pre flowering stage. If it is around pin prick holes, then fruit sucking moth is the main cause, control fruit sucking moth"
  },
  {
    "question": "24. How to differentiate fruits rots caused by Colletotrichum and Phytophthora during fruiting stage? What are the control measures?",
    "answer":
        "Colletotrichum (Anthracnose) rots are brown hard rots with no sporulation on surface and Phytophthora rots are tan coloured rots that are not hard but soft and mushy. It is fast spreading covering entire fruit in 2-3 days. White fungus can be seen in later stages on fruit surface."
  },
  {
    "question": "25. What are the causes of plant wilt?",
    "answer":
        "The fungal pathogen Ceratocystis fimbriata is the major cause of wilt and species of Fusarium, Rhizoctonia, Sclerotium, Macrophomina, Phytophthora are occasionally associated with wilt disease of pomegranate. In some sandy/light soils root knot nematode Meloidogyne spp can cause stunting and wilting in association with fungi. Shot hole may be associated with C. fimbriata or may independently result in damage resulting in wilt. Partial or complete plant may also die due to stem borer. Apart from this water scarcity or water logging can also lead to temporary or permanent wilt."
  },
  {
    "question": "26. Is there any fool proof remedy for wilt management?",
    "answer":
        "If wilt is due to fungal pathogen and it initiates or damages more than 25-30% plant canopy it is difficult to save that particular plants with chemical treatment. If the treatment is initiated immediately just after initial yellowing symptoms, the adjoining plants can be saved with drenching of Propiconazole 25% EC @ 2 ml/L. The wilt caused due to infestation of pin hole borer can be managed by drenching with Emamectin benzoate 5% SG @ 2 ml/L; while the root-knot nematode can be managed with both chemical nematicides as well as biocontrol agents.  Prophylactic methods such as use of promising bio agents every 6 months are the best solution for wilt management."
  },
  {
    "question": "27. What is package of practices for wilt management?",
    "answer":
        "Right and early identification followed by correct management practices is the key to successfully avoid or control wilt problems. Please follow the link https://nrcpomegranate.icar.gov.in/files/Advisory/86.pdf for detailed advisory for wilt."
  },
  {
    "question": "28. When I removed wilt affected plant, I could see that more plants were infected? Some say removing wilt affected plants increases wilt. Is it true?",
    "answer":
        "No it is not true. Removing wilt affected plants without proper precautions leads to more wilted plants. Wilt caused by fungi is soil borne disease spreads through soil and planting material from diseased to healthy plants during various intercultural operations. Dry wilted plants should be removed and burnt; they should not be kept dumped in the orchard for firewood. The pathogen can survive for several years in the dead plant and in soil or in infected plant debris. It can spread fast trough wind, rain infecting new plants in the orchard. While removing the wilted plants from the orchard for burning, if the roots / soil on roots having wilt pathogens falls and spreads in orchard can lead to wilting of more plants in the orchard."
  },
  {
    "question": "29. Can Bordeaux mixture be mixed with other fungicide, insecticide or micronutrients?",
    "answer": "No, mixing of other chemicals in Bordeaux mixture is not recommended, it reduces efficacy of the Bordeaux mixture."
  },
  {
    "question": "30. How to make proper Bordeaux mixture and Bordeaux Paste?",
    "answer":
        "I. Bordeaux mixture: Bordeaux mixture if prepared properly is a very effective broad spectrum fungicide. To prepare a good Bordeaux mixture follow the steps below:\nII. (a) Composition: Chemical Quantity Copper Sulphate (CuSO4. 5H20) 1kg* Quick lime/Calcium Oxide (CaO) or Calcium hydroxide Ca(OH)2 [Use fresh stocks] 300-400g* Depending on purity Water 100L *For 0.5%, reduce the quantity of Copper sulphate and lime to half\n(b) Method\n• Dissolve Copper sulphate overnight in 10 litres water in a plastic bucket (suspend in a jute bag to facilitate dissolving).\n• Slake the lime (Calcium oxide); suspend in another bucket having 10 litres of water, and strain through a fine sieve. If quick lime is not available, hydrated lime (Ca(OH)2) can be used.\n• On next day, these two solutions are then poured together through a strainer into a third vessel or spray tank containing 80 litres of water, constantly stirring vigorously with wooden stick. Keep one litre of each solution for pH adjustment.\n• This gives the most finely divided precipitate.\n(c) Tests for Bordeaux mixture:\n• Iron Test: The Bordeaux mixture prepared should not have excess copper in it, as it is toxic to plants. To test this, dip an iron knife or a nail in the upper layer of the solution for a few minutes. A brick red or rusty brown deposition on the metal surface indicates presence of excess copper in the mixture. In such a situation add more lime solution to the mixture till no rust appears on the iron knife.\n• pH Test: To test the pH of mixture, use portable pen type pH meter of good quality and check for pH 7. If pH is below 7; add more lime and if above pH 7 add Copper sulphate to bring it to pH 7.\n(d) Points to Remember:\n• Use mixture for spray immediately after preparation.\n• Do not use iron or galvanized vessels for the preparation of Copper sulphate solutions. Use plastic vessels, earthen or wooden barrels.\n• Do not mix Bordeaux mixture with other chemicals or pesticides also do not mix spreader sticker.\n• Always strain the mixture through a sieve before adding it to spray tank.\nII. Bordeaux Paste (10%): Use 1 kg of Copper sulphate, 1 kg hydrated Lime for 10 litres of water. Use the same procedure as above for preparation except no need to check pH or do Iron test."
  },
  {
    "question": "31. Can we apply copper fungicides during hot dry months?",
    "answer":
        "Copper fungicides during hot dry months can be applied with proper irrigation and during evening hours and not more than 2 applications per month are recommended in general. Excessive use in hot dry months leads to phyto-toxicity."
  },
  {
    "question": "32. What are the reasons for fruit cracking and what is the remedy?",
    "answer":
        "Fruit cracking can be due to abiotic (water) reasons as well as biotic reasons (bacterial blight or other pathogens). The major reason for abiotic fruit cracking is sudden fluctuation of soil moisture. Application of irrigation or rain after long dry spell and fluctuation of soil moisture content owing to sudden rainfall leads to fruit cracking. The remedy includes:\n• Foliar spray of Boric acid @ 0.25% three times at one-month interval starting from flower bud initiation.\n• Application of gypsum @ 500 – 700 g per plant in soil depending on the pH of soil.\n• Use of plastic or organic mulching.\n• Regulating fluctuation of soil moisture content during fruiting."
  },
  {
    "question": "33. Whether growth regulators prevent fruit cracking?",
    "answer": "Yes, use of Paclobutrazol @ 300 ppm i.e. 0.3 g/L) reduce fruit cracking to some extent."
  },
  {
    "question": "34. How can I control fruit sucking moth apart from common method of catching and killing the moth after sunset?",
    "answer":
        "Fruit bagging with butter paper or polypropylene non-woven bag is the only promising solution for fruit sucking moth. Remove Gulvel (Tinospora sp.) in vicinity of orchard as it is host for larval stages of fruit sucking moth. Do not remove pierced fruits as moth attacks such fruits again and again; collect and destroy the fallen fruits on the ground, take fungicide spray to avoid rot. Banana or guava baits in Nylon bags may be hanged at multiple spots in orchard as moth prefers these fruits. The moth damage is seen from August to November after rains. Change of season is the other alternative."
  },
  {
    "question": "35. What are the benefits of bagging?",
    "answer":
        "Bagging improves fruit colour and quality, avoids sun scorching and gives protection against fruit sucking moth and fruit borer if done at proper time and stage of fruit development."
  },
  {
    "question": "36. What bagging material should be used? What is the cost of bagging per fruit?",
    "answer": "Butter paper and polypropylene non-woven bagging is best. The cost with these materials comes around 50-60 paise per fruit."
  },
  {
    "question": "37. What are the recommendations for bagging?",
    "answer":
        "Bagging should be done only as per need. For fruit sucking moth, bag the fruits as soon as first attack is observed, generally in August end or September. For sun scald bagging is required starting February to May after fruit becomes lemon size. Just before bagging take a spray of fungicide + bactericide + insecticide on fruits. Do not bag fruits in rainy season and in blight, fruit rot and mealy bugs affected orchards. Bagged fruits become more prone to bacterial blight, rot and mealy bugs."
  },
  {
    "question": "38. How to overcome bird damage during fruiting stage?",
    "answer": "By covering fruits with polypropylene bags or covering the plants/plots with nets."
  },
  {
    "question": "39. What are the symptoms of shot or pin hole borer in pomegranate?",
    "answer":
        "Shot hole borer (Xyleborus spp.) is a small beetle that infests the collar region of the plant by making numerous pin or shot holes causing a discontinuity in the conducting vessels affecting the conduction of water and nutrients to the upper portion of the plant. Beetle infestations are most easily detected by the presence of entry holes made by them and the presence of frass produced during gallery construction. Affected tree/branch showing yellowing of leaves progressed into partial wilting and finally leads to the death of the tree."
  },
  {
    "question": "40. How to control pin hole borer in pomegranate",
    "answer":
        "• Keep pomegranate orchard neat and clean (weed free).\n• Avoid water logging, periodical checking of the plants in the orchard for yellowing of branches and presence of frass/excreta near the stem.\n• Remove the infested branches and destroy by burning.\n• Preventative insecticide sprays on the free area of the stem and branches with Emamectin benzoate 5% SG @ 2 g/L and followed by Azadirachtin 10000 ppm @ 3 ml/L may be taken alternatively at monthly/bi-monthly intervals.\n• Stem pasting should be done at least twice a year; one during rest and another before taking bahar.\n• Curative Measures:\n• 1st Drenching with Emamectin benzoate 5% SG @ 2 g/L + Propiconazole 25 % SC @ 2 ml/L water.\n• 2nd Drenching: 15-20 days after the first with Emamectin benzoate 5% SG @ 2 g/L + Carbendazim 50% WP @ 2 g/L or Imidacloprid 17.8 % SL @ 2 ml/L + Carbendazim 50 % WP @ 2 g/L in a circular fashion and use 5-10 L solution per tree.\n• 3rd drenching can be taken with chemicals of first drenching at 15-20 days after the second treatment based on the prevalence of the pest/severity of the problem."
  },
  {
    "question": "41. Are all nematodes harmful to the plants and humans?",
    "answer":
        "• No, All the nematodes are not harmful to humans and plants. In fact, most of the nematodes are free living and play very important role in decomposition of organic matter, nutrient recycling.\n• Some feeds on bacteria, fungi and other nematodes also. Only 25% of the known nematodes cause diseases in plants and human beings."
  },
  {
    "question": "42. What are the most important plant parasitic nematode of Pomegranate?",
    "answer":
        "• The Root-Knot Nematode, Meloidogyne incognita is identified as the major causal organisms for wilt disease of pomegranate.\n• Along with the root knot nematode, other plant parasitic species like Rotylenchulus, Aphelenchus and Helicotylenchus were also reported from pomegranate orchards."
  },
  {
    "question": "43. What are the symptoms of Root-Knot Nematode in pomegranate and how to check the infestation of nematode in the orchards?",
    "answer":
        "• In general nematode infested plant shows symptoms of nutrient deficiency, yellowing of leaves and stunted growth.\n• It is also observed that sometimes luxuriantly growing plants show reduced or no flowering for long periods (more than 1 year) due to heavy infestation of root knot nematode.\n• With increase in the population of nematode, feeder roots are damaged resulting in less nutrient uptake from the soil. This also results in flower drop and losses in terms of quality (small sized fruits) and quantity (less number of fruits per plant).\n• In order to confirm the nematode infestation, please check new feeder roots just below the drippers. The knots/galls on the newer pomegranate roots just below the dripper, confirm the infestation of root-knot nematode."
  },
  {
    "question": "44. Is Root-knot nematode play any role in wilt disease of pomegranate?",
    "answer":
        "• Yes, definitely, nematode damages / injures the plant roots during penetration which makes easy roots for invasion of pathogenic fungi like Ceratocystis fimbriata and Fusarium oxysporium which causes wilt of pomegranate.\n• Root-knot nematode is the second major cause of wilt disease in pomegranate after C. fimbriata. Presence of Root-Knot nematode increase the spread and severity of wilt disease."
  },
  {
    "question": "45. What is the primary source of nematode infestation?",
    "answer":
        "• Infected planting material is the major and primary source of spread of root-knot nematode in new localities even to other states. States like Gujarat and Rajasthan where pomegranate is new crop; nematode problem became severe due to planting of infected saplings from other places.\n• The intercultural operations like manure application, farm machinery, flooding/runoff irrigation water can spread the nematode within and nearby orchards."
  },
  {
    "question": "46. Why nematode gets unnoticed till the most of roots converts into nematode galls?",
    "answer":
        "• Root-Knot Nematode is microscopic soil borne pathogen infecting plant roots. Infected planting material is the major and primary source nematode infestation.\n• The general symptoms as told above are of nutrient deficiency. Farmers usually do not uproot and check the plants for presence of roots galls.\n• After planting of nematode infested saplings, nematode multiply rapidly under field condition. Under the optimum temperature condition (27-30°C), the nematode can complete its life cycle (egg to egg) in 3 to 5 weeks’ time.\n• Due to perennial nature of crop, the nematode can complete several (10-14) generation in a year leading to rapid population build-up. Within the span of 2 years nematode infest almost all the new roots. These heavily galled roots can be observed during the weeding and fertilizer application."
  },
  {
    "question": "47. What are the physical management practices for root-knot management in pomegranate?",
    "answer":
        "• Use of solarized/ sterilized soil (potting mixture) for saplings eliminates almost all soil borne pathogens including nematodes.\n• Soil solarization for 6 weeks in the hottest month (April-May) using 50-75 LLDPE (Linear Low Density Polyethylene) sheet helps to reduce the soil borne pathogen including nematodes."
  },
  {
    "question": "48. Can we manage Root-Knot nematode problem using bio-formulations? Which are the promising bio-formations for nematode management?",
    "answer":
        "• If the infestation of nematode is not high (few galls on roots), it is better to use promising bio-formulations for nematode management. The bio-formulations consists of Trichoderma viride or T. harzianum, Pseudomonas fluorocence, Paecilomyces lilacinus, Pochonia chlamydosporia, Aspergillus niger and Mycorrhiza (Rhizophagus irregularis/Glomus irregularis).\n• If multiplied in FYM & used regularly (at least twice a year), can keep the nematode population below ETL. But if the infestation is high, it’s better to first go for chemical nematicide to reduce the root knot population below the damage threshold and then continuously use any of the above mentioned bio-formulations."
  },
  {
    "question": "49. Which are the crops we can take as intercrop or during rest period for nematode management?",
    "answer":
        "Growing of Sun hemp (Crotalaria juncea) as green manure crop which also acts as resistant trap crop; planting of African marigold (Tagetes erecta) varieties or intercropping with Onion, Garlic, Rapeseed, Mustard, Sesamme is beneficial for reducing the nematode population in the field."
  },
  {
    "question": "50. What are the chemical nematicides for the management of Root-knot nematode in pomegranate?",
    "answer":
        "• In case of severe nematode infestation, farmers can use the granular nematicide Fluensulfone 2% GR. In order to use the granular nematicide, make a small pit (5-10 cm) under the dripper and apply the granular chemical @ 10 g per dripper (Maximum dose should not exceed 40 g/plant); cover it with the soil and start watering.\n• Drenching can also be done with another nematicide like fluopyrum 34.48% SC @ 2 ml/plant. Plants should be sufficiently watered day before drenching. Mix 2 ml of the nematicide in two litre of water and pour 500 ml per dripper (4 drippers/plant) or 1000 ml per dripper (2 drippers/plant).\n• These nematicides can be used either in the rest period or in the beginning of bahar season. After one or two nematicides treatment, start the bio formulations mentioned in rest period management for check the further population build-up."
  },
  {
    "question": "51. Is application of bio-fertilizers/bio-formulations advised through drip irrigation system? What is the right procedure?",
    "answer":
        "• No, never apply bio-fertilizers/bio-formulations through drip irrigation system. The organisms in bio-products available in market are made dormant for the convenience of long term storage. These organisms should be mixed with well decomposed farm yard manure (FYM) and incubated for bringing them in active growth stage for better multiplication and build-up of active population for successful establishment before they can be applied to the rhizosphere.\n• The right procedure is to mix 1 kg or litre (or more as per instructions on pack) pack in 1 ton of well decomposed FYM. Mix and moisten the FYM and cover it with polythene sheet in 1 feet high heaps in the shade for 10 - 15 days. Rake up the heap once every 1 - 2 days and add more water if required to maintain required humidity. Apply in root zone by mixing with soil and start irrigation."
  },
  {
    "question": "52. Can bio-fertilizer/formulation and inorganic fertilizer/formulation be applied together?",
    "answer":
        "• No, never mix and apply bio-fertilizer/formulation and inorganic fertilizer/formulation together.\n• Bio-fertilizers have living organisms; they should not be mixed with any inorganic fertilizers / formulation / chemical as these chemicals may have direct or indirect negative effect on the microorganism’s growth and survivability. They should be applied at least 20 - 30 days after chemical application."
  },
  {
    "question": "53. Which bio-formulations available in market are good for pomegranate?",
    "answer":
        "• Bio-formulations containing Arbuscular mychorrhizal fungi (AMF) with Glomus spp.; Aspergillus niger AN27; Trichoderma viride; Trichoderma harzianum; Paecilomyces lilacinus; Verticillium spp and Pochonia chlamydosporia are good for soil application for general plant protection against wilt and nematode.\n• They also promote plant growth and immunity. Bacillus subtilis, Pseudomonas fluorescens, Trichoderma sp. are good for foliar sprays against foliar diseases. However, count of the organism in the formulation should be at least 107-8/g or ml formulation when used and should purchase reliable tested brands and stored properly."
  },
  {
    "question": "54. How to multiply the bio-formulations under field conditions and what role they play?",
    "answer":
        "• A large number of beneficial bio agents play very important role in improving the soil and plant health. Almost all the bio-agents (except Mycorrhiza) can multiply well in the decomposed organic manure. These bio-agents should be multiplied separately under shade. For on farm multiplication, Mix 1 kg of bio-formulation with 500 kg to 1 ton of well decomposed manure. Prepare 1 feet high bed for each formulation separately. Mix bio formulation with manure, maintain 50 – 60 % moisture in these beds and cover it with gunny bags to maintain humidity. Rake/mix the bed soil every 2-3 days. After 10-15 days of incubation, the bio agents grow profusely in the compost.\n• After multiplying the bio-agents separately, mix Mycorrhiza in the compost @ 1 kg/acre just before application and apply the bio-formulation enriched mixture @ 10-20 gram/plant. Application of these bio agents twice a year (once on start of rest, second at crop regulation) in the soil helps in improving nutrient uptake, plant growth and biochemical resistance to diseases, also checks pomegranate wilt."
  },
];

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppLocalizations.supportedLanguages.keys.contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(
        AppLocalizations(locale.languageCode));
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}