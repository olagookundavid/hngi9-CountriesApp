[Country Information](#country-information)
- [Country Information](#country-information)
- [CodeBase and Plugins](#codebase-and-plugins)
- [Challenges faced](#challenges-faced)
- [Features to add](#features-to-add)
- [Link to App](#link-to-app)

## Country Information

A responsive mobile application displaying the different countries of the world and their respective necessary information.
The app supports switching between light an dark mode depending on the user with just a click of the button. Users are able to search for the country they are looking for from the text field (This brings up the desired result as requested by the user). If the search query isn't found all the countries load up.
It has localization which helps the user choose what language they want to view the app in. The filter button helps 
tailor user to match the continents and time zone of the countries they want found. Improtant details such as coat of arms logo, population, flag image, area etc. are also displayed on the details page


The app shows a well alphabetically arranged list of countries grouping them by first letter of their names. On clicking any of the countries, the 
user is directed to the screen showing the important details of the country such as 
## CodeBase and Plugins

In order to produce a great design interface and responsiveness, the following plugins were used:

- http: this was used to communicate with the endpoint and enabled me to GET the API json response which was needed by the project
- flutter_screenutil: Used for responsiveness to avoid rendering issues across all platforms of devices
- flutter_svg: this was used for displaying .svg images
- shared_preferences: used to store local data (in our case, the language chosen) so when the user logs back in language remains what was selected
- provider: used the provider state management technique to allow data to be accessible anywhere in the app
- carousel_slider: this was to create a smooth and beautiful widget sliding 
- modal_bottom_sheet: this was used to create a bottom sheet to hold supplementary screens while still on a main screen

The *font* used was 'Axiforma', as this was recommended to be used by the design lead. The lib folder was divided into 6 subfolders to separate
code concerns and allow for easy future additions/modifications.
It has a model class which holds the country_model class and has the required structure needed by the project.

The *constant* folder contains the following:
- consts.dart: contains the constant apiURL
- lang.dart: contains the localization class used to change languages
- styles.dart: contains the styling used in some parts of the application

The *network* folder contains the following important files:
- network_enum.dart: this has the enum for network error types too help in handling errors
- network_helper: this helps identifying and filtering the type of error from the correct response to aid error debugging
- network_service: this is where the apiUrl gets parsed and http.Get or other requestType (Put, Post) are called

The *provider* folder contains the countryProvider and themeNotifier provider, here the country data gotten from the network call 
is called so the data is accessible throughout the app.

The *repository* folder contains the countryRepository which gets the data finally and sorts it alphabetically

Thw *ui* folder contains the screens for both pages of the app

The *widgets* folder contains reusable parts of the entire app that could be used in other projects also


## Challenges faced

- The API didn't have all information required, so i had to find my way about showing the information
- I had some issues with the logic in implementing some parts (Search, filter). But solved them after giving it much thought and time.
- The sudden change in delivery time also affected me, but i was able ti finish just in time.


## Features to add

Given more time i would have loved to add the following:
- Make the app faster in loading data 
- Ability to filter by even more options
- Automatic dark mode support that takes the system theme mode, i only implemented the in App change of theme


## Link to App

- Appetize - [Link](https://appetize.io/app/udcp2ax6ahey24sofyvorb2ida)
- Google drive - [Link](https://drive.google.com/file/d/1pDAn0BrmCWhQe6AxheW_PdLdhItUIpyM/view?usp=share_link)