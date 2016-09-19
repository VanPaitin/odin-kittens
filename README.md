# Odin Kittens

[![CircleCI](https://circleci.com/gh/andela-mpitan/odin-kittens.svg?style=shield)](https://circleci.com/gh/andela-mpitan/odin-kittens)

This app is basically to try out api's with rails. The api that we will be consuming is the flickr photos api. The only method that we shall utilize is the one to fetch user photos giving their ___flicker id___.

## Basic Usage

Just visit the site [Here](http://odin-kittens.herokuapp.com). You will be presented with a basic form where you will be prompted to enter your ___flickr id___. Your ___flickr id___ can be found easily with websites such as [this](http://www.adamwlewis.com/articles/what-is-my-flickr-id). Enter your _id_, submit the form and you will be presented with your photos.

There are minor validations to check the sanctity of the _id_ you enter. Entering a blank id will not work so there is no point trying to bypass front-end checks. The app is very intuitive and tells you when anything goes wrong with appropriate flash messages. These flash messages are only present per one request. You might not want to see dormant flash messages in subsequent requests.

## Features

This app is a combination of the first and second projects of the **Building and Using Apis** chapter of the Odin Project. The reason why I combined it is because I considered there is no need to create an entirely new rails app for only this functionality. I therefore decided to simply extend  _Project 1_ by generating a new `StaticPagesController` and ensured it met the specifications of _Project 2_. You can explore the kittens part of the app by appending `/kittens` to the root url.

## Extras

This app was built with some deliberation. This can be evident in a comprehensive test suite and the integration with a ___continous integration___ service. This was because I wanted to ensure I took the most out of the opportunity to learn. I will like to thank the [__Odin Project__](http://www.theodinproject.com/) for the work that they are doing and the many lives they have impacted through this initiative.

You are free to contact me at may4realarsenal@yahoo.com
