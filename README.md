# 🖥️ AutoHotkey Скрипт для Мгновенного Выключения Монитора

![AutoHotkey Version](https://img.shields.io/badge/AutoHotkey-v1.1%2B-green) 
![Windows Compatibility](https://img.shields.io/badge/Windows-7/8/10/11-blue)
![License](https://img.shields.io/badge/License-Free-blue)

## 📌 Обзор
Скрипт мгновенно выключает монитор без перевода компьютера в спящий режим. Использует системные команды Windows через API. Не требует прав администратора и работает в фоновом режиме.

## ⚙️ Техническая Реализация
### Системные параметры:
| Шестнадцатеричное значение | Константа Windows       | Назначение                          |
|----------------------------|-------------------------|-------------------------------------|
| `0xFFFF`                   | `HWND_BROADCAST`        | Широковещательная рассылка всем окнам |
| `0x0112`                   | `WM_SYSCOMMAND`         | Системная команда                   |
| `0xF170`                   | `SC_MONITORPOWER`       | Управление питанием монитора        |
| `2`                        | -                       | Полное выключение                   |

### Почему PostMessage?
- Асинхронная работа (не блокирует выполнение)
- Нулевая задержка выполнения
- Автоматическое завершение процесса
- Совместимость с 32/64-битными системами

## 🛠 Установка и Использование
### Способ 1: Запуск скрипта (.ahk)
1. Установите [AutoHotkey](https://www.autohotkey.com/download/)
2. Создайте файл `TurnOffMonitor.ahk` с содержимым:
```ahk
#NoEnv
#SingleInstance, Force
SendMode Input
SetBatchLines, -1

PostMessage(0x0112, 0xF170, 2,, "Program Manager")
ExitApp
