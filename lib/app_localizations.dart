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
  ];

  static final Map<String, String> supportedLanguages = {
    'en': 'English',
    'hi': 'हिंदी',
    'mr': 'मराठी',
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
      'root_subtitle': 'Check for diseases affecting the roots',
      'insects_title': 'Live & Dead Insects Images',
      'insects_subtitle': 'Identify common insects and pests',
      'flowers_title': 'Fruits, Flowers & Leaves Images',
      'flowers_subtitle': 'Identify pests affecting flowers',
      'resultLabel': 'Result:',
      'confidenceScoreLabel': 'Confidence Score:',
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
    },
  };

  String? getString(String key, {Map<String, String>? params}) {
    var value = _localizedValues[languageCode]![key] as String?;
    if (value != null && params != null) {
      params.forEach((paramKey, paramValue) {
        value = value!.replaceAll('{$paramKey}', paramValue);
      });
    }
    return value;
  }

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
    };

    final managementKey = labelToManagementKey[diseaseName];
    if (managementKey == null) return null;

    final managementData = _localizedValues[languageCode]!['management'];
    return managementData[managementKey];
  }
}

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