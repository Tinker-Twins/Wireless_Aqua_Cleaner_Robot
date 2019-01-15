$regfile "m8def.dat"                                        'CALL ATMEGA8 HEADER FILE
$crystal = 12000000                                         'SET CRYSTAL FREQUENCY 12MHZ
$baud = 9600
$prog &HFF , &HF4 , &HD4 , &H00
Config Portb = Output
Config Timer1 = Pwm , Pwm = 8 , Prescale = 1 , Compare A Pwm = Clear Down , Compare B Pwm = Clear Down
Dim X As String * 1
Do
X = Waitkey()
If X = "F" Then
Portb.0 = 0
Pwm1a = 0
Pwm1b = 0
Portb.3 = 0
Portb.4 = 0
Portb.5 = 0
Waitms 150
Portb.0 = 0
Pwm1a = 240
Pwm1b = 240
Portb.3 = 0
Portb.4 = 0
Portb.5 = 0
Waitms 50
Elseif X = "B" Then
Portb.0 = 0
Pwm1a = 0
Pwm1b = 0
Portb.3 = 0
Portb.4 = 0
Portb.5 = 0
Waitms 150
Portb.0 = 1
Pwm1a = 15
Pwm1b = 15
Portb.3 = 1
Portb.4 = 0
Portb.5 = 0
Waitms 40
Elseif X = "L" Then
Portb.0 = 0
Pwm1a = 0
Pwm1b = 0
Portb.3 = 0
Portb.4 = 0
Portb.5 = 0
Waitms 150
Portb.0 = 1
Pwm1a = 15
Pwm1b = 240
Portb.3 = 0
Portb.4 = 0
Portb.5 = 0
Waitms 10
Elseif X = "R" Then
Portb.0 = 0
Pwm1a = 0
Pwm1b = 0
Portb.3 = 0
Portb.4 = 0
Portb.5 = 0
Waitms 150
Portb.0 = 0
Pwm1a = 240
Pwm1b = 15
Portb.3 = 1
Portb.4 = 0
Portb.5 = 0
Waitms 40
Elseif X = "S" Then
Portb.0 = 0
Pwm1a = 0
Pwm1b = 0
Portb.3 = 0
Portb.4 = 0
Portb.5 = 0
Waitms 40
Elseif X = "P" Then
Portb.0 = 0
Pwm1a = 0
Pwm1b = 0
Portb.3 = 0
Portb.4 = 0
Portb.5 = 0
Waitms 150
Portb.0 = 0
Pwm1a = 0
Pwm1b = 0
Portb.3 = 0
Portb.4 = 1
Portb.5 = 0
Waitms 40
Elseif X = "D" Then
Portb.0 = 0
Pwm1a = 0
Pwm1b = 0
Portb.3 = 0
Portb.4 = 0
Portb.5 = 0
Waitms 150
Portb.0 = 0
Pwm1a = 0
Pwm1b = 0
Portb.3 = 0
Portb.4 = 0
Portb.5 = 1
Waitms 40
End If
Loop
End




