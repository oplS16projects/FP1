
## My Library: Plot: Graph Plotting

Cullin Lam 

# Narrative

  An idea I have for my final project is to create an analytical dashboard for the application I am writing for GUI 2. 
  I would like to create graphs and examine metrics of the data in the application's mongoDB database. It contains a          collection called Events which has the following schema: 
  
     {
       time_created: 1253599140969,
       time_expire: 1253599140969,
       title: "Childish Gambino TD",
       description: "Gambino is a mastermind come with me to go see him",
       owner: "kidculli",
       attendees: ['snguyen','andrylora'],
       cap:5,
       fill:2,
       event_type: "Concert",
       expired: false,
       loc: {
              address: "Atrium Rd, Wilmington MA",
              coord: ["74", "88"]
            }
     }

I would like to create a graph charting the total number of events created each day and observe the growth in usage of the 
application. I am also interested in looking at other metrics such as average duration of events. Naturally I chose the 
**Plot** library to plot the data.

  I began by looking at the Racket documentation for the library. It can be found [here][docs]. After taking a look at the docs I did some google searching and found some nice code examples of using the library. I did minor manipulations to the code to test the library and results of the plots. 
  
# Code Example

```Racket 
(parameterize
      ([plot-x-ticks      (time-ticks)]
       [plot-y-far-ticks  (ticks-scale (plot-y-ticks)
                                       (linear-scale 9/5 32))]
       [plot-y-label      "Temperature (°C)"]
       [plot-y-far-label  "Temperature (°F)"])
    (define data
      (list #(0 0) #(15 0.6) #(30 9.5) #(45 10.0) #(60 16.6)
            #(75 41.6) #(90 42.7) #(105 65.5) #(120 78.9)
            #(135 78.9) #(150 131.1) #(165 151.1) #(180 176.2)))
    (plot (list
           (function (λ (x) (/ (sqr x) 180)) 0 180
                     #:style 'long-dash #:color 3 #:label "Trend")
           (lines data #:color 2 #:width 2)
           (points data #:color 1 #:line-width 2 #:label "Measured"))
          #:y-min -25 #:x-label "Time"))
```
This code begins by configuring the plot with the ***parameterize*** function. As you can see the tick marks used for the x axis is set to time-ticks which is a time series. The y ticks is determined by the numbers passed to the ***linear scale*** function which sets up the tick intervals. A label is also set for the y axis. Next the plot data is defined as a list of coordinate pairs. The ***plot*** function is called on the data set. In addition a line is requested to be drawn to connect each point. Lastly a function is passed to create a trend line on the plot. More configuarations are set for the x-axis label and min value for the y axis. 

#Result 

![Image of Plot](https://github.com/kidculli/FP1/blob/master/example.png)

#Issues

I am currently trying to figure out how to set the x-axis as a series of dates. I would like to plot data over a length of time. 

<!-- Links -->
[docs]: https://docs.racket-lang.org/plot/

