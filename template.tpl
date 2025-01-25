___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Country ISO Code and Name Converter",
  "description": "A GTM variable template that converts country names to Alpha-2/Alpha-3 codes and vice versa, with advanced options for handling invalid or unrecognized input.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "theCountryVariableInput",
    "displayName": "The Country Input",
    "description": "Enter either the state name or the abbreviation (code).",
    "simpleValueType": true
  },
  {
    "type": "RADIO",
    "name": "countryTransformationType",
    "displayName": "Transformation Type",
    "description": "Select the type of output: full state name or abbreviation.",
    "radioItems": [
      {
        "value": "Output is the 2 letter Alpha-2 Code",
        "displayValue": "Convert to Alpha-2 Code"
      },
      {
        "value": "Output is the three letter Alpha-3 Code of the country",
        "displayValue": "Convert to Alpha-3 Code"
      },
      {
        "value": "Output is the Full Name of the State",
        "displayValue": "Convert to Full Country Name"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "LABEL",
    "name": "advvariableLabel",
    "displayName": "Advanced Options (Optional)"
  },
  {
    "type": "CHECKBOX",
    "name": "advanceTransformationConfig",
    "checkboxText": "If the input is not a valid country name or code, return the original input instead of undefined.",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_SERVER___

const countryMapping = {
  "Afghanistan": { "alpha2": "AF", "alpha3": "AFG" },
  "Albania": { "alpha2": "AL", "alpha3": "ALB" },
  "Algeria": { "alpha2": "DZ", "alpha3": "DZA" },
  "Andorra": { "alpha2": "AD", "alpha3": "AND" },
  "Angola": { "alpha2": "AO", "alpha3": "AGO" },
  "Anguilla": { "alpha2": "AI", "alpha3": "AIA" },
  "Antarctica": { "alpha2": "AQ", "alpha3": "ATA" },
  "Antigua and Barbuda": { "alpha2": "AG", "alpha3": "ATG" },
  "Argentina": { "alpha2": "AR", "alpha3": "ARG" },
  "Armenia": { "alpha2": "AM", "alpha3": "ARM" },
  "Australia": { "alpha2": "AU", "alpha3": "AUS" },
  "Austria": { "alpha2": "AT", "alpha3": "AUT" },
  "Azerbaijan": { "alpha2": "AZ", "alpha3": "AZE" },
  "Bahamas (the)": { "alpha2": "BS", "alpha3": "BHS" },
  "Bahrain": { "alpha2": "BH", "alpha3": "BHR" },
  "Bangladesh": { "alpha2": "BD", "alpha3": "BGD" },
  "Barbados": { "alpha2": "BB", "alpha3": "BRB" },
  "Belarus": { "alpha2": "BY", "alpha3": "BLR" },
  "Belgium": { "alpha2": "BE", "alpha3": "BEL" },
  "Belize": { "alpha2": "BZ", "alpha3": "BLZ" },
  "Benin": { "alpha2": "BJ", "alpha3": "BEN" },
  "Bhutan": { "alpha2": "BT", "alpha3": "BTN" },
  "Bolivia (Plurinational State of)": { "alpha2": "BO", "alpha3": "BOL" },
  "Bosnia and Herzegovina": { "alpha2": "BA", "alpha3": "BIH" },
  "Botswana": { "alpha2": "BW", "alpha3": "BWA" },
  "Bouvet Island": { "alpha2": "BV", "alpha3": "BVT" },
  "Brazil": { "alpha2": "BR", "alpha3": "BRA" },
  "British Indian Ocean Territory (the)": { "alpha2": "IO", "alpha3": "IOT" },
  "Brunei Darussalam": { "alpha2": "BN", "alpha3": "BRN" },
  "Bulgaria": { "alpha2": "BG", "alpha3": "BGR" },
  "Burkina Faso": { "alpha2": "BF", "alpha3": "BFA" },
  "Burundi": { "alpha2": "BI", "alpha3": "BDI" },
  "Cabo Verde": { "alpha2": "CV", "alpha3": "CPV" },
  "Cambodia": { "alpha2": "KH", "alpha3": "KHM" },
  "Cameroon": { "alpha2": "CM", "alpha3": "CMR" },
  "Canada": { "alpha2": "CA", "alpha3": "CAN" },
  "Cayman Islands (the)": { "alpha2": "KY", "alpha3": "CYM" },
  "Central African Republic (the)": { "alpha2": "CF", "alpha3": "CAF" },
  "Chad": { "alpha2": "TD", "alpha3": "TCD" },
  "Chile": { "alpha2": "CL", "alpha3": "CHL" },
  "China": { "alpha2": "CN", "alpha3": "CHN" },
  "Christmas Island": { "alpha2": "CX", "alpha3": "CXR" },
  "Cocos (Keeling) Islands (the)": { "alpha2": "CC", "alpha3": "CCK" },
  "Colombia": { "alpha2": "CO", "alpha3": "COL" },
  "Comoros (the)": { "alpha2": "KM", "alpha3": "COM" },
  "Congo (the)": { "alpha2": "CG", "alpha3": "COG" },
  "Congo (the Democratic Republic of the)": { "alpha2": "CD", "alpha3": "COD" },
  "Cook Islands (the)": { "alpha2": "CK", "alpha3": "COK" },
  "Costa Rica": { "alpha2": "CR", "alpha3": "CRI" },
  "Croatia": { "alpha2": "HR", "alpha3": "HRV" },
  "Cuba": { "alpha2": "CU", "alpha3": "CUB" },
  "Curaçao": { "alpha2": "CW", "alpha3": "CUW" },
  "Cyprus": { "alpha2": "CY", "alpha3": "CYP" },
  "Czechia": { "alpha2": "CZ", "alpha3": "CZE" },
  "Denmark": { "alpha2": "DK", "alpha3": "DNK" },
  "Djibouti": { "alpha2": "DJ", "alpha3": "DJI" },
  "Dominica": { "alpha2": "DM", "alpha3": "DMA" },
  "Dominican Republic (the)": { "alpha2": "DO", "alpha3": "DOM" },
  "Ecuador": { "alpha2": "EC", "alpha3": "ECU" },
  "Egypt": { "alpha2": "EG", "alpha3": "EGY" },
  "El Salvador": { "alpha2": "SV", "alpha3": "SLV" },
  "Equatorial Guinea": { "alpha2": "GQ", "alpha3": "GNQ" },
  "Eritrea": { "alpha2": "ER", "alpha3": "ERI" },
  "Estonia": { "alpha2": "EE", "alpha3": "EST" },
  "Eswatini": { "alpha2": "SZ", "alpha3": "SWZ" },
  "Ethiopia": { "alpha2": "ET", "alpha3": "ETH" },
  "Falkland Islands (the) [Malvinas]": { "alpha2": "FK", "alpha3": "FLK" },
  "Faroe Islands (the)": { "alpha2": "FO", "alpha3": "FRO" },
  "Fiji": { "alpha2": "FJ", "alpha3": "FJI" },
  "Finland": { "alpha2": "FI", "alpha3": "FIN" },
  "France": { "alpha2": "FR", "alpha3": "FRA" },
  "Gabon": { "alpha2": "GA", "alpha3": "GAB" },
  "Gambia (the)": { "alpha2": "GM", "alpha3": "GMB" },
  "Georgia": { "alpha2": "GE", "alpha3": "GEO" },
  "Germany": { "alpha2": "DE", "alpha3": "DEU" },
  "Ghana": { "alpha2": "GH", "alpha3": "GHA" },
  "Gibraltar": { "alpha2": "GI", "alpha3": "GIB" },
  "Greece": { "alpha2": "GR", "alpha3": "GRC" },
  "Greenland": { "alpha2": "GL", "alpha3": "GRL" },
  "Grenada": { "alpha2": "GD", "alpha3": "GRD" },
  "Guadeloupe": { "alpha2": "GP", "alpha3": "GLP" },
  "Guam": { "alpha2": "GU", "alpha3": "GUM" },
  "Guatemala": { "alpha2": "GT", "alpha3": "GTM" },
  "Guinea": { "alpha2": "GN", "alpha3": "GIN" },
  "Guinea-Bissau": { "alpha2": "GW", "alpha3": "GNB" },
  "Guyana": { "alpha2": "GY", "alpha3": "GUY" },
  "Haiti": { "alpha2": "HT", "alpha3": "HTI" },
  "Honduras": { "alpha2": "HN", "alpha3": "HND" },
  "Hong Kong": { "alpha2": "HK", "alpha3": "HKG" },
  "Hungary": { "alpha2": "HU", "alpha3": "HUN" },
  "Iceland": { "alpha2": "IS", "alpha3": "ISL" },
  "India": { "alpha2": "IN", "alpha3": "IND" },
  "Indonesia": { "alpha2": "ID", "alpha3": "IDN" },
  "Iran": { "alpha2": "IR", "alpha3": "IRN" },
  "Iraq": { "alpha2": "IQ", "alpha3": "IRQ" },
  "Ireland": { "alpha2": "IE", "alpha3": "IRL" },
  "Israel": { "alpha2": "IL", "alpha3": "ISR" },
  "Italy": { "alpha2": "IT", "alpha3": "ITA" },
  "Jamaica": { "alpha2": "JM", "alpha3": "JAM" },
  "Japan": { "alpha2": "JP", "alpha3": "JPN"},
  "Jersey": { "alpha2": "JE", "alpha3": "JEY" },
  "Jordan": { "alpha2": "JO", "alpha3": "JOR" },
  "Kazakhstan": { "alpha2": "KZ", "alpha3": "KAZ" },
  "Kenya": { "alpha2": "KE", "alpha3": "KEN" },
  "Kiribati": { "alpha2": "KI", "alpha3": "KIR" },
  "Korea (the Democratic People's Republic of)": { "alpha2": "KP", "alpha3": "PRK" },
  "Korea (the Republic of)": { "alpha2": "KR", "alpha3": "KOR" },
  "Kuwait": { "alpha2": "KW", "alpha3": "KWT" },
  "Kyrgyzstan": { "alpha2": "KG", "alpha3": "KGZ" },
  "Lao People's Democratic Republic (the)": { "alpha2": "LA", "alpha3": "LAO" },
  "Latvia": { "alpha2": "LV", "alpha3": "LVA" },
  "Lebanon": { "alpha2": "LB", "alpha3": "LBN" },
  "Lesotho": { "alpha2": "LS", "alpha3": "LSO" },
  "Liberia": { "alpha2": "LR", "alpha3": "LBR" },
  "Libya": { "alpha2": "LY", "alpha3": "LBY" },
  "Liechtenstein": { "alpha2": "LI", "alpha3": "LIE" },
  "Lithuania": { "alpha2": "LT", "alpha3": "LTU" },
  "Luxembourg": { "alpha2": "LU", "alpha3": "LUX" },
  "Macao": { "alpha2": "MO", "alpha3": "MAC" },
  "Madagascar": { "alpha2": "MG", "alpha3": "MDG" },
  "Malawi": { "alpha2": "MW", "alpha3": "MWI" },
  "Malaysia": { "alpha2": "MY", "alpha3": "MYS" },
  "Maldives": { "alpha2": "MV", "alpha3": "MDV" },
  "Mali": { "alpha2": "ML", "alpha3": "MLI" },
  "Malta": { "alpha2": "MT", "alpha3": "MLT" },
  "Marshall Islands (the)": { "alpha2": "MH", "alpha3": "MHL" },
  "Martinique": { "alpha2": "MQ", "alpha3": "MTQ" },
  "Mauritania": { "alpha2": "MR", "alpha3": "MRT" },
  "Mauritius": { "alpha2": "MU", "alpha3": "MUS" },
  "Mayotte": { "alpha2": "YT", "alpha3": "MYT" },
  "Mexico": { "alpha2": "MX", "alpha3": "MEX" },
  "Micronesia (Federated States of)": { "alpha2": "FM", "alpha3": "FSM" },
  "(the Republic of Moldova": { "alpha2": "MD", "alpha3": "MDA" },
  "Moldova": { "alpha2": "MD", "alpha3": "MDA" },
  "Monaco": { "alpha2": "MC", "alpha3": "MCO" },
  "Mongolia": { "alpha2": "MN", "alpha3": "MNG" },
  "Montenegro": { "alpha2": "ME", "alpha3": "MNE" },
  "Montserrat": { "alpha2": "MS", "alpha3": "MSR" },
  "Morocco": { "alpha2": "MA", "alpha3": "MAR" },
  "Mozambique": { "alpha2": "MZ", "alpha3": "MOZ" },
  "Myanmar": { "alpha2": "MM", "alpha3": "MMR" },
  "Namibia": { "alpha2": "NA", "alpha3": "NAM" },
  "Nauru": { "alpha2": "NR", "alpha3": "NRU" },
  "Nepal": { "alpha2": "NP", "alpha3": "NPL" },
  "The Netherlands": { "alpha2": "NL", "alpha3": "NLD" },
  "Netherlands": { "alpha2": "NL", "alpha3": "NLD" },
  "New Caledonia": { "alpha2": "NC", "alpha3": "NCL" },
  "New Zealand": { "alpha2": "NZ", "alpha3": "NZL" },
  "Nicaragua": { "alpha2": "NI", "alpha3": "NIC" },
  "Niger": { "alpha2": "NE", "alpha3": "NER" },
  "Nigeria": { "alpha2": "NG", "alpha3": "NGA" },
  "Niue": { "alpha2": "NU", "alpha3": "NIU" },
  "Norfolk Island": { "alpha2": "NF", "alpha3": "NFK" },
  "Northern Mariana Islands": { "alpha2": "MP", "alpha3": "MNP" },
  "The Northern Mariana Islands": { "alpha2": "MP", "alpha3": "MNP" },
  "Norway": { "alpha2": "NO", "alpha3": "NOR" },
  "Oman": { "alpha2": "OM", "alpha3": "OMN" },
  "Pakistan": { "alpha2": "PK", "alpha3": "PAK" },
  "Palau": { "alpha2": "PW", "alpha3": "PLW" },
  "Palestine, State of": { "alpha2": "PS", "alpha3": "PSE" },
  "Panama": { "alpha2": "PA", "alpha3": "PAN" },
  "Papua New Guinea": { "alpha2": "PG", "alpha3": "PNG" },
  "Paraguay": { "alpha2": "PY", "alpha3": "PRY" },
  "Peru": { "alpha2": "PE", "alpha3": "PER" },
  "Philippines": { "alpha2": "PH", "alpha3": "PHL" },
  "Pitcairn": { "alpha2": "PN", "alpha3": "PCN" },
  "Poland": { "alpha2": "PL", "alpha3": "POL" },
  "Portugal": { "alpha2": "PT", "alpha3": "PRT" },
  "Puerto Rico": { "alpha2": "PR", "alpha3": "PRI" },
  "Qatar": { "alpha2": "QA", "alpha3": "QAT" },
  "Republic of North Macedonia": { "alpha2": "MK", "alpha3": "MKD" },
  "Romania": { "alpha2": "RO", "alpha3": "ROU" },
  "Russian Federation": { "alpha2": "RU", "alpha3": "RUS" },
  "Russia": { "alpha2": "RU", "alpha3": "RUS" },
  "Rwanda": { "alpha2": "RW", "alpha3": "RWA" },
  "Réunion": { "alpha2": "RE", "alpha3": "REU" },
  "Saint Barthélemy": { "alpha2": "BL", "alpha3": "BLM" },
  "Saint Helena, Ascension and Tristan da Cunha": { "alpha2": "SH", "alpha3": "SHN" },
  "Saint Kitts and Nevis": { "alpha2": "KN", "alpha3": "KNA" },
  "Saint Lucia": { "alpha2": "LC", "alpha3": "LCA" },
  "Saint Martin (French part)": { "alpha2": "MF", "alpha3": "MAF" },
  "Saint Pierre and Miquelon": { "alpha2": "PM", "alpha3": "SPM" },
  "Saint Vincent and the Grenadines": { "alpha2": "VC", "alpha3": "VCT" },
  "Samoa": { "alpha2": "WS", "alpha3": "WSM" },
  "San Marino": { "alpha2": "SM", "alpha3": "SMR" },
  "Sao Tome and Principe": { "alpha2": "ST", "alpha3": "STP" },
  "Saudi Arabia": { "alpha2": "SA", "alpha3": "SAU" },
  "Senegal": { "alpha2": "SN", "alpha3": "SEN" },
  "Serbia": { "alpha2": "RS", "alpha3": "SRB" },
  "Seychelles": { "alpha2": "SC", "alpha3": "SYC" },
  "Sierra Leone": { "alpha2": "SL", "alpha3": "SLE" },
  "Singapore": { "alpha2": "SG", "alpha3": "SGP" },
  "Sint Maarten (Dutch part)": { "alpha2": "SX", "alpha3": "SXM" },
  "Slovakia": { "alpha2": "SK", "alpha3": "SVK" },
  "Slovenia": { "alpha2": "SI", "alpha3": "SVN" },
  "Solomon Islands": { "alpha2": "SB", "alpha3": "SLB" },
  "Somalia": { "alpha2": "SO", "alpha3": "SOM" },
  "South Africa": { "alpha2": "ZA", "alpha3": "ZAF" },
  "South Georgia and the South Sandwich Islands": { "alpha2": "GS", "alpha3": "SGS" },
  "South Sudan": { "alpha2": "SS", "alpha3": "SSD" },
  "Spain": { "alpha2": "ES", "alpha3": "ESP" },
  "Sri Lanka": { "alpha2": "LK", "alpha3": "LKA" },
  "Sudan": { "alpha2": "SD", "alpha3": "SDN" },
  "Suriname": { "alpha2": "SR", "alpha3": "SUR" },
  "Svalbard and Jan Mayen": { "alpha2": "SJ", "alpha3": "SJM" },
  "Sweden": { "alpha2": "SE", "alpha3": "SWE" },
  "Switzerland": { "alpha2": "CH", "alpha3": "CHE" },
  "Syrian Arab Republic": { "alpha2": "SY", "alpha3": "SYR" },
  "Taiwan (Province of China)": { "alpha2": "TW", "alpha3": "TWN" },
  "Tajikistan": { "alpha2": "TJ", "alpha3": "TJK" },
  "Tanzania, United Republic of": { "alpha2": "TZ", "alpha3": "TZA" },
  "Thailand": { "alpha2": "TH", "alpha3": "THA" },
  "Timor-Leste": { "alpha2": "TL", "alpha3": "TLS" },
  "Togo": { "alpha2": "TG", "alpha3": "TGO" },
  "Tokelau": { "alpha2": "TK", "alpha3": "TKL" },
  "Tonga": { "alpha2": "TO", "alpha3": "TON" },
  "Trinidad and Tobago": { "alpha2": "TT", "alpha3": "TTO" },
  "Tunisia": { "alpha2": "TN", "alpha3": "TUN" },
  "Turkey": { "alpha2": "TR", "alpha3": "TUR" },
  "Turkmenistan": { "alpha2": "TM", "alpha3": "TKM" },
  "Turks and Caicos Islands (the)": { "alpha2": "TC", "alpha3": "TCA" },
  "Tuvalu": { "alpha2": "TV", "alpha3": "TUV" },
  "Uganda": { "alpha2": "UG", "alpha3": "UGA" },
  "Ukraine": { "alpha2": "UA", "alpha3": "UKR" },
  "United Arab Emirates": { "alpha2": "AE", "alpha3": "ARE" },
  "United Kingdom of Great Britain and Northern Ireland (the)": { "alpha2": "GB", "alpha3": "GBR" },
  "United Kingdom": { "alpha2": "UK", "alpha3": "GBR" },
  "United States Minor Outlying Islands": { "alpha2": "UM", "alpha3": "UMI" },
  "United States of America": { "alpha2": "US", "alpha3": "USA" },
  "United States": { "alpha2": "US", "alpha3": "USA" },
  "Uruguay": { "alpha2": "UY", "alpha3": "URY" },
  "Uzbekistan": { "alpha2": "UZ", "alpha3": "UZB" },
  "Vanuatu": { "alpha2": "VU", "alpha3": "VUT" },
  "Venezuela": { "alpha2": "VE", "alpha3": "VEN" },
  "Viet Nam": { "alpha2": "VN", "alpha3": "VNM" },
  "Virgin Islands (British)": { "alpha2": "VG", "alpha3": "VGB" },
  "Virgin Islands (U.S.)": { "alpha2": "VI", "alpha3": "VIR" },
  "Wallis and Futuna": { "alpha2": "WF", "alpha3": "WLF" },
  "Western Sahara": { "alpha2": "EH", "alpha3": "ESH" },
  "Yemen": { "alpha2": "YE", "alpha3": "YEM" },
  "Zambia": { "alpha2": "ZM", "alpha3": "ZMB" },
  "Zimbabwe": { "alpha2": "ZW", "alpha3": "ZWE" },
  "Åland Islands": { "alpha2": "AX", "alpha3": "ALA" }
  // Add additional countries here
};

const input = (data.theCountryVariableInput || "").trim();
const transformationType = data.countryTransformationType;
const advancedConfig = data.advanceTransformationConfig;

// Helper function to determine the type of input
function determineInputType(value) {
  if (value.length === 2 && value.toUpperCase() === value) {
    return "alpha2";
  } else if (value.length === 3 && value.toUpperCase() === value) {
    return "alpha3";
  } else if (countryMapping[value]) {
    return "name";
  }
  return "invalid";
}

// Helper function to find country by code or name
function findCountry(value, type) {
  if (type === "name") {
    return countryMapping[value];
  } else if (type === "alpha2" || type === "alpha3") {
    for (var name in countryMapping) {
      if (countryMapping[name][type] === value) {
        return countryMapping[name];
      }
    }
  }
  return null;
}

// Main transformation logic
function transformCountry() {
  const inputType = determineInputType(input);
  const country = findCountry(input, inputType);

  if (!country) {
    return advancedConfig ? input : undefined;
  }

  if (transformationType === "Output is the 2 letter Alpha-2 Code") {
    return country.alpha2;
  } else if (transformationType === "Output is the three letter Alpha-3 Code of the country") {
    return country.alpha3;
  } else if (transformationType === "Output is the Full Name of the State") {
    for (var name in countryMapping) {
      if (countryMapping[name] === country) {
        return name;
      }
    }
  }

  // Fallback for unexpected configuration
  return advancedConfig ? input : undefined;
}

return transformCountry();


___TESTS___

scenarios: []


___NOTES___

Created on 1/25/2025, 6:38:16 PM


