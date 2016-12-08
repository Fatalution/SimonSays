;Simple Simon Says game by Ivan Romanchuk
;press the A-F buttons according to the lights showed to you


ORG 0
;--------------------------------------------------------------
;--------------------------------------------------------------
;SEQUENCE 0, 0.5, intro
;--------------------------------------------------------------
;--------------------------------------------------------------
seq0           ; waiting 0.5 secs between showing the lights

;bargraph
LDA level_one
STA bargraph

LDA rightGreen
STA lights
LDA rGSoundhalf;delay 0.5 secs, buzzer
STA buzzer
wait
LDA buzzerbusy
JNE wait

;--------------------------------------------------------------
LDA rightOrange
STA lights
LDA rOSoundhalf;delay 0.5 secs, buzzer
STA buzzer
wait1
LDA buzzerbusy
JNE wait1
;--------------------------------------------------------------
LDA rightRed
STA lights
LDA rRSoundhalf;delay 0.5 secs, buzzer
STA buzzer
wait2
LDA buzzerbusy
JNE wait2
;--------------------------------------------------------------
;end
LDA noColor
STA lights
;--------------------------------------------------------------
;--------------------------------------------------------------
seq1key1
LDA keyrow2
SUB rightGreenButton
JNE seq1key1

;light up the corresponding light
LDA rG
STA lights

seq1key2
LDA keyrow3
SUB rightOrangeButton
JNE seq1key2

;light up the corresponding light
LDA rGO
STA lights

seq1key3
LDA keyrow4
SUB rightRedButton
JNE seq1key3

;light up the corresponding light
LDA rR
STA lights
;--------------------------------------------------------------
LDA rRSoundhalf
STA buzzer
hold
LDA buzzerbusy
JNE hold
;--------------------------------------------------------------
;SEQUENCE 1, 0.4
;--------------------------------------------------------------
;--------------------------------------------------------------
seq1          ; waiting 0.4 secs between showing the lights
;bargraph
LDA level_two
STA bargraph

LDA rightGreen
STA lights
LDA rGSoundZeroFour;delay 0.4 secs, buzzer
STA buzzer
wait3
LDA buzzerbusy
JNE wait3
;--------------------------------------------------------------
LDA rightOrange
STA lights
LDA rOSoundZeroFour;delay 0.4 secs, buzzer
STA buzzer
wait4
LDA buzzerbusy
JNE wait4
;--------------------------------------------------------------
LDA rightRed
STA lights
LDA rRSoundZeroFour;delay 0.4 secs, buzzer
STA buzzer
wait5
LDA buzzerbusy
JNE wait5
;--------------------------------------------------------------
LDA leftRed
STA lights
LDA lRSoundZeroFour;delay 0.4 secs, buzzer
STA buzzer
wait6
LDA buzzerbusy
JNE wait6
;--------------------------------------------------------------
;end
LDA noColor
STA lights
;--------------------------------------------------------------
;--------------------------------------------------------------
seq1key4
LDA keyrow2
SUB rightGreenButton
JNE seq1key4

;light up the corresponding light
LDA rG
STA lights

seq1key5
LDA keyrow3
SUB rightOrangeButton
JNE seq1key5

;light up the corresponding light
LDA rGO
STA lights

seq1key6
LDA keyrow4
SUB rightRedButton
JNE seq1key6

;light up the corresponding light
LDA rGOR
STA lights

seq1key7
LDA keyrow4
SUB leftRedButton
JNE seq1key7

;light up the corresponding light
LDA lR
STA lights
;--------------------------------------------------------------
LDA lRSoundZeroFour
STA buzzer
hold1
LDA buzzerbusy
JNE hold1
;--------------------------------------------------------------
;SEQUENCE 2, 0.3
;--------------------------------------------------------------
;--------------------------------------------------------------

seq2          ; waiting 0.3 secs between showing the lights
;bargraph
LDA level_three
STA bargraph

LDA rightGreen
STA lights
LDA rGSoundZeroTwo;delay 0.3 secs, buzzer
STA buzzer
wait7
LDA buzzerbusy
JNE wait7
;--------------------------------------------------------------
LDA rightOrange
STA lights
LDA rOSoundZeroThree;delay 0.3 secs, buzzer
STA buzzer
wait8
LDA buzzerbusy
JNE wait8
;--------------------------------------------------------------
LDA rightRed
STA lights
LDA rRSoundZeroThree;delay 0.3 secs, buzzer
STA buzzer
wait9
LDA buzzerbusy
JNE wait9
;--------------------------------------------------------------
LDA leftRed
STA lights
LDA lRSoundZeroThree;delay 0.3 secs, buzzer
STA buzzer
wait10
LDA buzzerbusy
JNE wait10
;--------------------------------------------------------------
LDA leftOrange
STA lights
LDA lOSoundZeroThree;delay 0.3 secs, buzzer
STA buzzer
wait11
LDA buzzerbusy
JNE wait11
;--------------------------------------------------------------
;end
LDA noColor
STA lights
;--------------------------------------------------------------
;--------------------------------------------------------------
seq1key8
LDA keyrow2
SUB rightGreenButton
JNE seq1key8

seq1key9
LDA keyrow3
SUB rightOrangeButton
JNE seq1key9

seq1key10
LDA keyrow4
SUB rightRedButton
JNE seq1key10

seq1key11
LDA keyrow4
SUB leftRedButton
JNE seq1key11

seq1key12
LDA keyrow3
SUB leftOrangeButton
JNE seq1key12
;--------------------------------------------------------------
LDA lOSoundZeroThree
STA buzzer
hold2
LDA buzzerbusy
JNE hold2
;--------------------------------------------------------------
;SEQUENCE 3, 0.2, 8 LIGHTS!!!!
;--------------------------------------------------------------
;--------------------------------------------------------------

seq3          ; waiting 0.2 secs between showing the lights
;1
LDA rightGreen
STA lights
LDA rGSoundZeroTwo;delay 0.2 secs, buzzer
STA buzzer
wait12
LDA buzzerbusy
JNE wait12
;--------------------------------------------------------------
;2
LDA rightOrange
STA lights
LDA rOSoundZeroTwo;delay 0.2 secs, buzzer
STA buzzer
wait13
LDA buzzerbusy
JNE wait13
;--------------------------------------------------------------
;3
LDA rightRed
STA lights
LDA rRSoundZeroTwo;delay 0.2 secs, buzzer
STA buzzer
wait14
LDA buzzerbusy
JNE wait14
;--------------------------------------------------------------
;4
LDA leftRed
STA lights
LDA lRSoundZeroTwo;delay 0.2 secs, buzzer
STA buzzer
wait15
LDA buzzerbusy
JNE wait15
;--------------------------------------------------------------
;5
LDA leftOrange
STA lights
LDA lOSoundZeroTwo;delay 0.2 secs, buzzer
STA buzzer
wait16
LDA buzzerbusy
JNE wait16
;--------------------------------------------------------------
;6
LDA leftRed
STA lights
LDA lRSoundZeroTwo;delay 0.2 secs, buzzer
STA buzzer
wait17
LDA buzzerbusy
JNE wait17
;--------------------------------------------------------------
;7
LDA leftGreen
STA lights
LDA lGSoundZeroTwo;delay 0.2 secs, buzzer
STA buzzer
wait18
LDA buzzerbusy
JNE wait18
;--------------------------------------------------------------
;8
LDA rightRed
STA lights
LDA rRSoundZeroTwo;delay 0.2 secs, buzzer
STA buzzer
wait19
LDA buzzerbusy
JNE wait19
;--------------------------------------------------------------
;end
LDA noColor
STA lights
;--------------------------------------------------------------
;--------------------------------------------------------------
seq1key13
LDA keyrow2
SUB rightGreenButton
JNE seq1key13

seq1key14
LDA keyrow3
SUB rightOrangeButton
JNE seq1key14

seq1key15
LDA keyrow4
SUB rightRedButton
JNE seq1key15

seq1key16
LDA keyrow4
SUB leftRedButton
JNE seq1key16

seq1key17
LDA keyrow3
SUB leftOrangeButton
JNE seq1key17

seq1key18
LDA keyrow4
SUB leftRedButton
JNE seq1key18

seq1key19
LDA keyrow2
SUB leftGreenButton
JNE seq1key19

seq1key20
LDA keyrow4
SUB rightRedButton
JNE seq1key20

;--------------------------------------------------------------
;--------------------------------------------------------------

;--------------------------------------------------------------
;--------------------------------------------------------------

; Defining colors for SimonSays
; Values to be written to &FFF (lights)

rightGreen         DEFW &0001
rightOrange        DEFW &0002
rightRed           DEFW &0004
leftGreen          DEFW &0008
leftOrange         DEFW &0010
leftRed            DEFW &0020
noColor            DEFW &0000

; Defining buttons for colors
; Values to be checked for buttons (KeyRows 1-4)

rightGreenButton   DEFW &0040        ;F (keyrow 2)
rightOrangeButton  DEFW &0040        ;D (keyrow 3)
rightRedButton     DEFW &0040        ;B (keyrow 4)
leftGreenButton    DEFW &0080        ;E (keyrow 2)
leftOrangeButton   DEFW &0080        ;C (keyrow 3)
leftRedButton      DEFW &0080        ;A (keyrow 4)

rG                 DEFW &0001
rGO                DEFW &0003
rGOR               DEFW &0007
lR                 DEFW &0020

; Defining sounds for lights with 0.5 sec delay
; Values to be written to buzzer
rGSoundhalf        DEFW &8540
rOSoundhalf        DEFW &8541
rRSoundhalf        DEFW &8542
lGSoundhalf        DEFW &8550
lOSoundhalf        DEFW &8551
lRSoundhalf        DEFW &8552

; Defining sounds for lights with 0.4 sec delay
; Values to be written to buzzer
rGSoundZeroFour    DEFW &8440
rOSoundZeroFour    DEFW &8441
rRSoundZeroFour    DEFW &8442
lGSoundZeroFour    DEFW &8450
lOSoundZeroFour    DEFW &8451
lRSoundZeroFour    DEFW &8452

; Defining sounds for lights with 0.3 sec delay
; Values to be written to buzzer
rGSoundZeroThree   DEFW &8340
rOSoundZeroThree   DEFW &8341
rRSoundZeroThree   DEFW &8342
lGSoundZeroThree   DEFW &8350
lOSoundZeroThree   DEFW &8351
lRSoundZeroThree   DEFW &8352

; Defining sounds for lights with 0.2 sec delay
; Values to be written to buzzer
rGSoundZeroTwo     DEFW &8240
rOSoundZeroTwo     DEFW &8241
rRSoundZeroTwo     DEFW &8242
lGSoundZeroTwo     DEFW &8250
lOSoundZeroTwo     DEFW &8251
lRSoundZeroTwo     DEFW &8252

; Defining bargraph for levels
level_one          DEFW &81
level_two          DEFW &C3
level_three        DEFW &E7
; easy to access variables
lights             EQU  &FFF
buzzer             EQU  &FFD
buzzerbusy         EQU  &FF3
bargraph           EQU  &FFE

; KeyRows 1-4
keyrow2            EQU  &FF1
keyrow3            EQU  &FF0
keyrow4            EQU  &FEF

; ------------------------------------------------------
