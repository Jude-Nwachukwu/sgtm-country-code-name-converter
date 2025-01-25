# Server GTM Country ISO Code (Alpha-2 & Alpha-3 code) & Name Converter (SGTM)


## Description
The **sGTM Country ISO Code (Alpha-2 & Alpha-3 code) & Name Converter** is a Google Tag Manager (GTM) custom variable template that enables seamless conversion between country names, Alpha-2 codes, and Alpha-3 codes. The template includes advanced options for handling invalid or unrecognized input.

**Here is the custom template repository for the [web GTM custom template](https://github.com/Jude-Nwachukwu/gtm-country-code-name-converter)**


## Features
- Convert country names to Alpha-2 or Alpha-3 codes.
- Convert Alpha-2 or Alpha-3 codes to full country names.
- Handles invalid input with an optional fallback mechanism.
- Fully configurable via GTM's interface.

## Installation
1. Download the template file (`template.tpl`) from this repository.
2. Import it into Google Tag Manager:
   - Open GTM and navigate to **Templates**.
   - Click **New** under "Variable Templates" and select **Import**.
   - Upload the `template.tpl` file.
3. Configure the template fields and use it in your tags or variables.

## Usage
1. Input a country name, Alpha-2 code, or Alpha-3 code.
2. Select the desired transformation type:
   - Convert to Alpha-2 code
   - Convert to Alpha-3 code
   - Convert to full country name
3. Optionally enable advanced handling for invalid input.
4. Use the output as needed in your GTM container.

## Examples
Here are examples of inputs and their outputs based on different configurations:

| **Input Value**      | **Transformation Type**      | **Output**            |
|-----------------------|------------------------------|-----------------------|
| `United States`       | Convert to Alpha-2 Code      | `US`                 |
| `United States`       | Convert to Alpha-3 Code      | `USA`                |
| `US`                  | Convert to Full Country Name | `United States`      |
| `US`                  | Convert to Alpha-2 Code      | `US`                 |
| `USA`                 | Convert to Alpha-2 Code      | `US`                 |
| `USA`                 | Convert to Full Country Name | `United States`      |
| `XYZ` (invalid input) | Convert to Alpha-3 Code      | `undefined`          |
| `XYZ` (invalid input) | Convert to Alpha-3 Code *(Advanced option enabled)* | `XYZ` |

---

## License
This project is licensed under the [MIT License](LICENSE).



## Author
Created by Jude Nwachukwu Onyejekwe.

Created as part of the [Dumbdata.co](https://dumbdata.co) measurement resource hub to provide you with resources that help simplify measurement.

## Issues
If you encounter any issues or have suggestions, please open an issue in this repository.
