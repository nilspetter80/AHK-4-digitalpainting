; WIN = #
; Alt = !
; Ctrl = ^
; Shift = +
; & combines two keys
; left of pair = <	EXAMPLE <!g = left alt + g
; right of pair = >
; Alt Gr = <^>!
; you need to put "return" at the end of your action, see this script for examples.


; NOTE: All of the hotkeys in this script are on the numpad,
; and are exclusive to numpad version of keys, 
; for example the "Home" key or "Multiply" (asterisk) key on the numpad
; sends different codes to Windows than the other "Home" and "Multiply" key.
; Only one exception - that is "Ctrl+Esc" which is used to exit the script.

; ALSO NOTE: Num Lock will not work as normal, I have turned that functionality off.
; If you need that, you will have to exit script.   
;
; ALSO ALSO NOTE: To kill the script - press Ctrl+Esc!


;________________________________________
;             Misc Setup		 |
;----------------------------------------|
;_____________Auto-Execute Section_______|
SetNumLockState, AlwaysOff  ;		 |  sets Num Lock = always OFF
SetCapsLockState, AlwaysOff ;		 |  sets Caps Lock = always OFF
CoordMode, Mouse, Screen    ;		 |  sets coordinate mode for mouse to "Screen"
sendmode input		    ;		 |  sets mode for sending keystrokes to "input"
;			    		 |    (supposedly the most reliable)
;_____________General Hotkeys____________|
^Esc::ExitApp  		; 	         |  ctrl+ESC = Exit Script
  return		;		 |
;----------------------------------------|
;CapsLock::		;		 |  Caps Lock = dead
;  return		;		 |    (Makes CAPS LOCK do nothing)
;________________________________________|     
;  I have disabled the Caps Lock "do nothing" hotkey for public use, but 
;  remove the semicolons in front of "CapsLock::" and "return" 
;  if you hate accidently hitting Caps Lock as much as I do. 
;  then run script again.

;=====================================================================================

/*
;__________________menu__________________
the code		;what key combo  | the key	= what it does
			;is triggered	 | you press
			;when you press	 |
			;a key		 |
*/

;________________________________________
;             Number Pad 		 |
;----------------------------------------|
;_____________Top (Div & Mult)___________|Pipette
;					 |-----------------------------
NumpadDiv::LAlt		;Alt		 |  / = color pick
  return		;		 |
NumpadMult::x		;x		 |  * = color pick (tint)
  return		;		 |
;_____________Number 7-9_________________|Rotate/zoom Canvas
;					 |-----------------------------
NumpadHome::r		;r		 |  7 = rotate(hold)
  return		;		 |
NumpadUp::^+w 		;Ctrl+Shift+w	 |  8 = reset rotate
  return		;		 |
NumpadPgUp::z		;z		 |  9 = zoom(hold)
  return		;		 |
;_____________Number 4-6_________________|Undo - paintmode blend - redo
;					 |-----------------------------
NumpadLeft::^z		;Ctrl+z		 |  4 = Undo (standard)
  return		;		 |
NumpadClear::4		;4		 |  5 = Paint mode - blend (oil)
  return		;		 |
NumpadRight::^+z	;Ctrl+Shift+z	 |  6 = Undo (standard)
  return		;		 |
;_____________Number 1-3_________________|Paint modes   
;					 |-----------------------------
NumpadEnd::1		;1		 |  1 = paint (oil)
  return		;		 |
NumpadDown::2		;2		 |  2 = paint&mix (oil)
  return		;		 |
NumpadPgDn::3		;3		 |  3 = paint&blend (oil)
  return		;		 |
;_____________Bottom Two Keys____________|Brush size
;					 |-----------------------------
NumpadIns::^+f		;Ctrl+Shift+f	 |  0 = decrease brush size
  return		;		 |
NumpadDel::^+g		;Ctrl+Shift+g	 |  . = increase brush size
  return		;		 |
;_____________Side Keys__________________|Multi/Dry brush
;					 |-----------------------------
NumpadSub::!m		;Alt+m		 |  - = toggle multibrush
  return		;		 |
NumpadAdd::!d		;Alt+d		 |  + = toggle dry brush
  return		;		 |
;________________________________________|



;Use the numberpad(NB!) ENTER key
;before switching back to Rebelle
;after doing other tasks (clicking outside rebelle..)
;to avoid mouse&stylus disappearing bug!

;________________________________________
;_____________Select Rebelle - avoid bug_|Use to avoid pointer bug 
;					 |-----------------------------
NumpadEnter::			;	 |  Enter.. 
{				;	 |
  WinActivate, ahk_exe Rebelle 5.exe ;	 |  ..activates Rebelle 5
;  Click, 5500 150		;	 |
  return			;	 |  (numpad Enter only, regular
}				;	 |  Enter functions as normal)
;________________________________________|
;NOTE: I have disabled the AHK virtual mouseclick action above
;because it doesnt seem to be needed, and the coordinates may be wrong
;for your setup. Use Windowspy, and check under "screen" when pointing
;the mouse at a suitable place (somewhere in Rebelle, where it doesnt
;do anything..)


;________________________________________
;      Number Pad - NumLock Combos	 |
;----------------------------------------|
;_____________Number 7-9_________________|select/deselect/transform
;					 |-----------------------------
NumLock & NumpadHome::^!f ;Ctrl+Alt+f	 |  NL (+) 7 = select (freehand)
  return		  ;		 |
NumLock & NumpadUp::^d    ;Ctrl+d	 |  NL (+) 8 = deselect
  return		  ;		 |
NumLock & NumpadPgUp::t   ;t		 |  NL (+) 9 = transform
  return		  ;		 |
;_____________Number 4-6_________________|watercolor/ink/pencil
;					 |-----------------------------
NumLock & NumpadLeft::+w  ;Shift+w	 |  NL (+) 4 = watercolor
  return		  ;		 |
NumLock & NumpadClear::+i ;Shift+i	 |  NL (+) 5 = ink
  return		  ;		 |
NumLock & NumpadRight::+n ;Shift+n	 |  NL (+) 6 = pencil
  return		  ;		 |
;_____________Number 1-3_________________|wet/dry/blow tool
;					 |-----------------------------
NumLock & NumpadEnd::w	;w		 |  NL (+) 1 = water tool
  return		;		 |
NumLock & NumpadDown::y	;y		 |  NL (+) 2 = sponge tool
  return		;		 |
NumLock & NumpadPgDn::o	;o		 |  NL (+) 3 = blow tool
  return		;		 |
;________________________________________|

;________________________________________
;      Loading/Oiliness/Pressure	 |
;----------------------------------------|
;_____________Loading____________________|Loading/opacity
;					 |-----------------------------
NumpadEnd & NumpadIns::^+a ;Ctrl+Shft+a	 |  1 (+) 0 = Red. Loading/Opacity
  return		   ;		 |
NumpadEnd & NumpadDel::^+s ;Ctrl+Shft+s	 |  1 (+) , = Inc. Loading/Opacity  
  return		   ;		 |
;_____________Oiliness___________________|Oiliness/Water
;					 |-----------------------------
NumpadDown & NumpadIns::^+p ;		 |  2 (+) 0 = Red. Oil/Water
  return		   ;		 |
NumpadDown & NumpadDel::^+l ;		 |  2 (+) , = Inc. Oil/Water
  return		   ;		 |
;_____________Pressure___________________|Pressure
;					 |-----------------------------
NumpadPgDn & NumpadIns::^+c ;		 |  3 (+) 0 = Red. Pressure
  return		    ;		 |
NumpadPgDn & NumpadDel::^+v ;		 |  3 (+) , = Inc. Pressure
  return		    ;		 |
;________________________________________|

;NOTE: on combos - I have avoided using NumpadDiv & NumpadMult in keycombos
;because they mess up the "pick color" hotkeys that are controlled
;with those two keys. 
