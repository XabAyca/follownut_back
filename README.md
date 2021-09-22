# This repository is the back of our nutrition follow up app: [FollowNut'](https://follownut.herokuapp.com/)

## Description :
FollowNut' is a follow up application for nutritionists and their patients. 
There are already a few applications of this kind, certainly very complete, yet usually too complex and too expensive; making the user experience rather unpleasant. On the other hand, alternatives solutions consist in a combinations of free softwares, however time consuming due the increase of management required.
FollowNut' stands in the middle, i.e. a user friendly and affordable application. It offers the essential tools a dietetician needs, from appointment scheduling, health data input, to patients follow up; and allows the nutritionist spending more time helping his/her clients.


### Developpers:
- [Augustin](https://github.com/aauugguussttiinn)
- [Xabi](https://github.com/XabAyca)
- [Kleber](https://github.com/kleberkunha)
- [Mathieu](https://github.com/MathieuParadis)
- [Anthony](https://github.com/AnthonyLebro)


## FollowNut Frontend:
* [Git repository](https://github.com/XabAyca/follownut_front)
* [In production](https://follownut.herokuapp.com/)


## How to use it:
- In development, clone the repository on your machine, and run:
```
bundle install
rails db:create
rails db:migrate
rails db:seed
rails server
```
Then, access the app in your browser at http://localhost:3000/


 - In production:
Hereafter a few links to our production back end
* [Patients](https://follownut-back.herokuapp.com/api/v1/patients)
* [Nutritionists](https://follownut-back.herokuapp.com/api/v1/nutritionists)
* [Appointments](https://follownut-back.herokuapp.com/api/v1/appointments)
* [Logbooks](https://follownut-back.herokuapp.com/api/v1/logbooks)
* [Articles](https://follownut-back.herokuapp.com/api/v1/articles)
