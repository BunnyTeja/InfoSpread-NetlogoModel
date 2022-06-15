extensions [ csv ]
globals
[
turtles-list
sub-list
initial-track-list
  track-list
  sub-list1
initial-track-list1
  track-list1
  ticknolist
  ticknolist1
  inboundtrust
  outboundtrust
  temp-topic-id
]

turtles-own
[
agent-ID
age-group
geo
gender
agent-type
Related-IP; diss agent specific
temp-ip;
temp-in-ip; basic agent specific
temp-out-ip; basic agent specific
temp-in
agent-trying-to-send
Messages-allowed-per-clock-tick ; Limit to how many messages they can send in a virtual clock tick [value]



IdentitySignature; set of 0 or more Group memberships.
TriadStack;

nb-connections-in
nb-connections-out ;;should have in and out link connections
nb-group-affiliations?
nb-topics-read?
nb-interests?


stance?






connections?
in-trust ; represents row of an adjacency matrix. Turtle specific
out-trust

;  received-IP
received-IP-list
sent-IP-list
connected-to-diss-agent?


target-group   ; Ip specific
source    ; Ip specific
Endorsement-of-IP ; Ip specific
Amplification-of-IP ; Ip specific
censure ; Ip specific


group-prestige ;; group specific
group-id

topic-id ; Topic specific

IP-id;IP specific
Related-topic-id;IP specific

  ;track specific
initial-stance
initial-received-IPs
initial-sent-IPs


]

;;Reset the entire world
to clear-agents
clear-all
end


to create-nb-basic-agents
file-close-all ; close all open files

if not file-exists? "basic-agents-input.csv" [
user-message "No file 'basic-agents-input' exists."
stop
]

file-open "basic-agents-input.csv" ; open the file with the turtle data

; We'll read all the data in a single loop
  let i 0
while [ i < nb-basic-agents] [
; here the CSV extension grabs a single line and puts the read data in a list
let data csv:from-row file-read-line
; now we can use that list to create a turtle with the saved properties
create-turtles 1 [
  set size  item 0 data
  set agent-ID item 1 data
  let xcor1 random-xcor
  let ycor1 random-ycor
    if xcor1 <= 11 and xcor1 >= -11
    [set xcor xcor1]
    if ycor1 <= 11 and ycor1 >= -11
    [set ycor ycor1]
  set agent-type item 2 data
  ifelse random 100 < 50 [
      set IdentitySignature "group-1"
  ][
      set IdentitySignature "group-2"
  ]

  set shape "person"
]
    set i i + 1
]

file-close ;

end

to create-nb-physical-event-agents
file-close-all ; close all open files

if not file-exists? "physical-event-agent-input.csv" [
user-message "No file 'physical-event-agent-input.csv' exists."
stop
]

file-open "physical-event-agent-input.csv" ; open the file with the turtle data

; We'll read all the data in a single loop
  let i 0
while [ i < nb-physical-event-agents] [
; here the CSV extension grabs a single line and puts the read data in a list
let data csv:from-row file-read-line
; now we can use that list to create a turtle with the saved properties
create-turtles 1 [
  set size  item 0 data
  set agent-ID item 1 data
  let xcor1 random-xcor
  let ycor1 random-ycor
    if xcor1 <= 11 and xcor1 >= -11
    [set xcor xcor1]
    if ycor1 <= 11 and ycor1 >= -11
    [set ycor ycor1]
  set agent-type item 2 data
;        set xcor item 3 data
;        set ycor item 4 data
  set shape "person"
]
    set i i + 1

]


file-close ;
end

to create-nb-live-agents
file-close-all ; close all open files

if not file-exists? "live-agents-input.csv" [
user-message "No file 'live-agents-input.csv' exists."
stop
]

file-open "live-agents-input.csv" ; open the file with the turtle data

; We'll read all the data in a single loop
  let i 0
while [ i < nb-live-agents] [
; here the CSV extension grabs a single line and puts the read data in a list
let data csv:from-row file-read-line
; now we can use that list to create a turtle with the saved properties
create-turtles 1 [
  set size  item 0 data
  set agent-ID item 1 data
  let xcor1 random-xcor
  let ycor1 random-ycor
    if xcor1 <= 11 and xcor1 >= -11
    [set xcor xcor1]
    if ycor1 <= 11 and ycor1 >= -11
    [set ycor ycor1]
  set agent-type item 2 data
;        set xcor item 3 data
;        set ycor item 4 data
  set shape "person"
]
    set i i + 1
]



file-close ;
end

to create-nb-information-diss-agents
 file-close-all ; close all open files

if not file-exists? "information-diss-agents-input.csv" [
user-message "No file 'information-diss-agents-input.csv' exists."
stop
]

file-open "information-diss-agents-input.csv" ; open the file with the turtle data

; We'll read all the data in a single loop
  let i 0
while [ i < nb-information-diss-agents] [
; here the CSV extension grabs a single line and puts the read data in a list
let data csv:from-row file-read-line
; now we can use that list to create a turtle with the saved properties
create-turtles 1 [
  set size  item 0 data
  set agent-ID item 1 data
  let xcor1 random-xcor
  let ycor1 random-ycor
    if xcor1 <= 11 and xcor1 >= -11
    [set xcor xcor1]
    if ycor1 <= 11 and ycor1 >= -11
    [set ycor ycor1]
  set agent-type item 2 data
  set Related-IP item 3 data
  set temp-in-ip item 3 data
  set stance? item 4 data
  set topic-id item 5 data
;        set received-IP-list lput temp-in-ip received-IP-list
;        set xcor item 3 data
;        set ycor item 4 data
  set shape "person"
]
    set i i + 1

]

file-close ;


end

to create-nb-spokesperson-agents
 file-close-all ; close all open files

if not file-exists? "spokesperson-agents-input.csv" [
user-message "No file 'spokesperson-agents-input.csv' exists."
stop
]

file-open "spokesperson-agents-input.csv" ; open the file with the turtle data

; We'll read all the data in a single loop
  let i 0
while [ i < nb-spokesperson-agents] [
; here the CSV extension grabs a single line and puts the read data in a list
let data csv:from-row file-read-line
; now we can use that list to create a turtle with the saved properties
create-turtles 1 [
  set size  item 0 data
  set agent-ID item 1 data
  let xcor1 random-xcor
  let ycor1 random-ycor
    if xcor1 <= 11 and xcor1 >= -11
    [set xcor xcor1]
    if ycor1 <= 11 and ycor1 >= -11
    [set ycor ycor1]
  set agent-type item 2 data
;        set xcor item 3 data
;        set ycor item 4 data
  set shape "person"
]
    set i i + 1

]

file-close ;

end

to create-nb-flow-manipulator-agents
 file-close-all ; close all open files

if not file-exists? "flow-manipulator-agents-input.csv" [
user-message "No file 'flow-manipulator-agents-input.csv' exists."
stop
]

file-open "flow-manipulator-agents-input.csv" ; open the file with the turtle data

; We'll read all the data in a single loop
  let i 0
while [ i < nb-flow-manipulator-agents] [
; here the CSV extension grabs a single line and puts the read data in a list
let data csv:from-row file-read-line
; now we can use that list to create a turtle with the saved properties
create-turtles 1 [
  set size  item 0 data
  set agent-ID item 1 data
  let xcor1 random-xcor
  let ycor1 random-ycor
    if xcor1 <= 11 and xcor1 >= -11
    [set xcor xcor1]
    if ycor1 <= 11 and ycor1 >= -11
    [set ycor ycor1]
  set agent-type item 2 data
;        set xcor item 3 data
;        set ycor item 4 data
  set shape "person"
]
    set i i + 1

]

file-close ;

end

;; Create initial-people number of people.
;; Those that live on the left are squares; those on the right, circles.
to setup-agent

;;check total basic agents>=sum of all other agents..
if nb-basic-agents >=  nb-information-diss-agents + nb-physical-event-agents + nb-live-agents + nb-spokesperson-agents + nb-flow-manipulator-agents
[create-nb-basic-agents
  create-nb-information-diss-agents
  create-nb-spokesperson-agents
  create-nb-flow-manipulator-agents
  create-nb-live-agents
  create-nb-physical-event-agents
  assign-color
  clear-count

if In-links?
[make-network-in]
if out-links?
[make-network-out]
reset-ticks
]


end


to assign-color ;; turtle procedure

ask turtles[
(ifelse
     agent-type  = "physical-event-agent" [
       set color yellow
      ]
       agent-type  = "information-diss-agents"  [
       set color green
      ]
      agent-type  = "spokesperson-agents" [
       set color violet
      ]
      agent-type  = "flow-manipulator-agents" [
       set color pink
      ]
       agent-type  = "live-agents" [
       set color gray
      ]
    agent-type  = "IPs" [
       set color orange
      ]
      agent-type  = "topics" [
       set color white
      ]
       agent-type  = "groups" [
       set color brown
      ]

; elsecommands
[

       set color blue

])
]
end


to make-network-in

file-close-all ; close all open files

if not file-exists? "new_in.csv" [
  user-message "No file 'Example_in_adjacency_matrix.csv' exists."
  stop
]

file-open "new_in.csv" ; open the file with the links data

; We'll read all the data in a single loop
let i 0 ; initializing the row number of the adjacency matrix
let count-agents nb-basic-agents + nb-information-diss-agents + nb-physical-event-agents + nb-live-agents + nb-spokesperson-agents + nb-flow-manipulator-agents

while [ i < count-agents ] [
    ask turtle i [set in-trust []]
  ; here the CSV extension grabs a single line and puts the read data in a list
  let data csv:from-row file-read-line
  ; now we can use that list to create a turtle with the saved properties
  let j 0 ; cloumn number of the adjacency matrix
  let k 0

  repeat count-agents [ ; repeating hundred times for each row i bcz we have hundred columns
    let value item j data

      ask turtle i [
        set in-trust lput value in-trust
      ]
    if value = 1[
      ask turtle i [
;          set out-trust? lput value out-trust?
         if agent-type  = "information-diss-agents" and temp-in-ip != 0 [
        ifelse member? temp-in-ip received-IP-list [
        ][set received-IP-list lput temp-in-ip received-IP-list]
        ]
        create-link-with turtle j
        set k k + 1
        set nb-connections-in k
      ]
    ]
;   if value = 0[ask turtle i [set out-trust? lput value out-trust?]]
    set j j + 1
  ]
  set i i + 1
]

;   print k
file-close ; make sure to close the file
end

to make-network-out

file-close-all ; close all open files

if not file-exists? "Example_out_adjacency_matrix.csv" [
  user-message "No file 'Example_out_adjacency_matrix.csv' exists."
  stop
]

file-open "Example_out_adjacency_matrix.csv" ; open the file with the links data

; We'll read all the data in a single loop
let i 0 ; initializing the row number of the adjacency matrix

let count-agents nb-basic-agents + nb-information-diss-agents + nb-physical-event-agents + nb-live-agents + nb-spokesperson-agents + nb-flow-manipulator-agents
while [ i < count-agents ] [
    ask turtle i [set out-trust[]]
  ; here the CSV extension grabs a single line and puts the read data in a list
  let data csv:from-row file-read-line
  ; now we can use that list to create a turtle with the saved properties
  let j 0 ; cloumn number of the adjacency matrix
  let k 0
  repeat count-agents [ ; repeating hundred times for each row i bcz we have hundred columns
    let value item j data
      ask turtle i [
        set out-trust lput value out-trust
      ]

    if value = 1[
     ask turtle i [
        create-link-with turtle j
        set k k + 1
        set nb-connections-out k
      ]
    ]
    set j j + 1
  ]
  set i i + 1
]

;   print k
file-close ; make sure to close the file
end

to setup-topic

 file-close-all ; close all open files

if not file-exists? "topics-input.csv" [
user-message "No file 'topics-input.csv' exists."
stop
]

file-open "topics-input.csv" ; open the file with the turtle data

; We'll read all the data in a single loop
  let i 0
while [ i < total-initial-topics] [
; here the CSV extension grabs a single line and puts the read data in a list
let data csv:from-row file-read-line
; now we can use that list to create a turtle with the saved properties
create-turtles 1 [
  set size  item 0 data
  set agent-ID item 1 data
    let xcor1 random-xcor
    if xcor1 <= 11 and xcor1 >= -11
    [set xcor xcor1]
;      set xcor random-xcor
    set ycor 12
  set agent-type item 2 data
  set topic-id item 3 data

;        set xcor item 3 data
;        set ycor item 4 data
  set shape "square"
]
    set i i + 1
;    print i
;    set  nb-basic-agents nb-basic-agents - 1
]
assign-color

file-close ;


end




to setup-group

 file-close-all ; close all open files

if not file-exists? "groups-input.csv" [
user-message "No file 'groups-input.csv' exists."
stop
]

file-open "groups-input.csv" ; open the file with the turtle data

; We'll read all the data in a single loop
  let i 0
while [ i < total-initial-groups] [
; here the CSV extension grabs a single line and puts the read data in a list
let data csv:from-row file-read-line
; now we can use that list to create a turtle with the saved properties
create-turtles 1 [
  set size  item 0 data
  set agent-ID item 1 data
    let xcor1 random-xcor
    if xcor1 <= 11 and xcor1 >= -11
    [set xcor xcor1]
;      set xcor random-xcor
    set ycor -12
  set agent-type item 2 data
  set group-id item 3 data
;        set xcor item 3 data
;        set ycor item 4 data
  set shape "square"
]
    set i i + 1
;    print i
]
assign-color
file-close ;

end

to setup-IP

 file-close-all ; close all open files

if not file-exists? "IPs-input.csv" [
user-message "No file 'IPs-input.csv' exists."
stop
]

file-open "IPs-input.csv" ; open the file with the turtle data

; We'll read all the data in a single loop
  let i 0
while [ i < total-initial-IPs] [
; here the CSV extension grabs a single line and puts the read data in a list
let data csv:from-row file-read-line
; now we can use that list to create a turtle with the saved properties
create-turtles 1 [
  set size  item 0 data
  set agent-ID item 1 data
    set xcor -12
    let ycor1 random-xcor
    if ycor1 <= 11 and ycor1 >= -11
    [set ycor ycor1]
;      set ycor random-ycor
  set agent-type item 2 data
  set Related-topic-id item 3 data
  set IP-id item 4 data
  set shape "square"
]
    set i i + 1
;    print i
;    set  nb-basic-agents nb-basic-agents - 1
]
assign-color


end

;;;
;;; GO PROCEDURES
;;;


to go
let tick-count  0

repeat 20[
  write-to-file
  send
  read
  set tick-count tick-count + 1
  tick
  trust-log
]


end



to  trust-log
let t ticks

let i 0

    set track-list1 []






let count-agents nb-basic-agents + nb-information-diss-agents + nb-physical-event-agents + nb-live-agents + nb-spokesperson-agents + nb-flow-manipulator-agents
while [ i < count-agents ] [
     ask turtle i [
    ]
  let j 0 ; cloumn number of the adjacency matrix
  let k 0
  repeat count-agents [
      ask turtle i[ set inboundtrust item j in-trust
     set outboundtrust item j out-trust ]

      let firstatrr1  word i j
      set initial-track-list1 []
      set initial-track-list1 lput firstatrr1 initial-track-list1
      set initial-track-list1 lput inboundtrust initial-track-list1
      set initial-track-list1 lput outboundtrust initial-track-list1

      set track-list1 lput initial-track-list1 track-list1

      set sub-list1 [ ]
      set track-list1 lput sub-list1 track-list1


      set j j + 1
    ]
    set i i + 1
  ]
;  csv:to-file "track-log.csv" track-list1


end

to write-to-file
  let i ticks
  ;print i

  print i

  if i = 0[
    print i
    set track-list []

    set initial-track-list ["agent-type" "agent-id" "stance?" "received-IP-list" "sent-IP-list" "IdentitySignature" "topic"]
    print(initial-track-list)
    set track-list lput initial-track-list track-list


   foreach sort turtles [ t ->
    ask t [
        set sub-list [ (list agent-type agent-id stance? received-IP-list sent-IP-list IdentitySignature topic-id)] of t
     set track-list lput sub-list track-list
    ]
  ]
   print(track-list)
    ;csv:to-file "track-init.csv" track-list
  ]


  if i  != 0[
  print i
    set initial-track-list []
    set ticknolist []
    let tickno word "At tick " i
    set ticknolist lput tickno ticknolist
    let idatrr "id of turtle"
    let firstatrr  word "stance at tick " i
    let secondatrr  word "received-IP-list at tick " i
    let thirdatrr  word "sent-IP-list at tick " i
    let fourthatrr  word "topic at tick " i

    set initial-track-list lput idatrr initial-track-list
    set initial-track-list lput firstatrr initial-track-list
    set initial-track-list lput secondatrr initial-track-list
    set initial-track-list lput thirdatrr initial-track-list
    set initial-track-list lput fourthatrr initial-track-list

    set track-list lput ticknolist track-list
    set track-list lput initial-track-list track-list

      print(track-list)
     foreach sort turtles [ t ->
    ask t [
;        set track-list lput initial-track-list track-list
        set sub-list [(list agent-id stance? received-IP-list sent-IP-list topic-id )] of t
     set track-list lput sub-list track-list
    ]
  ]

  ]
  csv:to-file "track-agents-at-each-tick-with-3-basicagents.csv" track-list

end


to send

file-close-all ; close all open files

if not file-exists? "Example_out_adjacency_matrix.csv" [
  user-message "No file 'Example_out_adjacency_matrix.csv' exists."
  stop
]

file-open "Example_out_adjacency_matrix.csv" ; open the file with the links data

; We'll read all the data in a single loop
let i 0 ; initializing the row number of the adjacency matrix
let count-agents nb-basic-agents + nb-information-diss-agents + nb-physical-event-agents + nb-live-agents + nb-spokesperson-agents + nb-flow-manipulator-agents
let x 0

while [ i < count-agents ] [
     ask turtle i [
      set out-trust[]]

  ; here the CSV extension grabs a single line and puts the read data in a list
  let data csv:from-row file-read-line
  ; now we can use that list to create a turtle with the saved properties
  let j 0 ; cloumn number of the adjacency matrix
  let k 0
  repeat count-agents [ ; repeating hundred times for each row i bcz we have hundred columns
    let value item j data
         ask turtle i [
        set out-trust lput value out-trust
      ]

    if value = 1[
     ask turtle i [
        set k k + 1
        set nb-connections-out k
          if length(Received-IP-list) != 0 and random 100 <= average-IP-sharing-tendency
        [
           let temp-in-ip-test temp-in-ip
            ask turtle j[
              if agent-type =  "basic-agents" ;and random 100 <= average-IP-reading-tendency
           [
              let test-id 0
              ask turtle i[set temp-out-ip temp-in-ip-test
              set test-id agent-id
              ]
          set agent-trying-to-send test-id
          set temp-in-ip temp-in-ip-test
                ]
          ]
        ]
      ]
    ]
    set j j + 1
  ]
  set i i + 1
]

;   print k
file-close ; make sure to close the file
end





to read
file-close-all ; close all open files

if not file-exists? "Example_in_adjacency_matrix.csv" [
  user-message "No file 'Example_in_adjacency_matrix.csv' exists."
  stop
]

file-open "Example_in_adjacency_matrix.csv" ; open the file with the links data

; We'll read all the data in a single loop
let i 0 ; initializing the row number of the adjacency matrix
let count-agents nb-basic-agents + nb-information-diss-agents + nb-physical-event-agents + nb-live-agents + nb-spokesperson-agents + nb-flow-manipulator-agents
let x 0


while [ i < count-agents ] [

  ; here the CSV extension grabs a single line and puts the read data in a list
  let data csv:from-row file-read-line
  ; now we can use that list to create a turtle with the saved properties
  let j 0 ; cloumn number of the adjacency matrix
  let k 0
  repeat count-agents [ ; repeating hundred times for each row i bcz we have hundred columns
    let value item j data
    if value = 1[
      ask turtle i [
        if agent-type = "basic-agents" and temp-in-ip != 0;random 100 <= average-IP-sharing-tendency
        [

            let test-ids agent-trying-to-send
         ask turtle j[
              set temp-topic-id[]
              if topic-id != 0
              [set temp-topic-id topic-id]
              if turtle i != turtle j[
              ;;check if it is connected through the in-links also
              if test-ids = agent-id

           [
                  let stance stance?
                ask turtle i [
             if random 100 <= average-IP-reading-tendency[
                      let temp-in-ip-test temp-in-ip

             set stance?  stance
             set color red



             set topic-id temp-topic-id






           ifelse member? temp-in-ip-test received-IP-list [
][
    set received-IP-list lput temp-in-ip-test received-IP-list
]

          ask turtle j[
                     ifelse member? temp-in-ip-test sent-ip-list [
  ][

      set sent-ip-list lput temp-in-ip-test sent-ip-list
                    ]]

              ]
              ]
              ]
            ]
          ]
        ]

      ]

    ]
    set j j + 1
  ]
  set i i + 1
]


;   print k
file-close ; make sure to close the file
;    tick
;  ]
end





to clear-count
ask turtles[
 set sent-IP-list []
set received-IP-list []
]
end




; Copyright 2022.
; See Info tab for full copyright and license.
@#$#@#$#@
GRAPHICS-WINDOW
668
15
1246
594
-1
-1
22.8
1
10
1
1
1
0
0
0
1
-12
12
-12
12
0
0
1
ticks
30.0

BUTTON
380
205
495
245
setup-agents
setup-agent
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
18
22
287
55
nb-basic-agents
nb-basic-agents
1
100
3.0
1
1
NIL
HORIZONTAL

SLIDER
315
22
584
55
nb-spokesperson-agents
nb-spokesperson-agents
0
5
1.0
1
1
NIL
HORIZONTAL

PLOT
365
455
628
598
Populations
hours
# people
0.0
10.0
0.0
350.0
true
true
"" ""
PENS
"Misinformed" 1.0 0 -2674135 true "" "plot count turtles with [ misinformed? ]"
"Informed" 1.0 0 -10899396 true "" "plot count turtles with [ not misinformed? ]"

SLIDER
315
95
584
128
nb-live-agents
nb-live-agents
0
10
0.0
1
1
NIL
HORIZONTAL

SLIDER
315
134
487
167
total-initial-groups
total-initial-groups
1
2
2.0
1
1
NIL
HORIZONTAL

SLIDER
315
58
584
91
nb-flow-manipulator-agents
nb-flow-manipulator-agents
0
5
0.0
1
1
NIL
HORIZONTAL

PLOT
11
452
344
597
Misinformed and Informed Rates
hours
rate
0.0
10.0
0.0
0.1
true
true
"" ""
PENS
"Infection Rate" 1.0 0 -2674135 true "" "plot (beta-n * nb-misinformed-previous)"
"Recovery Rate" 1.0 0 -10899396 true "" "plot (gamma * nb-misinformed-previous)"

SLIDER
18
59
286
92
nb-Information-diss-agents
nb-Information-diss-agents
1
10
2.0
1
1
NIL
HORIZONTAL

SLIDER
18
97
285
130
nb-physical-event-agents
nb-physical-event-agents
0
5
0.0
1
1
NIL
HORIZONTAL

SWITCH
262
245
365
278
out-links?
out-links?
1
1
-1000

SLIDER
15
199
247
232
average-IP-sharing-tendency
average-IP-sharing-tendency
0
100
50.0
10
1
NIL
HORIZONTAL

SLIDER
14
240
246
273
average-IP-reading-tendency
average-IP-reading-tendency
0
100
50.0
5
1
NIL
HORIZONTAL

SLIDER
18
136
286
169
total-initial-topics
total-initial-topics
1
2
2.0
1
1
NIL
HORIZONTAL

PLOT
11
297
343
441
Cumulative misinformed and Recovered
hours
% total pop.
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"% misinformed" 1.0 0 -2674135 true "" "plot (((count turtles with [ cured? ] + count turtles with [ misinformed? ]) / initial-people) * 100)"
"% informed" 1.0 0 -10899396 true "" "plot ((count turtles with [ cured? ] / initial-people) * 100)"

BUTTON
380
245
495
285
setup-topics
setup-topic
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
495
245
620
285
setup-groups
setup-group
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
495
205
620
245
setup-IPs
setup-IP
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
490
135
662
168
total-initial-IPs
total-initial-IPs
0
2
2.0
1
1
NIL
HORIZONTAL

BUTTON
468
288
529
323
reset
clear-agents
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SWITCH
262
205
367
238
In-links?
In-links?
0
1
-1000

BUTTON
470
350
533
383
NIL
go\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

@#$#@#$#@
## WHAT IS IT?

In this model we are showing how the information spread in happening among the agents by creating different types of turtles like topics, groups, IPs and different types of agents. And showing how an IP of a pirticular topic is tranfered from a dissmnent agent to to the basic agents that it's connected to and how it is taken forward from the connections of those basic agents. And the stance on the topic is taken by the proportion of agents that we specify and we wait until every agent gets a chance to read the topic.



Overall, this model helps users:


## HOW IT WORKS


There are six types of agents in the system. Basic agents are represented in blue color, physical event agents are represented in yellow color, information disseminent agents are represented in yellow color, spokesperson-agents in violet, flow-manipulator-agents in pink, live-agents in gray color resepectively and the connections between these agents are made by using an adjacency matrix that denotes the links btween the agents.

We also represent topics, groups and IPs in the square shape in white, brown and orange colors respectively at the borders of the world. 

When the Info diss agent gets information about a topic from an IP it sends it to the connected basic agents(represented in blue color) based on it's sharing tendency and based on the reading tendency of the basic agent it takes a stance on the topic and changes it's color to white and it continues the sharing of this IP to other connected basic agents and when they have taken a stance their color will be turned to red. 


## HOW TO USE IT

The setup-agent button creates all the 6 types of agents with number that we specify using the sliders in different colors.

The setup-IP button creates the square shaped turtles with number that we specify using the slider.
The setup-topics button creates the square shaped turtles with number that we specify using the slider.
The setup-groups button creates the square shaped turtles with number that we specify using the slider.


What follows is a summary of the sliders in the model.

nb-basic-agents (initialized to vary between 5 - 100): The total number of basic agents the simulation begins with.
nb-spokesperson-agents (0 - 5): The total number of spokesperson agents the simulation begins with.
nb-Information-diss-agents(1 - 10): The total number of Information-diss agents the simulation begins with.
nb-flow-manipulator-agents (0 - 5): The total number of flow-manipulator agents the simulation begins with.
nb-physical-event-agents(0 - 5): The total number of physical-event agents the simulation begins with.
nb-live-agents(0 - 10): The total number of live agents the simulation begins with.

total-initial-groups(0 - 2): The total number of groups the simulation begins with.
total-initial-topics(0 - 2): The total number of topics the simulation begins with.
total-initial-IPs(0 - 2): The total number of IPs the simulation begins with.

average-IP-sharing-tendency(0 - 100): Probability of an agent that he can share the IP to other connected agent
average-IP-reading-tendency(0 - 100): Probability of an agent that he can read the IP to take a stanec


In addition, there are two switches:

IN-links - Uses the 
Out-links


Reset

GO

A number of graphs are also plotted in this model.

CUMULATIVE INFECTED AND RECOVERED: This plots the total percentage of individuals who have ever been infected or recovered.
POPULATIONS: This plots the number of people with or without the disease.
INFECTION AND RECOVERY RATES: This plots the estimated rates at which the disease is spreading. BetaN is the rate at which the cumulative infected changes, and Gamma rate at which the cumulative recovered changes.
R_0: This is an estimate of the reproduction number.

## THINGS TO NOTICE

As with many epidemiological models, the number of people becoming infected over time, in the event of an epidemic, traces out an "S-curve." It is called an S-curve because it is shaped like a sideways S. By changing the values of the parameters using the slider, try to see what kinds of changes make the S curve stretch or shrink.

Whenever there's a spread of the disease that reaches most of the population, we say that there was an epidemic. The reproduction number serves as an indicator for the likeliness of an epidemic to occur, if it is greater than 1. If it is smaller than 1, then it is likely that the disease spread will stop short, and we call this an endemic.

Notice how the introduction of various human behaviors, such as travel, inoculation, isolation and quarantine, help constrain the spread of the disease, and what changes that brings to the population level in terms of rate and time taken of disease spread, as well as the population affected.

## THINGS TO TRY

Compare this model with the epiDEM basic model. Do the added complexities significantly change the disease spread? What kinds of changes bring about interesting outcomes?

Notice the difference in dynamics when the travel chooser is on versus off. What happens to the population and the disease spread in both cases?

Does the disease spread change when the link chooser is on? What about when you increase the number of ambulances? What happens to the number of people infected?

Based on this model, what are some strategies or preventive measures that you think are important to undertake on the onset of a disease outbreak? Are there some that are more effective than others? Why might that be? What combinations work well? Are there some measures that seem redundant?

## EXTENDING THE MODEL

Are there other ways to change the behavior of the people once they are infected? Try to think about how you would introduce such a variable.

In this model, we introduce an option for travel, so that there is mixing between two otherwise closed populations. What happens when you introduce births and deaths to each region or just one?

What would happen when the virus mutates? How will that change the population dynamic and disease spread?

What would happen if the population had a mix of healthy and less healthy people, so as to have differing levels of susceptibility?

## NETLOGO FEATURES

Notice that each agent pulls from a truncated normal distribution, centered around the AVERAGE-RECOVERY-TIME set by the user, to determine its recovery-time. This is to account for the variation in genetic differences and the immune system functions of individuals. Similarly, an individual's isolation-tendency and hospital-going-tendency are pulled from truncated normal distributions centered around AVERAGE-ISOLATION-TENDENCY and AVERAGE-HOSPITAL-GOING-TENDENCY respectively.

Notice that R_0 calculated in this model is a numerical estimate to the analytic R_0. In the special case of one infective introduced to a wholly susceptible population (i.e., the Kermack-McKendrick assumptions), the numerical estimations of R_0 are very close to the analytic values. With added complexity in the models, such as the introduction of travel and control measures, the analytic R_0 becomes harder to derive. The numerical estimation is therefore a crude measure of what the actual R_0 might be.

In addition to travel and control measures, notice that this model introduces links amongst individuals and the individual's mobility, which also affect the dynamics of the disease transmission.

## RELATED MODELS

epiDEM basic, HIV, Virus and Virus on a Network are related models.

## HOW TO CITE

If you mention this model or the NetLogo software in a publication, we ask that you include the citations below.

For the model itself:

* Yang, C. and Wilensky, U. (2011).  NetLogo epiDEM Travel and Control model.  http://ccl.northwestern.edu/netlogo/models/epiDEMTravelandControl.  Center for Connected Learning and Computer-Based Modeling, Northwestern University, Evanston, IL.

Please cite the NetLogo software as:

* Wilensky, U. (1999). NetLogo. http://ccl.northwestern.edu/netlogo/. Center for Connected Learning and Computer-Based Modeling, Northwestern University, Evanston, IL.

## COPYRIGHT AND LICENSE

Copyright 2011 Uri Wilensky.

![CC BY-NC-SA 3.0](http://ccl.northwestern.edu/images/creativecommons/byncsa.png)

This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 License.  To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.

Commercial licenses are also available. To inquire about commercial licenses, please contact Uri Wilensky at uri@northwestern.edu.

<!-- 2011 Cite: Yang, C. -->
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

person lefty
false
0
Circle -7500403 true true 170 5 80
Polygon -7500403 true true 165 90 180 195 150 285 165 300 195 300 210 225 225 300 255 300 270 285 240 195 255 90
Rectangle -7500403 true true 187 79 232 94
Polygon -7500403 true true 255 90 300 150 285 180 225 105
Polygon -7500403 true true 165 90 120 150 135 180 195 105

person righty
false
0
Circle -7500403 true true 50 5 80
Polygon -7500403 true true 45 90 60 195 30 285 45 300 75 300 90 225 105 300 135 300 150 285 120 195 135 90
Rectangle -7500403 true true 67 79 112 94
Polygon -7500403 true true 135 90 180 150 165 180 105 105
Polygon -7500403 true true 45 90 0 150 15 180 75 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.2.2
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
1
@#$#@#$#@
