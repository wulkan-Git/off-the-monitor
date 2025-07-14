; Copyright (c) 2025 Владимир Wulk@n
; SPDX-License-Identifier: MIT
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; Отправить системную команду на выключение монитора
DllCall("PostMessage", "Ptr", 0xFFFF, "UInt", 0x0112, "UPtr", 0xF170, "Ptr", 2)
ExitApp
