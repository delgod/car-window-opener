v 20121123 2
C 40000 40000 0 0 0 title-B.sym
C 51700 43600 1 0 0 mosfet-with-diode-1.sym
{
T 52600 44100 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 52600 44100 5 10 1 1 0 0 1
refdes=Q1
}
C 52800 47200 1 0 0 asic-res-2.sym
{
T 54000 47500 5 8 0 0 0 0 1
device=RESISTOR
T 53000 47500 5 10 1 1 0 0 1
refdes=R3
T 53500 47500 5 10 1 1 0 0 1
value=1k
}
C 46500 46600 1 0 0 asic-res-2.sym
{
T 47700 46900 5 8 0 0 0 0 1
device=RESISTOR
T 46700 46900 5 10 1 1 0 0 1
refdes=R1
T 47200 46900 5 10 1 1 0 0 1
value=10k
}
C 51200 43100 1 0 0 asic-res-2.sym
{
T 52400 43400 5 8 0 0 0 0 1
device=RESISTOR
T 51400 43400 5 10 1 1 0 0 1
refdes=R5
T 51900 43400 5 10 1 1 0 0 1
value=10k
}
C 47700 45200 1 0 0 ATtiny13.sym
{
T 50000 47500 5 10 1 1 0 6 1
refdes=U2
T 48000 47650 5 10 0 0 0 0 1
device=ATtiny13
T 48000 47850 5 10 0 0 0 0 1
footprint=DIP8
}
C 41300 47700 1 0 0 12V-plus-1.sym
C 43400 46500 1 0 0 lm7805-1.sym
{
T 45000 47800 5 10 0 0 0 0 1
device=7805
T 44800 47500 5 10 1 1 0 6 1
refdes=U1
}
C 42500 45600 1 90 0 switcap-capacitor-1.sym
{
T 41900 45900 5 10 0 0 90 0 1
device=SWITCAP-capacitor
T 42200 46200 5 10 1 1 90 0 1
refdes=C1
T 42500 46200 5 10 1 1 90 0 1
value=0.1
}
C 43300 45600 1 90 0 switcap-capacitor-1.sym
{
T 42700 45900 5 10 0 0 90 0 1
device=SWITCAP-capacitor
T 43000 46200 5 10 1 1 90 0 1
refdes=C2
T 43300 46200 5 10 1 1 90 0 1
value=100x25V
}
C 45500 45600 1 90 0 switcap-capacitor-1.sym
{
T 44900 45900 5 10 0 0 90 0 1
device=SWITCAP-capacitor
T 45200 46200 5 10 1 1 90 0 1
refdes=C3
T 45500 46200 5 10 1 1 90 0 1
value=0.1
}
C 46100 45600 1 90 0 switcap-capacitor-1.sym
{
T 45500 45900 5 10 0 0 90 0 1
device=SWITCAP-capacitor
T 45800 46200 5 10 1 1 90 0 1
refdes=C4
T 46100 46200 5 10 1 1 90 0 1
value=100x25V
}
N 47600 46700 47700 46700 4
N 45000 47100 47700 47100 4
N 46500 47100 46500 46700 4
C 54300 47200 1 0 0 pushbutton.sym
C 55400 47700 1 0 0 12V-plus-1.sym
C 51200 44200 1 90 0 asic-res-2.sym
{
T 50900 45400 5 8 0 0 90 0 1
device=RESISTOR
T 50900 44400 5 10 1 1 90 0 1
refdes=R4
T 50900 44900 5 10 1 1 90 0 1
value=100k
}
N 41500 47100 41500 47700 4
N 42300 45500 47700 45500 4
N 44200 41900 44200 46500 4
N 41500 47100 43400 47100 4
C 51800 46100 1 90 0 zener-4.sym
{
T 51200 46500 5 10 0 0 90 0 1
device=DIODE
T 51300 46400 5 10 1 1 90 0 1
refdes=D1  4V7
}
C 52500 46100 1 90 0 asic-res-2.sym
{
T 52200 47300 5 8 0 0 90 0 1
device=RESISTOR
T 52200 46300 5 10 1 1 90 0 1
refdes=R2
T 52200 46800 5 10 1 1 90 0 1
value=10k
}
N 50300 45900 50900 45900 4
N 50900 45900 50900 47300 4
N 50900 47300 52800 47300 4
N 50300 45500 51100 45500 4
N 51100 45500 51100 45300 4
N 51700 44100 51100 44100 4
C 47300 42400 1 90 0 dc_motor-1.sym
{
T 46300 42800 5 10 0 0 90 0 1
device=DC_MOTOR
T 46700 42900 5 10 1 1 90 0 1
refdes=M1
}
N 52300 44600 52300 45100 4
N 53400 45800 53400 46000 4
N 51600 46000 51600 46100 4
N 51600 46000 53400 46000 4
N 51600 47000 51600 47300 4
N 55600 45100 55600 47700 4
N 55600 47300 55100 47300 4
N 54300 47300 53900 47300 4
N 42300 46500 42300 47100 4
N 42300 47100 43100 47100 4
N 43100 46500 43100 47100 4
N 45300 46500 45300 47100 4
N 45900 46500 45900 47100 4
N 52400 47200 52400 47300 4
N 52400 46100 52400 46000 4
N 42300 45600 42300 45500 4
N 44100 45500 43100 45500 4
N 43100 45500 43100 45600 4
N 45300 45500 45300 45600 4
N 45900 45600 45900 45500 4
N 55600 45100 52300 45100 4
N 51100 44200 51100 43200 4
N 51100 43200 51200 43200 4
N 46300 42600 44200 42600 4
N 47300 42600 52300 42600 4
N 52300 42600 52300 43600 4
C 44000 41700 1 0 0 minus.sym
C 53200 45600 1 0 0 minus.sym
