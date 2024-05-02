#SingleInstance force
#UseHook

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 1段目
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SC029::`           ;         半角/全角     -> `　VKF4だと全角入力ができないのでSC029 / sendにするとctrl+shift+@ができないため使わない
+SC029::Send,{~}   ; Shift + 半角/全角     -> ~　VKF4だと全角入力ができないのでSC029
+2::Send,{@}       ; Shift + 2         ["] -> @
+6::Send,{^}       ; Shift + 6         [&] -> ^
+7::Send,{&}       ; Shift + 7         ['] -> &
+8::Send,{*}       ; Shift + 8         [(] -> *
+9::Send,{(}       ; Shift + 9         [)] -> (
+0::Send,{)}       ; Shift + 0         [ ] -> )
+-::Send,{_}       ; Shift + -         [=] -> _
^::Send,{=}        ;                   [^] -> =
+^::Send,{+}       ; Shift + ^         [~] -> +

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 2段目
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
@::[              ;                   [@] -> [
+@::{             ; Shift + @         [`] -> {
[::]              ;                   [[] -> ]
+[::Send,{}}      ; Shift + [         [{] -> }

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 3段目
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
+;::Send,{:}       ; Shift + ;         [+] -> :
:::Send,{'}        ;                   [:] -> '
*::Send,{"}        ; Shift + :         [*] -> "
+]::|              ; Shift + ]         [}] -> |
]::\               ;                   []] -> \

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ctrl + spaceキーでIME変換ON/OFF切り替え
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^Space::Send, !{vkF3sc029}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 左右 Shift キーの空打ちで IME の OFF/ON を切り替える
;
; 左 Shift キーの空打ちで IME を「英数」に切り替え
; 右 Shift キーの空打ちで IME を「かな」に切り替え
; Shift キーを押している間に他のキーを打つと通常の Shift キーとして動作
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~LShift Up::
if (A_PriorKey = "LShift") {
    Send, {vk1Dsc07B}
}
Return

~RShift Up::
if (A_PriorKey = "RShift") {
    Send, {vk1Csc079}
}
Return
