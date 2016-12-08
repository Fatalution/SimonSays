seq1            ; waiting 0.5 secs between showing the lights
LDA rightGreen
STR lights
;delay 0.5 secs, buzzer

LDA rightOrange
STR lights
;delay 0.5 seconds, buzzer

LDA rightRed
STR lights
;delay 0.5 seconds, buzzer


seq11          ; waiting 0.45 secs between showing the lights
LDA rightGreen
STR lights
;delay 0.45 secs, buzzer

LDA rightOrange
STR lights
;delay 0.45 seconds, buzzer

LDA rightRed
STR lights
;delay 0.45 seconds, buzzer

LDA rightRed
STR lights
;delay 0.45 seconds, buzzer

seq12          ; waiting 0.4 secs between showing the lights
LDA rightGreen
STR lights
;delay 0.4 secs, buzzer

LDA rightOrange
STR lights
;delay 0.4 seconds, buzzer

LDA rightRed
STR lights
;delay 0.4 seconds, buzzer

LDA rightRed
STR lights
;delay 0.4 seconds, buzzer

LDA leftOrange
STR lights
;delay 0.4 seconds, buzzer


seq13          ; waiting 0.35 secs between showing the lights
LDA rightGreen
STR lights
;delay 0.35 secs, buzzer

LDA rightOrange
STR lights
;delay 0.35 seconds, buzzer

LDA rightRed
STR lights
;delay 0.35 seconds, buzzer

LDA rightRed
STR lights
;delay 0.35 seconds, buzzer

LDA leftOrange
STR lights
;delay 0.35 seconds, buzzer

LDA rightGreen
STR lights
;delay 0.35 seconds, buzzer


; Defining colors for SimonSays
; Values to be written to &FFF (lights)

rightGreen         DEFW &0001
rightOrange        DEFW &0002
rightRed           DEFW &0004
leftGreen          DEFW &0008
leftOrange         DEFW &0010
leftRed            DEFW &0020

; Defining buttons for colors
; Values to be checked for buttons (KeyRows 1-4)

rightGreenButton   DEFW &0020        ;F (keyrow 2)
rightOrangeButton  DEFW &0020        ;D (keyrow 3)
rightRedButton     DEFW &0020        ;B (keyrow 4)
leftGreenButton    DEFW &0040        ;E (keyrow 2)
leftOrangeButton   DEFW &0040        ;C (keyrow 3)
leftRedButton      DEFW &0040        ;A (keyrow 4)

; trafficLights easy to access variable

lights             EQU &FFF

; KeyRows 1-4
keyrow2            EQU &FF0
keyrow3            EQU &FF1
keyrow4            EQU &FF2
