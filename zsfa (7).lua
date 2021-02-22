script_name("SFA")
script_description("/SFA - Основная команда.")
script_version("2.5.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.10")
script_author("Romzi")
script_dependencies("SAMPFUNCS, SAMP")
-- Kuzya Hyilo~ --
--[[Билиотеки которые будут применяться  после local и перед =, это локальная переменная...
 которая обращается к функции брав нужную либу]]
local res = pcall(require, "lib.moonloader")                      assert(res, "Lib MOONLOADER not found!")
local res = pcall(require, 'lib.sampfuncs')                       assert(res, 'Lib SAMPFUNCS not found')
local res, sampev     = pcall(require, 'lib.samp.events')         assert(res, 'Lib SAMP Events not found')
local imgui = require "imgui"
local key = require "vkeys"
--local requests = require('requests')
local memory = require 'memory'
local fa_exist, fa = pcall(require, 'fAwesome5')
local ini = require "inicfg"
local f = "moonloader/config/vzlom.ini"
local encoding = require 'encoding'
encoding.default = 'CP1251'
u8 = encoding.UTF8
if not doesFileExist(f) then f1 = io.open(f, "a") f1:write("[vzlom]\ndelay=80") f1:close() end
local cfg = ini.load(nil, f)
local window1 = imgui.ImBool(false)
local window2 = imgui.ImBool(false)
local mainwindow = imgui.ImBool(false)
local delay = cfg.vzlom.delay
local elements_count = 0
local complete = false
local state1 = false
local state2 = false
local state3 = false
local zalupki = {
  3173, 3127, 3135, 3126, 3145, 3146, 3123, 3163, 3169, 3159, 3179, 3149, 3184, 3174, 3154, 3185, 3186, 3157, 3194, 3167, 3188, 3158, 3177, 3168, 3178, 3198, 3195, 3162, 3171, 3152, 3153, 3161, 3183, 3170, 3160, 3190, 3150, 3156, 3166, 3187, 3155, 3165, 3164, 3144, 3134, 3172, 3142, 3131, 3132, 3141, 3130, 3129, 3140, 3139, 3128, 3252, 3257, 3266, 3264, 3256, 3260, 3254, 3253, 3255, 3261, 3277, 3249, 3258, 3250, 3263, 3282, 3269, 3283, 3285, 3276, 3281, 3271, 3275, 3279, 3287, 3273, 3272, 3280, 3278, 3274, 3286, 3266, 3264, 3256, 3260, 3284, 3249, 3258, 3250, 3263, 3217, 3222, 3204, 3234,	3215, 3243, 3224, 3246, 3237, 3206, 3244, 3226, 3205,	3225, 3236, 3238, 3216, 3208, 3207, 3245, 3248,	3247, 3218, 3220, 3230,	3210, 3240,	3200, 3214, 3231, 3202, 3201, 3233, 3213, 3242,	3211, 3232,	3203, 3232, 3212, 3223, 3209, 3239, 3199, 3229, 3219, 3239, 3121, 3120, 3117, 3115, 3116, 3147, 3113, 3143, 3133, 3124, 3137, 3138, 3118, 3119, 3108, 3107, 3122, 3112, 3102, 3106, 3105, 3110, 3109, 3103, 3104, 3125, 3114, 3136, 3111, 3090, 3098, 3078, 3083, 3093, 3073, 3086, 3096, 3095,	3077, 3075, 3085, 3087, 3088, 3089, 3079, 3078, 3180, 3099, 3100, 3092, 3101, 3091, 3094, 3070, 3080, 3084, 3082, 3072, 3074, 3097, 3076, 3071, 3081
}


function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
  while not isSampAvailable() do wait(1000)  end
	autoupdate("https://api.jsonbin.io/b/6033ece8a94a574b4520a100", '['..string.upper(thisScript().name)..']: ', "https://vk.com/im?peers=-88673408_260442746_185187079&sel=c49")
  local ip, port = sampGetCurrentServerAddress()
   if ip ~= "46.174.48.184" and port ~= "7777" then
   thisScript():unload() else
	 --[[local request = requests.get('https://pastebin.com/raw/gQcHRgNw')
	 local nick = sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))) local function res()
   for n in request.text:gmatch('[^\r\n]+') do if nick:find(n) then return true end end return false end
	 if not res() then error('Соси') end]] sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Скрипт успешно загружен - [/sfa].", -1)
if not fa_exist then sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}У тебя отсутсвует библиотека FAawesome5, установите и попробуйте запустить скрипт еще раз.', -1) thisScript():unload() end

  --------------------------КОМАНДЫ--------------------------
sampRegisterChatCommand("sfa", window)
sampRegisterChatCommand("inf", inf)
sampRegisterChatCommand("nano", nano)
sampRegisterChatCommand("zoombie", zoombie)
sampRegisterChatCommand("stalker", stalker)
sampRegisterChatCommand("metal2", metal2)
sampRegisterChatCommand("masla", maslo)
sampRegisterChatCommand("metal", metal)
sampRegisterChatCommand("eda", eda)
sampRegisterChatCommand("spirt", spirt)
sampRegisterChatCommand("ygol", ygol)
sampRegisterChatCommand("bullet", bullet)
sampRegisterChatCommand("benz", benz)
sampRegisterChatCommand("xleb", xleb)
sampRegisterChatCommand("apt", craftapt)
sampRegisterChatCommand("check", check)
sampRegisterChatCommand("anti", craftantirad)
sampRegisterChatCommand("virus", virus)
sampRegisterChatCommand("xlam", xlam)
sampRegisterChatCommand("artefact2", artefact2)
sampRegisterChatCommand("ba", ba)
sampRegisterChatCommand("sklad", sklad)
sampRegisterChatCommand("nakrut", nakrut)
sampRegisterChatCommand("neft", neft)
sampRegisterChatCommand("artefact", artefact)
sampRegisterChatCommand("st", st)
sampRegisterChatCommand("nchki", nchki)
sampRegisterChatCommand("zalp", zalp)
sampRegisterChatCommand("shmot", shmot)
sampRegisterChatCommand("artraz", artraz)
sampRegisterChatCommand("predmet", predmet)
sampRegisterChatCommand("sq", fakepic)
sampRegisterChatCommand("invi", invis)
sampRegisterChatCommand("inc", incarinvis)
sampRegisterChatCommand("apteka", apteka)
sampRegisterChatCommand("paxavat", paxavat)
sampRegisterChatCommand("seif", seif)
sampRegisterChatCommand("vz", vz)
sampRegisterChatCommand("vm", vm)
sampRegisterChatCommand("bron", bron)
sampRegisterChatCommand("samolet", samolet)
sampRegisterChatCommand("samolet2", samolet2)
sampRegisterChatCommand("samurai", samurai)
sampRegisterChatCommand("derevo", derevo)
sampRegisterChatCommand("tp", tp)
sampRegisterChatCommand("vtp", vtp)
sampRegisterChatCommand("porox", porox)
sampRegisterChatCommand("korablik2", korablik2)
sampRegisterChatCommand("korablik", korablik)
sampRegisterChatCommand("minigun", minigun)
sampRegisterChatCommand("full", full)
sampRegisterChatCommand("electro", electro)
sampRegisterChatCommand("kladik", kladik)
sampRegisterChatCommand("snipe", snipe)
sampRegisterChatCommand("remnab", remnab)
sampRegisterChatCommand("damba", damba)
sampRegisterChatCommand("tainik", tainik)
sampRegisterChatCommand("lovka", lovka)
sampRegisterChatCommand("zagotovka", zagotovka)
sampRegisterChatCommand("zapchast", zapchast)
sampRegisterChatCommand("ferma", ferma1)
sampRegisterChatCommand("ferma2", ferma2)
sampRegisterChatCommand("ferma3", ferma3)
sampRegisterChatCommand("ferma4", ferma4)
sampRegisterChatCommand("posadit", posadit)
sampRegisterChatCommand("sobrat", sobrat)
sampRegisterChatCommand("cement", cement)
sampRegisterChatCommand("cement2", cement2)
sampRegisterChatCommand("cement3", cement3)
sampRegisterChatCommand("cement4", cement4)
sampRegisterChatCommand('wait', function(arg) if arg:match('%d+') then  delay = tonumber(arg)
sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}Задержка '..arg..' {00BFFF}установлена.', -1) cfg.vzlom.delay = delay
if ini.save(cfg, f) then end else sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}Введи задержку!', -1)  end end)
     ---------------------Ответы на вопросы-------------------
sampRegisterChatCommand("da", otvetda) -- "Да"
sampRegisterChatCommand("bazm", otvetbazm) -- "/навигатор - базы организаций - Радар(логово мутантов)"
sampRegisterChatCommand("bazb", otvetbazb) -- "/навигатор - базы организаций - Бандиты"
sampRegisterChatCommand("bazs", otvetbazs) -- "/навигатор - базы органиций - Сталкеры"
sampRegisterChatCommand("bazv", otvetbazv) -- "/навигатор - базы органиций - Штаб Военных"
sampRegisterChatCommand("bazy", otvetbazy) -- "/навигатор - базы организаций - Офис Учёных"
sampRegisterChatCommand("ankl", otvetankl) -- "/навигатор - базы органиций - Анклав"
sampRegisterChatCommand("zar", otvetzar) -- "/навигатор - заработок"
sampRegisterChatCommand("zapravka", otvetzapravka) -- "/навигатор - заправки"
sampRegisterChatCommand("bank", otvetbank) -- "/навигатор - банки"
sampRegisterChatCommand("skin", otvetskin) -- "/навигатор - Магазины одежды"
sampRegisterChatCommand("net", otvetnet) -- "Нет"
sampRegisterChatCommand("pri", otvetpri) -- "Приятной игры на SA:MP Z.O.N.A =)"
sampRegisterChatCommand("zapiska", otvetzapiska) -- "Y - Записки"
sampRegisterChatCommand("zapiskas", otvetzapiskas) -- "Y - Записки - Связь"
sampRegisterChatCommand("zapiskan", otvetzapiskan) -- "Y - Записки - Новичкам"
sampRegisterChatCommand("zapiskak", otvetzapiskak) -- "Y - Записки - Команды"
sampRegisterChatCommand("zapiskaks", otvetzapiskaks) -- "Y - Записки - Служебные команды"
sampRegisterChatCommand("fraka", otvetfraka) -- "Y - Записки - Сообщества"
sampRegisterChatCommand("mat", otvetmat) -- "Воздержитесь от мата"
sampRegisterChatCommand("caps", otvetcaps) -- "Выключите Caps Lock"
sampRegisterChatCommand("nepon", otvetnepon) -- "Не понял Вашего вопроса, перефразируйте"
sampRegisterChatCommand("osk" , otvetosk) -- "Перестаньте оскорблять игрока!"
sampRegisterChatCommand("nocw" , otvetnocw) -- "По квестам советники не помогают!"
sampRegisterChatCommand("sek" , otvetsek) -- "Ожидайте, скоро вылечу Вас!"
sampRegisterChatCommand("zapiskay", otvetzapiskay) -- "Y - записки - уровни"



resX, resY = getScreenResolution()



while true do wait(0)





    ------------- Имгуи процесс это рега окон имгуи..
imgui.Process = window1.v or window2.v or  mainwindow.v



 if sampTextdrawIsExists(12) then wait(delay) sampSendClickTextdraw(12) end





if wasKeyPressed(VK_E) and isKeyDown(VK_CONTROL) and not sampIsChatInputActive() then
   window()
 elseif isKeyJustPressed(0x4B) and sampIsLocalPlayerSpawned() and not sampIsChatInputActive() and not isPauseMenuActive() and not isSampfuncsConsoleActive() then
            sampSetChatInputText("/kk ")
            sampSetChatInputEnabled(true)
         end
      end
   end
end
--------------------------------------------------------------------------------------------
----------------------------------------ОТВЕТЫ НА ВОПРОСЫ------------------------------------
--------------------------------------------------------------------------------------------
function otvetda(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Да.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Да". [/da id].', -1)
        end
    end
end

function otvetzapiskay(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Y - записки - уровни.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Y - записки - уровни". [/zapiskay id].', -1)
        end
    end
end

function otvetsek(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Ожидайте,скоро вылечу Вас!')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Ожидайте, скоро вылечу Вас!". [/sek id].', -1)
        end
    end
end

function otvetbazm(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' /навигатор - базы организаций - Радар(логово мутантов).')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "/навигатор - базы организаций - Радар(логово мутантов)". [/bazm id].', -1)
        end
    end
end

function otvetbazy(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' /навигатор - базы организаций - Офис учёных.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "/навигатор - базы организаций - Офис учёных". [/bazy id].', -1)
        end
    end
end

function otvetbazv(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' /навигатор - базы организаций - Штаб Военных.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "/навигатор - базы организаций - Штаб Военных". [/bazv id].', -1)
        end
    end
end

function otvetbazs(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' /навигатор - базы организаций - Сталкеры.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "/навигатор - базы организаций - Сталкеры". [/bazs id].', -1)
        end
    end
end

function otvetbazb(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' /навигатор - базы организаций - Бандиты.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "/навигатор - базы организаций - Бандиты". [/bazb id].', -1)
        end
    end
end

function otvetankl(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' /навигатор - базы организаций - Анклав.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "/навигатор - базы организаций - Анклав". [/ankl id].', -1)
        end
    end
end

function otvetzapravka(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' /навигатор - заправки.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "/навигатор - заправки". [/zapravka id].', -1)
        end
    end
end

function otvetzar(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' /навигатор - заработок.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "/навигатор - заработок". [/zar id].', -1)
        end
    end
end

function otvetbank(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' /навигатор - Банки.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "/навигатор - Банки". [/bank id].', -1)
        end
    end
end

function otvetskin(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' /навигатор - Магазины одежды.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "/навигатор - Магазины одежды". [/skin id].', -1)
        end
    end
end

function otvetnet(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Нет.')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Нет". [/net id].', -1)
        end
    end
end

function otvetpri(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Приятной игры на SAMP Z.O.N.A =)')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Приятной игры на SAMP Z.O.N.A =)". [/pri id].', -1)
        end
    end
end

function otvetzapiska(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Y - записки')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Y - Записки". [/zapiska id].', -1)
        end
    end
end

function otvetzapiskak(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Y - Записки - Команды')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Y - Записки - Команды". [/zapiskak id].', -1)
        end
    end
end

function otvetzapiskaks(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Y - Записки - Служебные Команды')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Y - Записки - Служебные Команды". [/zapiskaks id].', -1)
        end
    end
end

function otvetzapiskas(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Y - Записки - Связь')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Y - Записки - Связь". [/zapiskas id].', -1)
        end
    end
end

function otvetzapiskan(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Y - Записки - Новичкам')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Y - Записки - Новичкам". [/zapiskan id].', -1)
        end
    end
end

function otvetfraka(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Y - Записки - Сообщества')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Y - Записки - Сообщества". [/fraka id].', -1)
        end
    end
end

function otvetcaps(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Выключите Caps Lock')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Выключите Caps Lock". [/caps id].', -1)
        end
    end
end

function otvetmat(param)
    id = tonumber(param)
    if param then
        if id ~= nil then
                    sampSendChat('/от '..id..' Воздержитесь от мата')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Воздержитесь от мата". [/mat id].', -1)
        end
    end
end

function otvetnepon(param)
    id = tonumber(param)
	if param then
	    if id ~= nil then
		sampSendChat('/от '..id..' Не понял Вашего вопроса, перефразируйте ')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Непонял Вашего вопроса, перефразируйте". [/nepon id].', -1)
        end
    end
end

function otvetosk(param)
    id = tonumber(param)
	if param then
	    if id ~= nil then
		sampSendChat('/от '..id..' Перестаньте оскорблять игрока! ')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "Перестаньте оскорблять игрока!". [/osk id].', -1)
        end
    end
end

function otvetnocw(param)
    id = tonumber(param)
	if param then
	    if id ~= nil then
		sampSendChat('/от '..id..' По квестам советники не помогают! ')
                 else
            sampAddChatMessage('{ffffff}• [{0088ff}SFA{ffffff}]: Ответ "По квестам советники не помогают". [/nocw id].', -1)
        end
    end
end


function inf()
lua_thread.create(function()
sampSendChat('/э Заметили читера ? пишите в /репорт')
wait(5000)
sampSendChat('/э Появились вопросы по игровому моду ? /вопрос')
wait(5000)
sampSendChat('/э Больше информации Y - записки и wiki.gta-zona.ru')
end)
end

function zoombie()
lua_thread.create(function()
sampSendChat('/э [Голос в голове]:Вступайте в мутанты ')
wait(5000)
sampSendChat('/э [Голос в голове]:Для вступления - любой уровень и большой желудок!')
wait(5000)
sampSendChat('/э Вступить можно пройдя на базу мутантов, или заразившись от другого мутанта!')
wait(5000)
sampSendChat("/э Подробнее Y - записки - сообщества - мутанты")
wait(5000)
sampSendChat("/э Удачного выживания, конец связи...")

end)
end

function stalker()
lua_thread.create(function()
sampSendChat('/э [Рысь]:Вступайте в сталкеры! ')
wait(5000)
sampSendChat('/э [Рысь]:Для вступления - любой уровень и здоровая печень, водки хватит на всех!')
wait(5000)
sampSendChat('/э Вступить можно пройдя в Бар Скалли - .навигатор - услуги - Бар Скалли!')
wait(5000)
sampSendChat("/э Подробнее Y - записки - сообщества - сталкеры")
wait(5000)
sampSendChat("/э Удачного выживания, конец связи...")
end)
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------ОСТАЛЬНОЕ---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------


function nano()
lua_thread.create(function()
	if getActiveInterior() == 0 then
		 sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Нужно быть дома", -1) else
			 function sampev.onSetPlayerPos()
				 return false end
			   sendSync(620, -70.875, 1497.875, true, key, 590)
	function sampev.onServerMessage(color, text)
	if string.find(text, "Бендер: ", 1, true) then return false end end
sendSync(1858.9410400391 , -2255.0966796875 , 1505.9825439453, 1, 16)
function sampev.onShowDialog(id, style, title, button1, button2, text)
		if id == (441) then sampSendDialogResponse(id, 1, 5, nil)
		return false end end
		wait(300)
sendSync(1856.4884033203 , -2276.3681640625 , 1506.9749755859, 1, 16)
sendSync(1855.8228759766 , -2288.8054199219 , 1506.9749755859, 1, 16)
sendSync(1860.5738525391 , -2285.7514648438 , 1501.8265380859, 1, 16)
sendSync(1865.6516113281 , -2279.5659179688 , 1501.8265380859, 1, 16)
sendSync(1879.2796630859 , -2297.6760253906 , 1501.8265380859, 1, 16)
sendSync(1886.0704345703 , -2306.9633789063 , 1501.8331298828, 1, 16)
sendSync(1860.5734863281 , -2279.8684082031 , 1501.8265380859, 1, 16)
sendSync(1894.0867919922 , -2298.5205078125 , 1501.8265380859, 1, 16)
sendSync(1860.5959472656 , -2280.296875 , 1501.8265380859, 1, 16)
sendSync(1860.5959472656 , -2280.296875 , 1501.8265380859, 1, 16)
wait(100)
sendSync(1862.6450195313 , -2286.2202148438 , 1501.8265380859, 1, 16)
wait(500)
function sampev.onShowDialog(id, style, title, button1, button2, text)
		if id == (441) then
		return true end end
		freezeCharPosition(PLAYER_PED, true)
		freezeCharPosition(PLAYER_PED, false)
		setPlayerControl(PLAYER_HANDLE, true)
		restoreCameraJumpcut()
		clearCharTasksImmediately(PLAYER_PED)
		function sampev.onSetPlayerPos()
			return true end
	end
end)
end

function metal()
lua_thread.create(function()
    spawn()
    sendSync(-1889.25, -1628.625, 17.875, true, key, 434)
    function sampev.onShowDialog(id, style, title, button1, button2, text)
        if id == (147) then sampSendDialogResponse(id, 1, 1, nil)
        return false end end
        wait(300)
        sendSync(-1825.2681884766, -1632.1656494141, 23.015625)
        sendSync(-1810.1839599609, -1620.2924804688, 23.02152633667)
        sendSync(-1801.8775634766, -1679.9216308594, 22.237377166748)
        sendSync(-1846.3564453125, -1708.451171875, 41.113437652588)
        sendSync(-1825.2681884766, -1632.1656494141, 23.015625)
        sendSync(-1849.2092285156, -1647.5244140625, 23.083778381348)
        sendSync(-1785.9946289063, -1627.5949707031, 30.729904174805)
        sendSync(-1810.2900390625, -1613.4619140625, 25.645782470703)
        sendSync(-1821.9708251953, -1609.5220947266, 23.015625, true)
        sendSync(-1825.2681884766, -1632.1656494141, 23.015625, true)
        sendSync(-1878.6538085938, -1660.9587402344, 21.75)
        sendSync(-1827.3355712891, -1605.3143310547, 23.015625)
        sendSync(-1846.2377929688, -1622.9644775391, 21.862112045288)
        sendSync(-1901.2429199219, -1671.7934570313, 23.02152633667)
							wait(100)
        freezeCharPosition(PLAYER_PED, true)
			freezeCharPosition(PLAYER_PED, false)
			setPlayerControl(PLAYER_HANDLE, true)
			restoreCameraJumpcut()
			clearCharTasksImmediately(PLAYER_PED)
function sampev.onShowDialog(id, style, title, button1, button2, text)
    if id == (147) then
    return true end end


end)
end



function ygol()
lua_thread.create(function()
		spawn()
		wait(200)
  sendSync(-1889.25, -1628.625, 17.875, true, key, 434)
	function sampev.onSetPlayerPos()
	return false end
  function sampev.onShowDialog(id, style, title, button1, button2, text)
      if id == (147) then sampSendDialogResponse(id, 1, 0, nil)
      return false end end
  wait(3500)
  sendSync(-1905.625 , -1624.125 , 7.375, true, key, 439)
wait(300)
setCharCoordinates(playerPed, -2175.9050292969, -1628.7752685547, 9.5837745666504)
wait(1200)
setCharCoordinates(playerPed, -2071.7768554688 , -1632.375 , 9.5705986022949)
wait(10500)
setCharCoordinates(playerPed, -2175.9050292969, -1628.7752685547, 9.5837745666504)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(100)
for i = 0, 10 do wait(1000)
  sendSync(-2152.75, -1627.375, 13, true, key, 440)
sendSync(620, -70.875, 1497.875, true, key, 590) end
function sampev.onShowDialog(id, style, title, button1, button2, text)
    if id == (147) then
    return true end end
							wait(1000)
							function sampev.onSetPlayerPos()
							return true end
							spawn()
							restoreCameraJumpcut()

end)
end
--267386880


function xlam() -- ШОК КАК ТАКОЕ ВОЗМОЖНО
  lua_thread.create(function()
      spawn()
    sendSync(159, 2412.25, 17.5, true, key, 595)
    sendSync(210.5, 2610, 17.125, true, key, 594)
    sendSync(697.875, 1293.25, 15, true, key, 593)
    sendSync(623.25, 2204.625, 23.5, true, key, 596)
    sendSync(185.25, 1344.875, 10.5, true, key, 598)
    sendSync(-126, 1126.375, 20.125, true, key, 597)
  wait(200)
    sendSync(614.5, -71.75, 1497.875, true, key, 592)
		wait(200)
		sampCloseCurrentDialogWithButton(1)
		wait(100)
				sampCloseCurrentDialogWithButton(0)

end)
end



function vz()
  lua_thread.create(function()
		if isCharInAnyCar(PLAYER_PED) then
			local x, y, z = getCharCoordinates(PLAYER_PED)
			warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
		function sampev.onSetPlayerPos()
			return false end
			  sendSync(620, -70.875, 1497.875, true, key, 590)
    sendSync(-1889.25, -1628.625, 17.875, true, key, 434)
    function sampev.onShowDialog(id, style, title, button1, button2, text)
        if id == (147) then sampSendDialogResponse(id, 1, 2, nil)
        return false end end
				wait(200)
    tpseat(428)
    wait(500)
		 state2 = true
	sendXyinc(-991.33636474609 , -697.14733886719 , 32.133438110352)
	sendXyinc(-1876.2556152344 , -1630.1643066406 , 21.75)
				 state2 = false
				 wait(200)
			freezeCharPosition(PLAYER_PED, true)
		  freezeCharPosition(PLAYER_PED, false)
		  setPlayerControl(PLAYER_HANDLE, true)
		  restoreCameraJumpcut()
		  clearCharTasksImmediately(PLAYER_PED)
      function sampev.onShowDialog(id, style, title, button1, button2, text)
          if id == (147) then
          return true end end
					function sampev.onSetPlayerPos()
						return true end
--    sendSync(-991.68804931641, -697.96832275391, 32.0078125)


end)
end



  function vm()
  lua_thread.create(function()
		if isCharInAnyCar(PLAYER_PED) then
			local x, y, z = getCharCoordinates(PLAYER_PED)
			warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
		function sampev.onSetPlayerPos()
			return false end
				sendSync(620, -70.875, 1497.875, true, key, 590)
    sendSync(-1889.25, -1628.625, 17.875, true, key, 434)
    function sampev.onShowDialog(id, style, title, button1, button2, text)
        if id == (147) then sampSendDialogResponse(id, 1, 3, nil) return false end end
				function sampev.onSetPlayerPos()
					return false end
					wait(200)
    tpseat(443)
      wait(500)
		 state2 = true
     sendXyinc(178.70579528809 , 1348.2362060547 , 11.219850540161)
     sendXyinc(-1858.3262939453 , -1682.0767822266 , 21.75)
		 state2 = false
		 wait(200)
      function sampev.onShowDialog(id, style, title, button1, button2, text)
          if id == (147) then
          return true end end
					freezeCharPosition(PLAYER_PED, true)
				  freezeCharPosition(PLAYER_PED, false)
				  setPlayerControl(PLAYER_HANDLE, true)
				  restoreCameraJumpcut()
				  clearCharTasksImmediately(PLAYER_PED)
					function sampev.onSetPlayerPos()
						return true end
end)
end





function minigun()
  lua_thread.create(function()
spawn()
restoreCameraJumpcut()
wait(1000)
setCharCoordinates(playerPed, 1403.9268798828 , 1039.5721435547 , 9.8986797332764)
wait(1000)
setCharCoordinates(playerPed, 1679.3446044922, 1004.7817993164, 10.8203125)
wait(1000)
setCharCoordinates(playerPed, 1645.9068603516, 1937.0168457031, 12.057249069214)
wait(1000)
setCharCoordinates(playerPed, 1528.580078125, 2231.4362792969, 10.8203125)
wait(1000)
setCharCoordinates(playerPed, 1521.9281005859, 1614.5910644531, 10.8203125)
wait(1000)
sendSync(620, -70.875, 1497.875, true, key, 590)
end)
end




function electro()
  lua_thread.create(function()
		function sampev.onServerMessage(color, text)
		if string.find(text, "Пусто!", 1, true) then return false end end
		spawn()
		restoreCameraJumpcut()
    sendSync(2161, -2267, 17, true, key, 707)
		 sendSync(2161, -2267, 17, true, key, 708)
    sendSync(2161, -2267, 17, true, key, 709)
    sendSync(2161, -2267, 17, true, key, 710)
sendSync(1329.4152832031, 1975.4449462891, 11.546489715576, 1, 16)
sendSync(1358.5704345703, 1900.6823730469, 11.5390625, 1, 16)
sendSync(1355.41015625, 1894.666015625, 11.536981582642, 1, 16)
sendSync(1323.8121337891, 1969.7971191406, 11.46875, 1, 16)
sendSync(1358.2279052734, 2007.7717285156, 11.531060218811, 1, 16)
sendSync(1358.0885009766, 1993.8244628906, 11.531060218811, 1, 16)
sendSync(1354.0682373047, 1996.7060546875, 11.531060218811, 1, 16)
sendSync(1419.3015136719, 1920.7601318359, 11.546489715576, 1, 16)
sendSync(1417.8875732422, 1929.9466552734, 11.5390625, 1, 16)
sendSync(1454.9222412109, 1911.2171630859, 11.531058311462, 1, 16)
sendSync(1453.9816894531, 1922.4688720703, 11.531057357788, 1, 16)
sendSync(1462.9598388672, 1923.4921875, 11.538486480713, 1, 16)
sendSync(1560.7392578125, 2095.748046875, 11.531060218811, 1, 16)
sendSync(1548.9127197266, 2106.0183105469, 11.531060218811, 1, 16)
sendSync(1589.4704589844, 2127.4213867188, 11.531060218811, 1, 16)
sendSync(1584.45703125, 2123.6137695313, 11.531060218811 , 1, 16)
sendSync(1589.361328125, 2042.3701171875, 11.5390625, 1, 16)
sendSync(1586.6451416016, 2036.8184814453, 11.537030220032, 1, 16)
sendSync(1643.5001220703, 2147.7751464844, 11.382062911987, 1, 16)
sendSync(1645.9027099609, 2159.7102050781, 11.382062911987, 1, 16)
sendSync(1651.3559570313, 2158.0024414063, 11.382062911987, 1, 16)
sendSync(1682.2220458984, 2125.5297851563, 11.531060218811, 1, 16)
sendSync(1679.7093505859, 2113.8601074219, 11.531060218811, 1, 16)
sendSync(1674.3305664063, 2115.50390625, 11.531060218811, 1, 16)
wait(400)
sendSync(1858.7330322266 , -2255.9135742188 , 1505.9825439453, 1, 16)
function sampev.onShowDialog(id, style, title, button1, button2, text)
		if id == (441) then sampSendDialogResponse(id, 1, 2, nil) return false end end
		wait(1000)
		function sampev.onShowDialog(id, style, title, button1, button2, text)
				if id == (441) then return true end end
				function sampev.onServerMessage(color, text)
				if string.find(text, "Пусто!", 1, true) then return true end end
end)
end





function damba()
	lua_thread.create(function()
	if getActiveInterior() ~= 0 then
		 sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Выйди с инты", -1) else
			 function sampev.onSetPlayerPos()
			 	return false end
			 	sendSync(620, -70.875, 1497.875, true, key, 590)
sendSync(-835.32025146484, 2007.4797363281, 60.381847381592, 1, 16)
sendSync(-958.20349121094, 1912.6605224609, 5, 1, 16)
wait(1000)
function sampev.onSetPlayerPos()
	return true end
end end) end


function lovka()
  sendSync(620, -70.875, 1497.875, true, key, 590)
sendSync(2154.2966308594 , 1607.1722412109 , 993.72064208984, 1, 16)
sendSync(2132.9948730469 , 1607.1831054688 , 993.72064208984, 1, 16)
end



function porox()
    lua_thread.create(function()
	function sampev.onShowDialog(id, style, title, button1, button2, text)
	    if id == (447)
	   then sampSendDialogResponse(id, 1, 0, nil)
			     return false end end
	sampSpawnPlayer()
  for i = 0, 3 do
sendSync(2147 , -2255 , 13, true, key, 714)
sendSync(1619.125, 2209, 10.75, true, key, 711)
sendSync(2147, -2255, 13, true, key, 713)
sendSync(2147 , -2255 , 13, true, key, 712)
sendSync(2147 , -2255 , 13, true, key, 715)
sendSync(1782.5705566406, 2115.5239257813, 3.90625, 1, 16) end
for i = 0, 5 do wait(50)
sendSync(2554.8203125 , -1281.4006347656 , 2054.6469726563, 1, 16) end
    wait(500)
    function sampev.onShowDialog(id, style, title, button1, button2, text)
        if id == (447) then
        return true end end
end)
end



function snipe()
    lua_thread.create(function()
	function sampev.onShowDialog(id, style, title, button1, button2, text)
	    if id == (447)
	   then sampSendDialogResponse(id, 1, 5, nil)
	    return false end end
	sampSpawnPlayer()
for i = 0, 10 do wait(50)
sendSync(2554.8203125 , -1281.4006347656 , 2054.6469726563, 1, 16) end
    wait(300)
    function sampev.onShowDialog(id, style, title, button1, button2, text)
        if id == (447) then
        return true end end
end)
end


function shotgun()
    lua_thread.create(function()
	function sampev.onShowDialog(id, style, title, button1, button2, text)
	    if id == (447)
	   then sampSendDialogResponse(id, 1, 3, nil)
	    return false end end
	sampSpawnPlayer()
for i = 0, 10 do wait(50)
sendSync(2554.8203125 , -1281.4006347656 , 2054.6469726563, 1, 16) end
    wait(300)
    function sampev.onShowDialog(id, style, title, button1, button2, text)
        if id == (447) then
        return true end end
end)
end



function avtomat()
    lua_thread.create(function()
	function sampev.onShowDialog(id, style, title, button1, button2, text)
	    if id == (447)
	   then sampSendDialogResponse(id, 1, 4, nil)
	    return false end end
	sampSpawnPlayer()
for i = 0, 10 do wait(50)
sendSync(2554.8203125 , -1281.4006347656 , 2054.6469726563, 1, 16) end
    wait(300)
    function sampev.onShowDialog(id, style, title, button1, button2, text)
        if id == (447) then
        return true end end
end)
end



function korablik2()
    lua_thread.create(function()
			if isCharInAnyCar(PLAYER_PED) then
				local x, y, z = getCharCoordinates(PLAYER_PED)
				warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
	function sampev.onSetPlayerPos()
			return false end
	sendSync(620, -70.875, 1497.875, true, key, 590)
sendSync(-2283.2202148438 , 2283.6125488281 , 4.9713096618652, true, key, 562)
wait(200)
tpseat(530)
wait(500)
    for i = 0, 20 do wait(80)
	 sendXyinc(-2338.2321777344 , 2322.4128417969 , 4.7524437904358)
      			sendXyinc(-2286.9799804688 , 2284.2963867188 , 4.973482131958) end
						wait(200)
						function sampev.onSetPlayerPos()
								return true end
    end)
 end


	function nakrut()
	    lua_thread.create(function()
				for i = 0, 100 do
				sendSync(2807.875, 2373.625, 1110.875, true, key, 611) wait(200)
					sendSync(2855, 902.25, 1110.875, true, key, 610) end
	    end)
	 end


function ferma1()
    lua_thread.create(function()
			if isCharInAnyCar(PLAYER_PED) then
				local x, y, z = getCharCoordinates(PLAYER_PED)
				warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
			function sampev.onSetPlayerPos()
					return false end
			sendSync(620, -70.875, 1497.875, true, key, 590)
	function sampev.onShowDialog(id, style, title, button1, button2, text)
			if id == (163)
		 then sampSendDialogResponse(id, 1, 0, nil)
			return false end end
			sendSync(-1058.375 , -1205.375 , 129.125, true, key, 452)
			wait(200)
			sendSync(-1023.5452880859 , -1285.0341796875 , 133.37522888184)
				sendSync(-1026.3562011719 , -1297.9031982422 , 133.74899291992)
			sendSync(-1019.5784301758 , -1310.1435546875 , 133.71965026855)
				sendSync(-1002.3432006836 , -1308.0765380859 , 137.53877258301)
				sendSync(-1004.2992553711 , -1297.0993652344 , 136.53503417969)
				sendSync(-983.31323242188 , -1308.4444580078 , 139.96910095215)
				sendSync(-984.70477294922 , -1293.9744873047 , 137.61755371094)
				sendSync(-980.88513183594 , -1277.7475585938 , 136.27244567871)
				sendSync(-999.42041015625 , -1279.0186767578 , 135.33627319336)
				sendSync(-997.20294189453 , -1261.6588134766 , 135.45611572266)
				sendSync(-982.51995849609 , -1252.3864746094 , 137.66627502441)
				sendSync(-983.865234375 , -1234.064453125 , 134.98860168457)
				sendSync(-1005.9848022461 , -1232.3472900391 , 133.54032897949)
				sendSync(-1027.5242919922 , -1229.337890625 , 133.20606994629)
				sendSync(-1027.5882568359 , -1263.3012695313 , 133.41453552246)
				sendSync(-1035.5328369141 , -1185.1411132813 , 129.21875)
				sendSync(-1026.8559570313 , -1218.4709472656 , 129.21875)
				sendSync(-1000.0473022461 , -1218.8217773438 , 129.43399047852)
				sendSync(-997.58380126953 , -1212.806640625 , 129.41519165039)
				sendSync(-1026.7628173828 , -1212.2512207031 , 129.21875)
				sendSync(-1026.9051513672 , -1205.0305175781 , 129.21875)
				sendSync(-999.10638427734 , -1205.109375 , 129.43185424805)
				sendSync(-997.09393310547 , -1198.9271240234 , 129.2204284668)
				sendSync(-1025.7796630859 , -1198.6005859375 , 129.21875)
				sendSync(-1030.5444335938 , -1183.58203125 , 129.21875)
				wait(500)
				function sampev.onShowDialog(id, style, title, button1, button2, text)
						if id == (163) then return true end end
						function sampev.onSetPlayerPos()
								return true end
end) end



function ferma3()
    lua_thread.create(function()
			if isCharInAnyCar(PLAYER_PED) then
				local x, y, z = getCharCoordinates(PLAYER_PED)
				warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
			function sampev.onSetPlayerPos()
					return false end
			sendSync(620, -70.875, 1497.875, true, key, 590)
	function sampev.onSetPlayerHealth()
			return false end
	function sampev.onShowDialog(id, style, title, button1, button2, text)
			if id == (163)
		 then sampSendDialogResponse(id, 1, 2, nil)
			return false end end
						sendSync(-1058.375 , -1205.375 , 129.125, true, key, 452)
						wait(200)
						sampCloseCurrentDialogWithButton(0)
				setCharCoordinates(playerPed, -1113.1086425781 , -1240.8005371094 , 129.21875)
			---1060.9112548828 , -1293.6987304688 , 129.21875 сдать
				wait(1000)
				function sampev.onShowDialog(id, style, title, button1, button2, text)
						if id == (163) then return true end end
						function sampev.onSetPlayerHealth()
				        return true end
								function sampev.onSetPlayerPos()
										return true end
  end) end



function neft()
    lua_thread.create(function()
			if isCharInAnyCar(PLAYER_PED) then
						local _, carId = sampGetVehicleIdByCarHandle(storeCarCharIsInNoSave(PLAYER_PED))
						sampSendExitVehicle(carId)
		 sendXyinc(248.04029846191 , 1480.2321777344 , 11.588335037231)
		 sendXyinc(224.65727233887 , 1438.2658691406 , 11.566467285156)
		 sendXyinc(-1034.9621582031 , -631.73413085938 , 32.0078125)
		 wait(200)
			freezeCharPosition(PLAYER_PED, true)
			freezeCharPosition(PLAYER_PED, false)
			setPlayerControl(PLAYER_HANDLE, true)
			restoreCameraJumpcut()
			clearCharTasksImmediately(PLAYER_PED)
		setCharCoordinates(playerPed, 174.55279541016 , 1454.8707275391 , 10.591223716736) end
end) end



function ferma4()
    lua_thread.create(function()
			if isCharInAnyCar(PLAYER_PED) then
				local x, y, z = getCharCoordinates(PLAYER_PED)
				warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
			function sampev.onSetPlayerPos()
					return false end
			sendSync(620, -70.875, 1497.875, true, key, 590)
	function sampev.onSetPlayerHealth()
			return false end
	function sampev.onShowDialog(id, style, title, button1, button2, text)
			if id == (163)
		 then sampSendDialogResponse(id, 1, 3, nil)
			return false end end
			sendSync(-1058.375 , -1205.375 , 129.125, true, key, 452)
			wait(300)
			sampCloseCurrentDialogWithButton(1)
			wait(500)
			tpseat(478)
			wait(300)
			sendXyinc(-1104.4342041016 , -593.677734375 , 31.989194869995)
			sendXyinc(-1063.5256347656 , -1100.6411132813 , 129.21875)
			sendSync(-1078.2138671875 , -1202.4243164063 , 129.21875)
				sendSync(-1076.6109619141 , -1084.3361816406 , 129.21875)
				sendSync(-1092.3841552734 , -1084.6046142578 , 129.21875)
					sendSync(-1124.7698974609 , -1084.1953125 , 129.21875)
				sendSync(-1140.8536376953 , -1084.396484375 , 129.21875)
				sendSync(-1141.689453125 , -1095.5792236328 , 129.21875)
				sendSync(-1123.1544189453 , -1095.65625 , 129.21875)
				sendSync(-1093.6455078125 , -1095.7055664063 , 129.21875)
				sendSync(-1078.9858398438 , -1095.6496582031 , 129.21875)
				sendSync(-1067.9600830078 , -1149.9412841797 , 129.21875)
				sendSync(-1037.8656005859 , -1107.1568603516 , 129.21875)
				sendSync(-1038.0806884766 , -1099.2950439453 , 129.21875)
				sendSync(-1037.8922119141 , -1093.1202392578 , 129.21875)
				sendSync(-1037.6663818359 , -1085.0372314453 , 129.21875)
				sendSync(-1044.9567871094 , -1089.7015380859 , 129.21875)
				sendSync(-1045.1135253906 , -1096.0930175781 , 129.21875)
				sendSync(-1045.2983398438 , -1103.7348632813 , 129.21875)
				sendSync(-1067.7233886719 , -1150.251953125 , 129.21875)
				wait(200)
				freezeCharPosition(PLAYER_PED, true)
			  freezeCharPosition(PLAYER_PED, false)
			  setPlayerControl(PLAYER_HANDLE, true)
			  restoreCameraJumpcut()
			  clearCharTasksImmediately(PLAYER_PED)
				setCharCoordinates(playerPed, -1065.1319580078 , -1241.0500488281 , 129.21875)
				wait(1000)
				function sampev.onShowDialog(id, style, title, button1, button2, text)
						if id == (163) then return true end end
						function sampev.onSetPlayerHealth()
				        return true end
								function sampev.onSetPlayerPos()
										return true end
end) end





function ferma2()
    lua_thread.create(function()
			if isCharInAnyCar(PLAYER_PED) then
				local x, y, z = getCharCoordinates(PLAYER_PED)
				warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
			function sampev.onSetPlayerPos()
					return false end
			sendSync(620, -70.875, 1497.875, true, key, 590)
	function sampev.onSetPlayerHealth()
			return false end
	function sampev.onShowDialog(id, style, title, button1, button2, text)
			if id == (163)
		 then sampSendDialogResponse(id, 1, 1, nil)
			return false end end
						sendSync(-1058.375 , -1205.375 , 129.125, true, key, 452)
						wait(200)
			sendSync(-1078.2138671875 , -1202.4243164063 , 129.21875)
				sendSync(-1160.3321533203 , -1210.1242675781 , 129.21875)
				sendSync(-1078.2138671875 , -1202.4243164063 , 129.21875)
					sendSync(-1160.3321533203 , -1210.1242675781 , 129.21875)
				sendSync(-1201.5645751953 , -1190.0369873047 , 129.23558044434)
				sendSync(-1150.671875 , -1190.7435302734 , 129.21875)
				sendSync(-1201.5108642578 , -1189.8426513672 , 129.23558044434)
				sendSync(-1151.0535888672 , -1190.6385498047 , 129.21875)
				sendSync(-1171.9390869141 , -1205.4959716797 , 129.21875)
				sendSync(-1143.1284179688 , -1204.6383056641 , 129.21875)
				sendSync(-1149.8778076172 , -1175.4713134766 , 129.21875)
				sendSync(-1129.482421875 , -1183.5950927734 , 129.21875)
				sendSync(-1069.6241455078 , -1156.2984619141 , 129.21875)
				sendSync(-1117.400390625 , -1160.4718017578 , 129.25752258301)
				sendSync(-1122.0883789063 , -1156.6220703125 , 129.25752258301)
				sendSync(-1117.1483154297 , -1156.7745361328 , 129.25752258301)
				sendSync(-1113.7996826172 , -1165.4643554688 , 129.25752258301)
				sendSync(-1066.5128173828 , -1153.8707275391 , 129.21875)
				wait(200)
				freezeCharPosition(PLAYER_PED, true)
  freezeCharPosition(PLAYER_PED, false)
  setPlayerControl(PLAYER_HANDLE, true)
  restoreCameraJumpcut()
  clearCharTasksImmediately(PLAYER_PED)
				wait(500)
				function sampev.onShowDialog(id, style, title, button1, button2, text)
						if id == (163) then return true end end
						function sampev.onSetPlayerHealth()
				        return true end
								function sampev.onSetPlayerPos()
										return true end
end) end




function xleb()
    lua_thread.create(function()
			function sampev.onSetPlayerPos()
				return false end
		sendSync(620, -70.875, 1497.875, true, key, 590)
				sendSync(-1058.375 , -1205.375 , 129.125, true, key, 452)
	function sampev.onShowDialog(id, style, title, button1, button2, text)
			if id == (163)
		 then sampSendDialogResponse(id, 1, 4, nil)
			return false end end
			wait(200)
			tpseat(532)
			if isCharInAnyCar(PLAYER_PED) then
						local _, carId = sampGetVehicleIdByCarHandle(storeCarCharIsInNoSave(PLAYER_PED))
		 sampSendExitVehicle(carId)
			wait(500)
	wait(500)
	sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}Садим...', -1)
	state2 = true
	for i = 0, 3 do
	sendXyinc(-1184.8195800781 , -1052.3322753906 , 130.19100952148)
	wait(80)
	sendXyinc(-1167.6971435547 , -1053.2020263672 , 130.20133972168)
	wait(80)
	sendXyinc(-1151.3933105469 , -1053.7464599609 , 130.19334411621)
	wait(80)
	sendXyinc(-1134.0137939453 , -1054.3262939453 , 130.19599914551)
	wait(80)
	sendXyinc(-1050.8238525391 , -935.56671142578 , 129.21875)
	wait(80)
	sendXyinc(-1118.0919189453 , -1054.8570556641 , 130.1918182373)
	wait(80)
	sendXyinc(-1101.0570068359 , -1055.4250488281 , 130.19020080566)
	wait(80)
	sendXyinc(-1084.3741455078 , -1055.9908447266 , 130.1909942627)
	wait(80)
	sendXyinc(-1068.2556152344 , -1056.5369873047 , 130.18742370605)
	wait(80)
	sendXyinc(-1053.1962890625 , -1055.9291992188 , 130.18844604492)
	wait(80)
	sendXyinc(-1036.4910888672 , -1054.2888183594 , 130.18731689453)
	wait(80)
	sendXyinc(-1019.0628051758 , -1054.6781005859 , 130.19731140137)
	wait(80)
	sendXyinc(-1013.6936035156 , -1045.3316650391 , 130.19175720215)
	wait(80)
	sendXyinc(-1030.8416748047 , -1042.9921875 , 130.20088195801)
	wait(80)
	sendXyinc(-1047.4329833984 , -1044.2525634766 , 130.19842529297)
	wait(80)
	sendXyinc(-1062.0595703125 , -1044.6193847656 , 130.19194030762)
	wait(80)
	sendXyinc(-1078.8643798828 , -1044.0072021484 , 130.19439697266)
	wait(80)
	sendXyinc(-1094.7414550781 , -1043.4243164063 , 130.18957519531)
	wait(80)
	sendXyinc(-1111.1998291016 , -1042.8160400391 , 130.18994140625)
	wait(80)
	sendXyinc(-1126.6923828125 , -1042.2445068359 , 130.19657897949)
	wait(80)
	sendXyinc(-1142.5583496094 , -1041.5599365234 , 130.19645690918)
	wait(80)
	sendXyinc(-1159.8072509766 , -1041.4271240234 , 130.19561767578)
	wait(80)
	sendXyinc(-1176.6608886719 , -1041.2976074219 , 130.19090270996)
	wait(80)
	sendXyinc(-1180.6669921875 , -1031.6481933594 , 130.19264221191)
	wait(80)
	sendXyinc(-1122.1593017578 , -942.62969970703 , 129.18450927734)
	wait(80)
	sendXyinc(-1164.7746582031 , -1032.3605957031 , 130.19595336914)
	wait(80)
	sendXyinc(-1015.4928588867 , -987.66906738281 , 129.18127441406)
	wait(80)
	sendXyinc(-1148.0397949219 , -1033.1103515625 , 130.19245910645)
	sampSendExitVehicle(carId)
	wait(80)
	sendXyinc(-1130.4932861328 , -1033.8966064453 , 130.19757080078)
	wait(80)
	sendXyinc(-1115.9555664063 , -1034.5512695313 , 130.1854095459)
	wait(80)
	sendXyinc(-1099.6478271484 , -1035.2768554688 , 130.19226074219)
	wait(80)
	sendXyinc(-1082.8276367188 , -1036.0238037109 , 130.1915435791)
	wait(80)
	sendXyinc(-1067.095703125 , -1036.7294921875 , 130.1911315918)
	wait(80)
	sendXyinc(-1049.8916015625 , -1036.4739990234 , 130.18692016602)
	wait(80)
	sendXyinc(-1033.6154785156 , -1034.7426757813 , 130.19407653809)
	wait(80)
	sendXyinc(-1015.5368041992 , -1035.0395507813 , 130.1969909668)
	wait(80)
	sendXyinc(-1012.2548828125 , -1026.1528320313 , 130.18894958496)
	wait(80)
	sendXyinc(-1029.2186279297 , -1025.1087646484 , 130.2006072998)
	wait(80)
	sendXyinc(-1046.2833251953 , -1026.3831787109 , 130.19161987305)
	wait(80)
	sendXyinc(-1062.2927246094 , -1026.6574707031 , 130.19200134277)
	wait(80)
	sendXyinc(-1081.4921875 , -1026.0928955078 , 130.19631958008)
	wait(80)
	sendXyinc(-1096.9699707031 , -1025.5728759766 , 130.1951751709)
	wait(80)
	sendXyinc(-1113.4733886719 , -1025.0187988281 , 130.19421386719)
	wait(80)
	sendXyinc(-1128.9873046875 , -1024.4978027344 , 130.19677734375)
	wait(80)
	sendXyinc(-1146.3106689453 , -1023.9155883789 , 130.19612121582)
	wait(80)
	sendXyinc(-1162.4986572266 , -1023.3715820313 , 130.19926452637)
	wait(80)
	sendXyinc(-1180.3331298828 , -1022.772644043 , 130.19683837891)
	wait(80)
	sendXyinc(-1183.1871337891 , -1014.6760253906 , 130.19535827637)
	wait(80)
	sendXyinc(-1166.9425048828 , -1014.3114624023 , 130.19679260254)
	wait(80)
	sendXyinc(-1151.8752441406 , -1014.1510620117 , 130.19564819336)
	wait(80)
	sendXyinc(-1136.3829345703 , -1013.9863891602 , 130.19715881348)
	wait(80)
	sendXyinc(-1120.3204345703 , -1013.8160400391 , 130.19718933105)
	wait(80)
	sendXyinc(-1104.5770263672 , -1013.6488037109 , 130.19404602051)
	wait(80)
	sendXyinc(-1087.8819580078 , -1013.4713134766 , 130.1978302002)
	wait(80)
	sendXyinc(-1069.5363769531 , -1013.669128418 , 130.19657897949)
	wait(80)
	sendXyinc(-1052.0383300781 , -1014.1591796875 , 130.19232177734)
	wait(80)
	sendXyinc(-1034.0043945313 , -1014.6641845703 , 130.1854095459)
	wait(80)
	sendXyinc(-1016.9962158203 , -1015.1454467773 , 130.18951416016)
	wait(80)
	sendXyinc(-1014.6724243164 , -1008.4046020508 , 130.19047546387)
	wait(80)
	sendXyinc(-1029.4422607422 , -1006.6990356445 , 130.18930053711)
	sampSendExitVehicle(carId)
	wait(80)
	sendXyinc(-1047.2532958984 , -1006.1258544922 , 130.19004821777)
	wait(80)
	sendXyinc(-1064.0412597656 , -1005.5880126953 , 130.18713378906)
	wait(80)
	sendXyinc(-1082.1577148438 , -1005.0133666992 , 130.19442749023)
	wait(80)
	sendXyinc(-1099.9842529297 , -1004.4475097656 , 130.19532775879)
	wait(80)
	sendXyinc(-1114.3695068359 , -1003.9912719727 , 130.19139099121)
	wait(80)
	sendXyinc(-1131.5334472656 , -1003.4471435547 , 130.19563293457)
	wait(80)
	sendXyinc(-1148.0867919922 , -1002.9217529297 , 130.19729614258)
	wait(80)
	sendXyinc(-1165.7298583984 , -1003.2490844727 , 130.19467163086)
	wait(80)
	sendXyinc(-1179.25 , -1004.1866455078 , 130.19879150391)
	wait(80)
	sendXyinc(-1183.7269287109 , -996.39428710938 , 130.20295715332)
	wait(80)
	sendXyinc(-1168.4384765625 , -996.91766357422 , 130.19569396973)
	wait(80)
	sendXyinc(-1151.9339599609 , -997.482421875 , 130.19569396973)
	wait(80)
	sendXyinc(-1136.1557617188 , -998.02252197266 , 130.19569396973)
	wait(80)
	sendXyinc(-1120.0382080078 , -998.47924804688 , 130.19479370117)
	wait(80)
	sendXyinc(-1105.3494873047 , -998.83142089844 , 130.19841003418)
	wait(80)
	sendXyinc(-1087.9929199219 , -998.65814208984 , 130.19526672363)
	wait(80)
	sendXyinc(-1069.7652587891 , -998.29150390625 , 130.19486999512)
	wait(80)
	sendXyinc(-1051.8720703125 , -997.84454345703 , 130.19613647461)
	wait(80)
	sendXyinc(-1034.9555664063 , -997.68395996094 , 130.19207763672)
	wait(80)
	sendXyinc(-1018.1022338867 , -998.31280517578 , 130.18984985352)
	wait(80)
	sendXyinc(-1012.7761230469 , -988.97265625 , 130.19337463379)
	wait(80)
	sendXyinc(-1029.3232421875 , -987.79724121094 , 130.18991088867)
	wait(80)
	sendXyinc(-1046.7153320313 , -987.67736816406 , 130.19560241699)
	wait(80)
	sendXyinc(-1064.6959228516 , -988.27252197266 , 130.19567871094)
	wait(80)
	sendXyinc(-1083.8815917969 , -988.66412353516 , 130.19569396973)
	wait(80)
	sendXyinc(-1102.2172851563 , -988.83703613281 , 130.19554138184)
	wait(80)
	sendXyinc(-1115.6080322266 , -988.96319580078 , 130.19900512695)
	wait(80)
	sendXyinc(-1132.5366210938 , -988.58380126953 , 130.19494628906)
	wait(80)
	sendXyinc(-1148.7962646484 , -987.96234130859 , 130.19874572754)
	wait(80)
	sendXyinc(-1163.3626708984 , -987.40563964844 , 130.19799804688)
	wait(80)
	sendXyinc(-1180.580078125 , -986.84564208984 , 130.19578552246)
	wait(80)
	sendXyinc(-1184.7592773438 , -975.40167236328 , 130.19041442871)
	wait(80)
	sendXyinc(-1171.3688964844 , -975.34655761719 , 130.19473266602)
	wait(80)
	sendXyinc(-1155.9846191406 , -975.28503417969 , 130.19287109375)
	wait(80)
	sendXyinc(-1139.8240966797 , -975.21691894531 , 130.19555664063)
	wait(80)
	sendXyinc(-1121.8305664063 , -975.14050292969 , 130.19496154785)
	wait(80)
	sendXyinc(-1106.3555908203 , -975.07604980469 , 130.19555664063)
	sampSendExitVehicle(carId)
	wait(80)
	sendXyinc(-1088.1408691406 , -974.99822998047 , 130.19560241699)
	wait(80)
	sendXyinc(-1069.1636962891 , -974.91809082031 , 130.1955871582)
	wait(80)
	sendXyinc(-1051.9157714844 , -975.51446533203 , 130.1946105957)
	wait(80)
	sendXyinc(-1034.4604492188 , -977.50671386719 , 130.19403076172)
	wait(80)
	sendXyinc(-1018.25390625 , -978.81292724609 , 130.19506835938)
	wait(80)
	sendXyinc(-1013.5940551758 , -972.56420898438 , 130.19602966309)
	wait(80)
	sendXyinc(-1031.1851806641 , -970.40496826172 , 130.19674682617)
	wait(80)
	sendXyinc(-1048.5823974609 , -970.04852294922 , 130.19718933105)
	wait(80)
	sendXyinc(-1066.4976806641 , -969.68139648438 , 130.19233703613)
	wait(80)
	sendXyinc(-1083.9136962891 , -969.32373046875 , 130.1861114502)
	wait(80)
	sendXyinc(-1101.7459716797 , -968.95812988281 , 130.1979675293)
	wait(80)
	sendXyinc(-1117.4064941406 , -968.63696289063 , 130.19570922852)
	wait(80)
	sendXyinc(-1134.9046630859 , -968.27807617188 , 130.2087097168)
	wait(80)
	sendXyinc(-1166.8852539063 , -967.96234130859 , 130.18882751465)
	wait(80)
	sendXyinc(-1180.3458251953 , -968.20825195313 , 130.19871520996)
	wait(80)
	sendXyinc(-1185.6041259766 , -959.85705566406 , 130.19538879395)
	wait(80)
	sendXyinc(-1172.7255859375 , -959.98022460938 , 130.19062805176)
	wait(80)
	sendXyinc(-1156.8934326172 , -960.13275146484 , 130.20153808594)
	wait(80)
	sendXyinc(-1140.2335205078 , -960.29638671875 , 130.19514465332)
	wait(80)
	sendXyinc(-1123.0559082031 , -960.46520996094 , 130.1983795166)
	wait(80)
	sendXyinc(-1107.3172607422 , -960.62036132813 , 130.19633483887)
	wait(80)
	sendXyinc(-1087.8856201172 , -960.81115722656 , 130.19593811035)
	wait(80)
	sendXyinc(-1070.9083251953 , -960.97784423828 , 130.19247436523)
	wait(80)
	sendXyinc(-1052.9862060547 , -961.15496826172 , 130.19606018066)
	wait(80)
	sendXyinc(-1034.5322265625 , -961.33636474609 , 130.19659423828)
	wait(80)
	sendXyinc(-1017.9752807617 , -961.89971923828 , 130.1964263916)
	wait(80)
	sendXyinc(-1013.8649902344 , -954.41088867188 , 130.20341491699)
	wait(80)
	sendXyinc(-1031.0500488281 , -953.95947265625 , 130.19964599609)
	wait(80)
	sendXyinc(-1047.9971923828 , -953.45428466797 , 130.1957244873)
	wait(80)
	sendXyinc(-1066.2362060547 , -952.91058349609 , 130.19560241699)
	wait(80)
	sendXyinc(-1082.3026123047 , -952.43194580078 , 130.18946838379)
	sampSendExitVehicle(carId)
	wait(80)
	sendXyinc(-1101.58203125 , -951.85729980469 , 130.19560241699)
	wait(80)
	sendXyinc(-1118.7016601563 , -951.49438476563 , 130.19491577148)
	wait(80)
	sendXyinc(-1135.6800537109 , -951.43658447266 , 130.19570922852)
	wait(80)
	sendXyinc(-1152.0148925781 , -951.38165283203 , 130.19418334961)
	wait(80)
	sendXyinc(-1167.5949707031 , -951.43243408203 , 130.19032287598)
	wait(80)
	sendXyinc(-1180.9913330078 , -951.79058837891 , 130.18417358398)
	wait(80)
	sendXyinc(-1183.08984375 , -943.17840576172 , 130.19268798828)
	wait(80)
	sendXyinc(-1172.3802490234 , -943.20031738281 , 130.19581604004)
	wait(80)
	sendXyinc(-1156.9409179688 , -943.23382568359 , 130.19589233398)
	wait(80)
	sendXyinc(-1140.5533447266 , -943.26788330078 , 130.19076538086)
	wait(80)
	sendXyinc(-1123.0083007813 , -943.22369384766 , 130.19425964355)
	wait(80)
	sendXyinc(-1106.0552978516 , -943.13781738281 , 130.19743347168)
	wait(80)
	sendXyinc(-1087.0650634766 , -943.04064941406 , 130.19499206543)
	wait(80)
	sendXyinc(-1071.3944091797 , -942.96032714844 , 130.18821716309)
	wait(80)
	sendXyinc(-1053.5908203125 , -942.86944580078 , 130.19563293457)
	wait(80)
	sendXyinc(-1036.2215576172 , -943.64904785156 , 130.19497680664)
	wait(80)
	sendXyinc(-1018.6890869141 , -944.68878173828 , 130.19529724121)
	wait(80)
	sendXyinc(-1014.5294189453 , -936.02178955078 , 130.1994934082)
	wait(80)
	sendXyinc(-1030.1392822266 , -935.18298339844 , 130.19946289063)
	wait(80)
	sendXyinc(-1048.5209960938 , -935.33825683594 , 130.20599365234)
	wait(80)
	sendXyinc(-1065.3950195313 , -935.13934326172 , 130.19274902344)
	wait(80)
	sendXyinc(-1082.2694091797 , -934.48883056641 , 130.19486999512)
	wait(80)
	sendXyinc(-1101.6710205078 , -933.74072265625 , 130.19422912598)
	wait(80)
	sendXyinc(-1117.8298339844 , -933.44708251953 , 130.19226074219)
	wait(80)
	sendXyinc(-1136.8430175781 , -933.84594726563 , 130.19071960449)
	wait(80)
	sendXyinc(-1152.0935058594 , -934.1650390625 , 130.19425964355)
	wait(80)
	sendXyinc(-1167.4913330078 , -933.98419189453 , 130.18716430664)
	wait(80)
	sendXyinc(-1178.7287597656 , -932.78643798828 , 130.19563293457)
	wait(80)
	sendXyinc(-1157.6019287109 , -924.49993896484 , 130.1950378418)
	wait(80)
	sendXyinc(-1140.6333007813 , -924.93041992188 , 130.20491027832)
	wait(80)
	sendXyinc(-1122.4046630859 , -923.99633789063 , 130.19618225098)
	wait(80)
	sendXyinc(-1104.8123779297 , -923.53491210938 , 130.19567871094)
	wait(80)
	sendXyinc(-1087.9545898438 , -924.31951904297 , 130.19006347656)
	wait(80)
	sendXyinc(-1070.6575927734 , -924.80010986328 , 130.19448852539)
	wait(80)
	sendXyinc(-1052.8448486328 , -924.7314453125 , 130.20024108887)
	wait(80)
	sendXyinc(-1035.3195800781 , -924.666015625 , 130.19331359863)
	wait(80)
	sendXyinc(-1018.7369384766 , -924.6142578125 , 130.19248962402)
	wait(80)
	sendXyinc(-1151.9686279297 , -966.08807373047 , 130.19546508789)
	wait(80)
	sendXyinc(-1069.37109375 , -926.96069335938 , 130.19764709473)
	wait(80)
	sendXyinc(-1033.7274169922 , -924.84887695313 , 130.19546508789)
	wait(80)
	sendXyinc(-1117.9122314453 , -922.12902832031 , 130.19729614258)
	sampSendExitVehicle(carId)
	wait(80)
	sendXyinc(-1138.5100097656 , -968.22125244141 , 129.21875)
	wait(80)
	sendXyinc(-1168.0202636719 , -933.05218505859 , 130.19552612305)
	wait(80)
	sendXyinc(-1178.9865722656 , -939.32623291016 , 130.19653320313)
	state2 = false
	end
	sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}Посадили', -1)
wait(500)
sendXyinc(-1051.6761474609 , -1170.0534667969 , 130.03297424316)
wait(1000)
function sampev.onShowDialog(id, style, title, button1, button2, text)
		if id == (163) then
		return true end end
		function sampev.onSetPlayerPos()
				return false end
	end end) end






function posadit()
    lua_thread.create(function()
			if isCharInAnyCar(PLAYER_PED) then
						local _, carId = sampGetVehicleIdByCarHandle(storeCarCharIsInNoSave(PLAYER_PED))
		 sampSendExitVehicle(carId)
			wait(500)
			local data = allocateMemory(67)
		sampStorePlayerIncarData(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)), data)
		setStructElement(data, 6, 2, 2, true)
		setStructFloatElement(data, 24, -1118.9632568359, false) --    position
		setStructFloatElement(data, 28, -1228.2486572266, false)
		setStructFloatElement(data, 32, 129.18315124512, false)
		sampSendIncarData(data)
		freeMemory(data)
	wait(1000)
sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}Садим...', -1)
state2 = true
for i = 0, 3 do
sendXyinc(-1017.966003418 , -981.03643798828 , 129.18182373047)
	wait(80)
sendXyinc(-1031.4731445313 , -977.96917724609 , 129.18104553223)
	wait(80)
sendXyinc(-1035.4968261719 , -970.06677246094 , 129.18206787109)
	wait(80)
sendXyinc(-1017.6871948242 , -935.72399902344 , 129.18424987793)
	wait(80)
sendXyinc(-1031.2945556641 , -934.82287597656 , 129.17698669434)
	wait(80)
sendXyinc(-1064.96875 , -977.62738037109 , 129.18241882324)
	wait(80)
sendXyinc(-1067.240234375 , -986.37121582031 , 129.18354797363)
	wait(80)
sendXyinc(-1083.7222900391 , -986.22003173828 , 129.18846130371)
	wait(80)
sendXyinc(-1086.8680419922 , -979.67065429688 , 129.18772888184)
	wait(80)
sendXyinc(-1068.7155761719 , -963.10070800781 , 129.18553161621)
	wait(80)
sendXyinc(-1187.5034179688 , -967.43579101563 , 129.17526245117)
	wait(80)
sendXyinc(-1184.8089599609 , -960.60192871094 , 129.18095397949)
	wait(80)
sendXyinc(-1183.111328125 , -953.10083007813 , 129.17778015137)
	wait(80)
sendXyinc(-1171.4235839844 , -952.28570556641 , 129.18690490723)
	wait(80)
sendXyinc(-1157.1417236328 , -924.65643310547 , 129.18937683105)
	wait(80)
sendXyinc(-1140.8376464844 , -924.03308105469 , 129.18664550781)
	wait(80)
sendXyinc(-1140.2690429688 , -942.349609375 , 129.18139648438)
	wait(80)
sendXyinc(-1122.8775634766 , -954.29522705078 , 129.18769836426)
	wait(80)
sendXyinc(-1121.3538818359 , -958.34436035156 , 129.18267822266)
	wait(80)
sendXyinc(-1137.0755615234 , -960.12530517578 , 129.18241882324)
	wait(80)
sendXyinc(-1152.0362548828 , -961.8271484375 , 129.1837310791)
	wait(80)
sendXyinc(-1154.3587646484 , -966.80902099609 , 129.18106079102)
	wait(80)
sendXyinc(-1104.8856201172 , -942.47393798828 , 129.18640136719)
	wait(80)
	sendXyinc(-1102.8657226563 , -934.41186523438 , 129.18856811523)
	wait(80)
	sendXyinc(-1087.0789794922 , -932.54382324219 , 129.18962097168)
	wait(80)
	sendXyinc(-1083.9107666016 , -925.92034912109 , 129.1877746582)
	wait(80)
sendXyinc(-1184.8195800781 , -1052.3322753906 , 130.19100952148)
wait(80)
sendXyinc(-1167.6971435547 , -1053.2020263672 , 130.20133972168)
wait(80)
sendXyinc(-1151.3933105469 , -1053.7464599609 , 130.19334411621)
wait(80)
sendXyinc(-1134.0137939453 , -1054.3262939453 , 130.19599914551)
wait(80)
sendXyinc(-1050.8238525391 , -935.56671142578 , 129.21875)
wait(80)
sendXyinc(-1118.0919189453 , -1054.8570556641 , 130.1918182373)
wait(80)
sendXyinc(-1101.0570068359 , -1055.4250488281 , 130.19020080566)
wait(80)
sendXyinc(-1084.3741455078 , -1055.9908447266 , 130.1909942627)
wait(80)
sendXyinc(-1068.2556152344 , -1056.5369873047 , 130.18742370605)
wait(80)
sendXyinc(-1053.1962890625 , -1055.9291992188 , 130.18844604492)
wait(80)
sendXyinc(-1036.4910888672 , -1054.2888183594 , 130.18731689453)
wait(80)
sendXyinc(-1019.0628051758 , -1054.6781005859 , 130.19731140137)
wait(80)
sendXyinc(-1013.6936035156 , -1045.3316650391 , 130.19175720215)
wait(80)
sendXyinc(-1030.8416748047 , -1042.9921875 , 130.20088195801)
wait(80)
sendXyinc(-1047.4329833984 , -1044.2525634766 , 130.19842529297)
wait(80)
sendXyinc(-1062.0595703125 , -1044.6193847656 , 130.19194030762)
wait(80)
sendXyinc(-1078.8643798828 , -1044.0072021484 , 130.19439697266)
wait(80)
sendXyinc(-1094.7414550781 , -1043.4243164063 , 130.18957519531)
wait(80)
sendXyinc(-1111.1998291016 , -1042.8160400391 , 130.18994140625)
wait(80)
sendXyinc(-1126.6923828125 , -1042.2445068359 , 130.19657897949)
wait(80)
sendXyinc(-1142.5583496094 , -1041.5599365234 , 130.19645690918)
wait(80)
sendXyinc(-1159.8072509766 , -1041.4271240234 , 130.19561767578)
wait(80)
sendXyinc(-1176.6608886719 , -1041.2976074219 , 130.19090270996)
wait(80)
sendXyinc(-1180.6669921875 , -1031.6481933594 , 130.19264221191)
wait(80)
sendXyinc(-1122.1593017578 , -942.62969970703 , 129.18450927734)
wait(80)
sendXyinc(-1164.7746582031 , -1032.3605957031 , 130.19595336914)
wait(80)
sendXyinc(-1015.4928588867 , -987.66906738281 , 129.18127441406)
wait(80)
sendXyinc(-1148.0397949219 , -1033.1103515625 , 130.19245910645)
sampSendExitVehicle(carId)
wait(80)
sendXyinc(-1130.4932861328 , -1033.8966064453 , 130.19757080078)
wait(80)
sendXyinc(-1115.9555664063 , -1034.5512695313 , 130.1854095459)
wait(80)
sendXyinc(-1099.6478271484 , -1035.2768554688 , 130.19226074219)
wait(80)
sendXyinc(-1082.8276367188 , -1036.0238037109 , 130.1915435791)
wait(80)
sendXyinc(-1067.095703125 , -1036.7294921875 , 130.1911315918)
wait(80)
sendXyinc(-1049.8916015625 , -1036.4739990234 , 130.18692016602)
wait(80)
sendXyinc(-1033.6154785156 , -1034.7426757813 , 130.19407653809)
wait(80)
sendXyinc(-1015.5368041992 , -1035.0395507813 , 130.1969909668)
wait(80)
sendXyinc(-1012.2548828125 , -1026.1528320313 , 130.18894958496)
wait(80)
sendXyinc(-1029.2186279297 , -1025.1087646484 , 130.2006072998)
wait(80)
sendXyinc(-1046.2833251953 , -1026.3831787109 , 130.19161987305)
wait(80)
sendXyinc(-1062.2927246094 , -1026.6574707031 , 130.19200134277)
wait(80)
sendXyinc(-1081.4921875 , -1026.0928955078 , 130.19631958008)
wait(80)
sendXyinc(-1096.9699707031 , -1025.5728759766 , 130.1951751709)
wait(80)
sendXyinc(-1113.4733886719 , -1025.0187988281 , 130.19421386719)
wait(80)
sendXyinc(-1128.9873046875 , -1024.4978027344 , 130.19677734375)
wait(80)
sendXyinc(-1146.3106689453 , -1023.9155883789 , 130.19612121582)
wait(80)
sendXyinc(-1162.4986572266 , -1023.3715820313 , 130.19926452637)
wait(80)
sendXyinc(-1180.3331298828 , -1022.772644043 , 130.19683837891)
wait(80)
sendXyinc(-1183.1871337891 , -1014.6760253906 , 130.19535827637)
wait(80)
sendXyinc(-1166.9425048828 , -1014.3114624023 , 130.19679260254)
wait(80)
sendXyinc(-1151.8752441406 , -1014.1510620117 , 130.19564819336)
wait(80)
sendXyinc(-1136.3829345703 , -1013.9863891602 , 130.19715881348)
wait(80)
sendXyinc(-1120.3204345703 , -1013.8160400391 , 130.19718933105)
wait(80)
sendXyinc(-1104.5770263672 , -1013.6488037109 , 130.19404602051)
wait(80)
sendXyinc(-1087.8819580078 , -1013.4713134766 , 130.1978302002)
wait(80)
sendXyinc(-1069.5363769531 , -1013.669128418 , 130.19657897949)
wait(80)
sendXyinc(-1052.0383300781 , -1014.1591796875 , 130.19232177734)
wait(80)
sendXyinc(-1034.0043945313 , -1014.6641845703 , 130.1854095459)
wait(80)
sendXyinc(-1016.9962158203 , -1015.1454467773 , 130.18951416016)
wait(80)
sendXyinc(-1014.6724243164 , -1008.4046020508 , 130.19047546387)
wait(80)
sendXyinc(-1029.4422607422 , -1006.6990356445 , 130.18930053711)
sampSendExitVehicle(carId)
wait(80)
sendXyinc(-1047.2532958984 , -1006.1258544922 , 130.19004821777)
wait(80)
sendXyinc(-1064.0412597656 , -1005.5880126953 , 130.18713378906)
wait(80)
sendXyinc(-1082.1577148438 , -1005.0133666992 , 130.19442749023)
wait(80)
sendXyinc(-1099.9842529297 , -1004.4475097656 , 130.19532775879)
wait(80)
sendXyinc(-1114.3695068359 , -1003.9912719727 , 130.19139099121)
wait(80)
sendXyinc(-1131.5334472656 , -1003.4471435547 , 130.19563293457)
wait(80)
sendXyinc(-1148.0867919922 , -1002.9217529297 , 130.19729614258)
wait(80)
sendXyinc(-1165.7298583984 , -1003.2490844727 , 130.19467163086)
wait(80)
sendXyinc(-1179.25 , -1004.1866455078 , 130.19879150391)
wait(80)
sendXyinc(-1183.7269287109 , -996.39428710938 , 130.20295715332)
wait(80)
sendXyinc(-1168.4384765625 , -996.91766357422 , 130.19569396973)
wait(80)
sendXyinc(-1151.9339599609 , -997.482421875 , 130.19569396973)
wait(80)
sendXyinc(-1136.1557617188 , -998.02252197266 , 130.19569396973)
wait(80)
sendXyinc(-1120.0382080078 , -998.47924804688 , 130.19479370117)
wait(80)
sendXyinc(-1105.3494873047 , -998.83142089844 , 130.19841003418)
wait(80)
sendXyinc(-1087.9929199219 , -998.65814208984 , 130.19526672363)
wait(80)
sendXyinc(-1069.7652587891 , -998.29150390625 , 130.19486999512)
wait(80)
sendXyinc(-1051.8720703125 , -997.84454345703 , 130.19613647461)
wait(80)
sendXyinc(-1034.9555664063 , -997.68395996094 , 130.19207763672)
wait(80)
sendXyinc(-1018.1022338867 , -998.31280517578 , 130.18984985352)
wait(80)
sendXyinc(-1012.7761230469 , -988.97265625 , 130.19337463379)
wait(80)
sendXyinc(-1029.3232421875 , -987.79724121094 , 130.18991088867)
wait(80)
sendXyinc(-1046.7153320313 , -987.67736816406 , 130.19560241699)
wait(80)
sendXyinc(-1064.6959228516 , -988.27252197266 , 130.19567871094)
wait(80)
sendXyinc(-1083.8815917969 , -988.66412353516 , 130.19569396973)
wait(80)
sendXyinc(-1102.2172851563 , -988.83703613281 , 130.19554138184)
wait(80)
sendXyinc(-1115.6080322266 , -988.96319580078 , 130.19900512695)
wait(80)
sendXyinc(-1132.5366210938 , -988.58380126953 , 130.19494628906)
wait(80)
sendXyinc(-1148.7962646484 , -987.96234130859 , 130.19874572754)
wait(80)
sendXyinc(-1163.3626708984 , -987.40563964844 , 130.19799804688)
wait(80)
sendXyinc(-1180.580078125 , -986.84564208984 , 130.19578552246)
wait(80)
sendXyinc(-1184.7592773438 , -975.40167236328 , 130.19041442871)
wait(80)
sendXyinc(-1171.3688964844 , -975.34655761719 , 130.19473266602)
wait(80)
sendXyinc(-1155.9846191406 , -975.28503417969 , 130.19287109375)
wait(80)
sendXyinc(-1139.8240966797 , -975.21691894531 , 130.19555664063)
wait(80)
sendXyinc(-1121.8305664063 , -975.14050292969 , 130.19496154785)
wait(80)
sendXyinc(-1106.3555908203 , -975.07604980469 , 130.19555664063)
sampSendExitVehicle(carId)
wait(80)
sendXyinc(-1088.1408691406 , -974.99822998047 , 130.19560241699)
wait(80)
sendXyinc(-1069.1636962891 , -974.91809082031 , 130.1955871582)
wait(80)
sendXyinc(-1051.9157714844 , -975.51446533203 , 130.1946105957)
wait(80)
sendXyinc(-1034.4604492188 , -977.50671386719 , 130.19403076172)
wait(80)
sendXyinc(-1018.25390625 , -978.81292724609 , 130.19506835938)
wait(80)
sendXyinc(-1013.5940551758 , -972.56420898438 , 130.19602966309)
wait(80)
sendXyinc(-1031.1851806641 , -970.40496826172 , 130.19674682617)
wait(80)
sendXyinc(-1048.5823974609 , -970.04852294922 , 130.19718933105)
wait(80)
sendXyinc(-1066.4976806641 , -969.68139648438 , 130.19233703613)
wait(80)
sendXyinc(-1083.9136962891 , -969.32373046875 , 130.1861114502)
wait(80)
sendXyinc(-1101.7459716797 , -968.95812988281 , 130.1979675293)
wait(80)
sendXyinc(-1117.4064941406 , -968.63696289063 , 130.19570922852)
wait(80)
sendXyinc(-1134.9046630859 , -968.27807617188 , 130.2087097168)
wait(80)
sendXyinc(-1166.8852539063 , -967.96234130859 , 130.18882751465)
wait(80)
sendXyinc(-1180.3458251953 , -968.20825195313 , 130.19871520996)
wait(80)
sendXyinc(-1185.6041259766 , -959.85705566406 , 130.19538879395)
wait(80)
sendXyinc(-1172.7255859375 , -959.98022460938 , 130.19062805176)
wait(80)
sendXyinc(-1156.8934326172 , -960.13275146484 , 130.20153808594)
wait(80)
sendXyinc(-1140.2335205078 , -960.29638671875 , 130.19514465332)
wait(80)
sendXyinc(-1123.0559082031 , -960.46520996094 , 130.1983795166)
wait(80)
sendXyinc(-1107.3172607422 , -960.62036132813 , 130.19633483887)
wait(80)
sendXyinc(-1087.8856201172 , -960.81115722656 , 130.19593811035)
wait(80)
sendXyinc(-1070.9083251953 , -960.97784423828 , 130.19247436523)
wait(80)
sendXyinc(-1052.9862060547 , -961.15496826172 , 130.19606018066)
wait(80)
sendXyinc(-1034.5322265625 , -961.33636474609 , 130.19659423828)
wait(80)
sendXyinc(-1017.9752807617 , -961.89971923828 , 130.1964263916)
wait(80)
sendXyinc(-1013.8649902344 , -954.41088867188 , 130.20341491699)
wait(80)
sendXyinc(-1031.0500488281 , -953.95947265625 , 130.19964599609)
wait(80)
sendXyinc(-1047.9971923828 , -953.45428466797 , 130.1957244873)
wait(80)
sendXyinc(-1066.2362060547 , -952.91058349609 , 130.19560241699)
wait(80)
sendXyinc(-1082.3026123047 , -952.43194580078 , 130.18946838379)
sampSendExitVehicle(carId)
wait(80)
sendXyinc(-1101.58203125 , -951.85729980469 , 130.19560241699)
wait(80)
sendXyinc(-1118.7016601563 , -951.49438476563 , 130.19491577148)
wait(80)
sendXyinc(-1135.6800537109 , -951.43658447266 , 130.19570922852)
wait(80)
sendXyinc(-1152.0148925781 , -951.38165283203 , 130.19418334961)
wait(80)
sendXyinc(-1167.5949707031 , -951.43243408203 , 130.19032287598)
wait(80)
sendXyinc(-1180.9913330078 , -951.79058837891 , 130.18417358398)
wait(80)
sendXyinc(-1183.08984375 , -943.17840576172 , 130.19268798828)
wait(80)
sendXyinc(-1172.3802490234 , -943.20031738281 , 130.19581604004)
wait(80)
sendXyinc(-1156.9409179688 , -943.23382568359 , 130.19589233398)
wait(80)
sendXyinc(-1140.5533447266 , -943.26788330078 , 130.19076538086)
wait(80)
sendXyinc(-1123.0083007813 , -943.22369384766 , 130.19425964355)
wait(80)
sendXyinc(-1106.0552978516 , -943.13781738281 , 130.19743347168)
wait(80)
sendXyinc(-1087.0650634766 , -943.04064941406 , 130.19499206543)
wait(80)
sendXyinc(-1071.3944091797 , -942.96032714844 , 130.18821716309)
wait(80)
sendXyinc(-1053.5908203125 , -942.86944580078 , 130.19563293457)
wait(80)
sendXyinc(-1036.2215576172 , -943.64904785156 , 130.19497680664)
wait(80)
sendXyinc(-1018.6890869141 , -944.68878173828 , 130.19529724121)
wait(80)
sendXyinc(-1014.5294189453 , -936.02178955078 , 130.1994934082)
wait(80)
sendXyinc(-1030.1392822266 , -935.18298339844 , 130.19946289063)
wait(80)
sendXyinc(-1048.5209960938 , -935.33825683594 , 130.20599365234)
wait(80)
sendXyinc(-1065.3950195313 , -935.13934326172 , 130.19274902344)
wait(80)
sendXyinc(-1082.2694091797 , -934.48883056641 , 130.19486999512)
wait(80)
sendXyinc(-1101.6710205078 , -933.74072265625 , 130.19422912598)
wait(80)
sendXyinc(-1117.8298339844 , -933.44708251953 , 130.19226074219)
wait(80)
sendXyinc(-1136.8430175781 , -933.84594726563 , 130.19071960449)
wait(80)
sendXyinc(-1152.0935058594 , -934.1650390625 , 130.19425964355)
wait(80)
sendXyinc(-1167.4913330078 , -933.98419189453 , 130.18716430664)
wait(80)
sendXyinc(-1178.7287597656 , -932.78643798828 , 130.19563293457)
wait(80)
sendXyinc(-1157.6019287109 , -924.49993896484 , 130.1950378418)
wait(80)
sendXyinc(-1140.6333007813 , -924.93041992188 , 130.20491027832)
wait(80)
sendXyinc(-1122.4046630859 , -923.99633789063 , 130.19618225098)
wait(80)
sendXyinc(-1104.8123779297 , -923.53491210938 , 130.19567871094)
wait(80)
sendXyinc(-1087.9545898438 , -924.31951904297 , 130.19006347656)
wait(80)
sendXyinc(-1070.6575927734 , -924.80010986328 , 130.19448852539)
wait(80)
sendXyinc(-1052.8448486328 , -924.7314453125 , 130.20024108887)
wait(80)
sendXyinc(-1035.3195800781 , -924.666015625 , 130.19331359863)
wait(80)
sendXyinc(-1018.7369384766 , -924.6142578125 , 130.19248962402)
wait(80)
sendXyinc(-1151.9686279297 , -966.08807373047 , 130.19546508789)
wait(80)
sendXyinc(-1069.37109375 , -926.96069335938 , 130.19764709473)
wait(80)
sendXyinc(-1033.7274169922 , -924.84887695313 , 130.19546508789)
wait(80)
sendXyinc(-1117.9122314453 , -922.12902832031 , 130.19729614258)
sampSendExitVehicle(carId)
wait(80)
sendXyinc(-1138.5100097656 , -968.22125244141 , 129.21875)
wait(80)
sendXyinc(-1168.0202636719 , -933.05218505859 , 130.19552612305)
wait(80)
sendXyinc(-1178.9865722656 , -939.32623291016 , 130.19653320313)
state2 = false
end
sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}Посадили', -1)
 end end) end






function cement()
  lua_thread.create(function()
		if isCharInAnyCar(PLAYER_PED) then
			local x, y, z = getCharCoordinates(PLAYER_PED)
			warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
sendSync(-2401.75, 2351.5, 4.875, true, key, 483)
function sampev.onShowDialog(id, style, title, button1, button2, text)
    if id == (179) then sampSendDialogResponse(id, 1, _, nil)
    return false end end
    for i = 0, 12 do wait(50)
  sendSync(-2387.1374511719 , 2365.0344238281 , 3.8995151519775)
      sendSync(-2060.998046875 , 316.69290161133 , 1009.2188110352) end
wait(200)
sendSync(-2401.75, 2351.5, 4.875, true, key, 483)
wait(500)
function sampev.onShowDialog(id, style, title, button1, button2, text)
    if id == (179) then return false end end
end) end


function cement2()
	lua_thread.create(function()
		if isCharInAnyCar(PLAYER_PED) then
			local x, y, z = getCharCoordinates(PLAYER_PED)
			warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
		function sampev.onServerMessage(color, text)
		if string.find(text, "Воу, воу! Палечхе!", 1, true) then
			 return false end end
		function sampev.onShowDialog(id, style, title, button1, button2, text)
		    if id == (179) then sampSendDialogResponse(id, 1, _, nil)
		    return false end end
		function sampev.onSetPlayerArmedWeapon()
			return false end
sendSync(-2401.75, 2351.5, 4.875, true, key, 483)
wait(500)
for i = 0, 100 do wait(40)
sendSync(-2057.6975097656, 306.72937011719, 1005.0213012695, 0, 14)
sendSync(-2054.5329589844, 304.76217651367, 1005.0213012695, 0, 14)
sendSync( -2051.3754882813, 307.78454589844, 1005.0213012695, 0, 14)
sendSync(-2055.2912597656, 310.39916992188, 1005.0213012695, 0, 14)
end
wait(500)
sendSync(-2064.875, 334, 996.625, true, key, 485)
wait(500)
sendSync(-2401.75, 2351.5, 4.875, true, key, 483)
wait(500)
function sampev.onShowDialog(id, style, title, button1, button2, text)
    if id == (179) then
    return true end end
		function sampev.onSetPlayerArmedWeapon()
			return true end
				function sampev.onServerMessage(color, text)
			if string.find(text, "Воу, воу! Палечхе!", 1, true) then
				 return true end end
end) end


function cement3()
	lua_thread.create(function()
		if isCharInAnyCar(PLAYER_PED) then
			local x, y, z = getCharCoordinates(PLAYER_PED)
			warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
		function sampev.onSetPlayerPos()
				return false end
		sendSync(620, -70.875, 1497.875, true, key, 590)
tpseat(486)
wait(300)
for i = 0, 20 do wait(50)
  sendXyinc(-2396.3903808594 , 2369.6166992188 , 4.8384461402893)
sendXyinc(-2389.1042480469 , 2383.0881347656 , 8.8554458618164)
sendXyinc(-2401.9743652344 , 2378.4541015625 , 7.2699084281921)
sendXyinc(-2404.1513671875 , 2385.9267578125 , 8.2823190689087) end
wait(300)
setCharCoordinates(playerPed, -2394.8811035156 , 2353.7358398438 , 4.9903526306152)
sendSync(-2401.75, 2351.5, 4.875, true, key, 483)
wait(300)
sampCloseCurrentDialogWithButton(1)
wait(200)
freezeCharPosition(PLAYER_PED, true)
freezeCharPosition(PLAYER_PED, false)
setPlayerControl(PLAYER_HANDLE, true)
restoreCameraJumpcut()
clearCharTasksImmediately(PLAYER_PED)
function sampev.onSetPlayerPos()
		return true end
end) end

	function cement4()
		lua_thread.create(function()
			if isCharInAnyCar(PLAYER_PED) then
				local x, y, z = getCharCoordinates(PLAYER_PED)
				warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
			function sampev.onSetPlayerPos()
				return false end
		sendSync(620, -70.875, 1497.875, true, key, 590)
  sendSync(-2401.75, 2351.5, 4.875, true, key, 483)
	wait(500)
	sampCloseCurrentDialogWithButton(1)
  wait(400)
  tpseat(524)
	state2 = true
  wait(500)
  sampCloseCurrentDialogWithButton(1)
  wait(500)
  sendXyinc(581.78741455078 , 1271.9581298828 , 12.783217430115)
	sendXyinc(-2389.5078125 , 2360.1401367188 , 4.3702354431152)
	state2 = false
	wait(200)
	freezeCharPosition(PLAYER_PED, true)
  freezeCharPosition(PLAYER_PED, false)
  setPlayerControl(PLAYER_HANDLE, true)
  restoreCameraJumpcut()
  clearCharTasksImmediately(PLAYER_PED)
	setCharCoordinates(playerPed, -2393.859375 , 2351.6015625 , 4.984375)
	function sampev.onSetPlayerPos()
			return true end
end)
end






--  sendSync(-961.60034179688, 1936.1987304688, 9, 1, 16) konmpressor

function kladik()
    lua_thread.create(function()
      sendSync(1749.3259277344 , 499.79718017578 , -45.953170776367, 1, 16)
      wait(500)
      sendSync(249.875 , 67.625 , 2003.625, true, key, 414)
      function sampev.onShowDialog(id, style, title, button1, button2, text)
          if id == (123) then sampSendDialogResponse(id, 1, 7, nil) return false end end
          wait(300)
          function sampev.onShowDialog(id, style, title, button1, button2, text)
              if id == (123) then return true  end end
end) end



function zagotovka()
    lua_thread.create(function()
	spawn()
	wait(500)
	function sampev.onSetPlayerPos()
		return false end
		function sampev.onShowDialog(id, style, title, button1, button2, text)
				if id == (173) then sampSendDialogResponse(id, 1, 7, nil) return false end end
	for i = 0, 5 do wait(100)
      sendSync(614.625 , -80.5 , 1497.875, true, key, 591) end wait(500)
					function sampev.onShowDialog(id, style, title, button1, button2, text)
							if id == (173) then return true  end end
			function sampev.onSetPlayerPos()
				return true end
end) end



function zagotovka2()
    lua_thread.create(function()
			if getActiveInterior() ~= 12 then
				 sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Нужно быть в гараже", -1) else
	function sampev.onSetPlayerPos()
		return false end
		function sampev.onShowDialog(id, style, title, button1, button2, text)
				if id == (173) then sampSendDialogResponse(id, 1, 7, nil) return false end end
	for i = 0, 5 do wait(100)
      sendSync(614.625 , -80.5 , 1497.875, true, key, 591) end wait(500)
					function sampev.onShowDialog(id, style, title, button1, button2, text)
							if id == (173) then return true  end end
			function sampev.onSetPlayerPos()
				return true end
end end) end




function maslo()
    lua_thread.create(function()
		function sampev.onShowDialog(id, style, title, button1, button2, text)
				if id == (362) then sampSendDialogResponse(id, 1, 0, nil) return false end end
				  sendSync(-781.5 , 2437.75 , 1064.25, true, key, 664)
	for i = 0, 5 do wait(100)
      sampCloseCurrentDialogWithButton(1) end wait(5000)
					function sampev.onShowDialog(id, style, title, button1, button2, text)
							if id == (362) then return true  end end
end) end




function shmot()
    lua_thread.create(function()
		function sampev.onShowDialog(id, style, title, button1, button2, text)
				if id == (45) then sampSendDialogResponse(id, 1, 0, nil) return false end end
				sendSync(2337.875 , -1141.625 , 1054.25, true, key, 1307)
end) end


function travka()
    lua_thread.create(function()
    sendSync(-1015.5 , -1230.75 , 129.5, true, key,  748)
    sendSync(-995 , -1233 , 131.375, true, key,  749)
    sendSync(-983.875 , -1257.75 , 134, true, key,  750)
    sendSync(-1023.25 , -1270.875 , 130.25, true, key,  747)
    sendSync(-994.5 , -1289.375 , 133, true, key,  751)
    wait(200)
      sendSync(-781.5 , 2437.75 , 1064.25, true, key,  664)
          wait(300)
        sampSetCurrentDialogListItem(1)
        wait(300)
        sampCloseCurrentDialogWithButton(1)

end) end




function tainik()
    lua_thread.create(function()
    sendSync(-850.38232421875 , 1928.7437744141 , 22.924459457397, true, key,  460)
    sendSync(-927.43383789063 , 2023.0830078125 , 64.976577758789, true, key,  461)
    sendSync(-1515.6885986328 , 2568.1960449219 , 55.8359375, true, key,  462)
    sendSync(-1375.7523193359 , 2646.9970703125 , 54.926746368408, true, key,  463)
    sendSync(-767.46148681641 , 2772.7866210938 , 45.7734375, true, key,  459)
		sendSync(-641.1767578125 , 2716.154296875 , 72.375, 1, 16)
		sendSync(-551.83038330078 , 2604.0402832031 , 53.93478012085, 1, 16)
		sendSync(616.46014404297 , 2533.1853027344 , 32.522941589355, 1, 16)
		sendSync(622.63610839844 , 2297.7897949219 , 30.680822372437, 1, 16)
		sendSync(623.22192382813 , 2364.2145996094 , 28.841901779175, 1, 16)
		sendSync(626.55615234375 , 2243.9709472656 , 25.596975326538, 1, 16)
		sendSync(617.75396728516 , 2185.7182617188 , 23.463939666748, 1, 16)
		sendSync(678.33758544922 , 2271.2534179688 , 28.143589019775, 1, 16)
		sendSync(706.41156005859 , 2155.8354492188 , 25.742130279541, 1, 16)
		sendSync(694.62506103516 , 1902.4017333984 , 5.9233565330505, 1, 16)
		sendSync(718.73663330078 , 1889.5711669922 , 5.9201879501343, 1, 16)
		sendSync(697.24884033203 , 1885.2004394531 , 9.5020904541016, 1, 16)
		sendSync(720.04620361328 , 1818.9456787109 , 9.5865173339844, 1, 16)
		sendSync(657.29693603516 , 1782.6013183594 , 6.4563398361206, 1, 16)
		sendSync(794.80242919922 , 1641.0804443359 , 9.7920255661011, 1, 16)
		sendSync(720.51025390625 , 1254.8062744141 , 19.481460571289, 1, 16)
		sendSync(620.43646240234 , 888.3369140625 , -35.625469207764, 1, 16)
		sendSync(435.10192871094 , 897.10571289063 , 2.1275310516357, 1, 16)
		sendSync(-96.36653137207 , 995.86926269531 , 25.089426040649, 1, 16)
		sendSync(-98.972328186035 , 921.08978271484 , 20.696022033691, 1, 16)
		sendSync(-90.938552856445 , 1117.9285888672 , 25.166133880615, 1, 16)
		sendSync(-69.879547119141 , 1210.8563232422 , 22.44026184082, 1, 16)
		sendSync(60.730960845947 , 1168.3918457031 , 19.611988067627, 1, 16)
		sendSync(-99.923568725586 , 1380.0454101563 , 10.2734375, 1, 16)
		sendSync(-97.736953735352 , 1194.2318115234 , 19.588426589966, 1, 16)
		sendSync(-265.60690307617 , 1221.7687988281 , 19.7421875, 1, 16)
		sendSync(-310.03118896484 , 1046.1546630859 , 26.012474060059, 1, 16)
		sendSync(-283.23422241211 , 1787.3255615234 , 52.281135559082, 1, 16)
		sendSync(-265.52154541016 , 1382.3270263672 , 70.150268554688, 1, 16)
		sendSync(-232.92552185059 , 1445.0832519531 , 80.953712463379, 1, 16)
		sendSync(-237.97492980957 , 1494.8940429688 , 75.5625, 1, 16)
		sendSync(-345.52618408203 , 1536.7817382813 , 75.5625, 1, 16)
		sendSync(189.17552185059 , 1374.2678222656 , 23.734375, 1, 16)
		sendSync(197.7403717041 , 1797.4321289063 , 17.640625, 1, 16)

end) end


function korablik()
    lua_thread.create(function()
			if isCharInAnyCar(PLAYER_PED) then
				local x, y, z = getCharCoordinates(PLAYER_PED)
				warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
		function sampev.onSetPlayerPos()
			return false end
			sendSync(620, -70.875, 1497.875, true, key, 590)
	state1 = true
sendSync(-2281.875 , 2288.125 , 4.875, true, key, 562)
wait(200)
setCharCoordinates(playerPed, -2272.4291992188 , 2289.1166992188 , 4.9825091362)
wait(500)
    for i = 0, 20 do wait(100)
      sendSync(-2355.1184082031 , 2239.2578125 , 7.2113122940063)
		sendSync(-2337.0500488281 , 2311.7661132813 , 4.984375) end
		state1 = false
		function sampev.onSetPlayerPos()
			return true end
end) end




function ba()
	  lua_thread.create(function()
			function sampev.onSetPlayerPos()
				return false end
			  sendSync(620, -70.875, 1497.875, true, key, 590)
				setCharCoordinates(playerPed, 1255.4814453125 , -792.38885498047 , 1584.234375)
	sendSync(1254.5471191406, -792.13586425781, 1584.0078125, true, key, 588)
wait(450)
sampSetCurrentDialogListItem(1)
wait(450)
sampCloseCurrentDialogWithButton(1)
wait(450)
sampSetCurrentDialogListItem(8)
wait(450)
sampCloseCurrentDialogWithButton(1)
wait(450)
sampSetCurrentDialogListItem(7)
wait(450)
sampCloseCurrentDialogWithButton(1)
wait(450)
sampSetCurrentDialogListItem(3)
wait(450)
sampCloseCurrentDialogWithButton(1)
wait(3500)
sampCloseCurrentDialogWithButton(0)
function sampev.onSetPlayerPos()
	return true end
end) end






function sobrat()
	lua_thread.create(function()
		sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF} Ok', -1)
	for i= 0, 2 do
		if isCharInAnyCar(PLAYER_PED) then
					local _, carId = sampGetVehicleIdByCarHandle(storeCarCharIsInNoSave(PLAYER_PED))
					sampSendExitVehicle(carId)
					sendXyinc(-1149.1470947266 , -1034.8358154297 , 129.18661499023)
					wait(80)
					sendXyinc(-1132.8676757813 , -1033.7504882813 , 129.18167114258)
					wait(80)
					sendXyinc(-1118.1606445313 , -1016.7462768555 , 129.17932128906)
					wait(80)
					sendXyinc(-1088.3641357422 , -1007.1151733398 , 129.18635559082)
					wait(80)
					sendXyinc(-1071.2893066406 , -988.67822265625 , 129.1847076416)
					wait(80)
					sendXyinc(-1087.4765625 , -970.83508300781 , 129.18281555176)
					wait(80)
					sendXyinc(-1101.6942138672 , -969.24798583984 , 129.18969726563)
					wait(80)
					sendXyinc(-1118.9750976563 , -977.66143798828 , 129.18229675293)
					wait(80)
					sendXyinc(-1134.8404541016 , -979.09197998047 , 129.18356323242)
					wait(80)
					sendXyinc(-1153.1103515625 , -969.0068359375 , 129.18659973145)
					sampSendExitVehicle(carId)
					wait(80)
					sendXyinc(-1164.8657226563 , -968.80389404297 , 129.17416381836)
					wait(80)
					sendXyinc(-1181.1274414063 , -969.2998046875 , 129.17547607422)
					wait(80)
					sendXyinc(-1136.6004638672 , -961.0673828125 , 129.18675231934)
					wait(80)
					sendXyinc(-1052.8232421875 , -971.69879150391 , 129.1859588623)
					wait(80)
					sendXyinc(-1051.1572265625 , -977.19805908203 , 129.18145751953)
					wait(80)
					sendXyinc(-1050.5871582031 , -986.72216796875 , 129.18270874023)
					wait(80)
					sendXyinc(-1034.9350585938 , -979.72277832031 , 129.19033813477)
					wait(80)
					sendXyinc(-1032.7557373047 , -972.02130126953 , 129.18728637695)
					wait(80)
					sendXyinc(-1018.1551513672 , -968.30938720703 , 129.1824798584)
					wait(80)
					sendXyinc(-1016.5085449219 , -964.70343017578 , 129.18855285645)
					wait(80)
					sendXyinc(-1031.1021728516 , -997.00640869141 , 129.17622375488)
					wait(80)
					sendXyinc(-1046.5871582031 , -1043.4019775391 , 129.18347167969)
					wait(80)
					sendXyinc(-1062.0570068359 , -1043.8626708984 , 129.17602539063)
					wait(80)
					sendXyinc(-1078.4881591797 , -1042.8706054688 , 129.18356323242)
					wait(80)
					sendXyinc(-1082.1434326172 , -1035.9237060547 , 129.18330383301)
					wait(80)
					sendXyinc(-1037.0047607422 , -1044.8425292969 , 129.18322753906)
					sampSendExitVehicle(carId)
					wait(80)
					sendXyinc(-1019.7616577148 , -1046.0767822266 , 129.1819152832)
					wait(80)
					sendXyinc(-1018.4786376953 , -924.20715332031 , 129.1824798584)
					wait(80)
					sendXyinc(-1085.5275878906 , -923.21685791016 , 129.18727111816)
					wait(80)
					sendXyinc(-1183.2672119141 , -990.45001220703 , 129.18228149414)
					wait(80)
					sendXyinc(-1184.9605712891 , -994.21801757813 , 129.18673706055)
					wait(80)
					sendXyinc(-1150.0740966797 , -1006.8418579102 , 129.18225097656)
					wait(80)
					sendXyinc(-1163.6051025391 , -1041.4534912109 , 129.18727111816)
					wait(80)
					sendXyinc(-1164.8928222656 , -1050.8663330078 , 129.18338012695)
					sampSendExitVehicle(carId)
					wait(80)
					sendXyinc(-1152.6176757813 , -1053.9552001953 , 129.18029785156)
					wait(80)
					sendXyinc(-1148.2985839844 , -1043.8494873047 , 129.18333435059)
					wait(80)
					sendXyinc(-1134.6575927734 , -1052.6446533203 , 129.18542480469)
					wait(80)
					sendXyinc(-1114.4221191406 , -1044.6657714844 , 129.17849731445)
					wait(80)
sendXyinc(-1078.3946533203 , -1280.9884033203 , 129.20979309082)
	wait(100)
	sendXyinc(-1112.9748535156 , -1260.1484375 , 129.18435668945)
	wait(100)
	    sendXyinc(-1113.0836181641 , -1264.2186279297 , 129.18479919434)
	    wait(100)
	    sendXyinc(-1113.1528320313 , -1270.5491943359 , 129.18174743652)
	    wait(100)
	      sendXyinc(-1113.2412109375 , -1276.3585205078 , 129.18270874023)
	      wait(100)
	    sendXyinc(-1113.294921875 , -1283.4705810547 , 129.18321228027)
	    wait(100)
	    sendXyinc(-1103.5056152344 , -1257.9835205078 , 129.18669128418)
	    wait(100)
			sendXyinc(-1115.1499023438 , -1286.3436279297 , 129.21694946289)
				    wait(100)
			sendXyinc(-1071.0709228516 , -1267.7950439453 , 129.20246887207)
				    wait(100)
	    sendXyinc(-1103.5167236328 , -1263.7438964844 , 129.1858215332)
	        wait(100)
	    sendXyinc(-1103.4635009766 , -1269.8570556641 , 129.18315124512)
	        wait(100)
	    sendXyinc(-1103.4293212891 , -1276.6776123047 , 129.18286132813)
	        wait(100)
	    sendXyinc(-1103.3958740234 , -1283.2888183594 , 129.18341064453)
	        wait(100)
	    sendXyinc(-1093.7602539063 , -1257.4284667969 , 129.18316650391)
			sampSendExitVehicle(carId)
	        wait(100)
	    sendXyinc(-1093.6579589844 , -1263.2694091797 , 129.18348693848)
	        wait(100)
	    sendXyinc(-1093.6649169922 , -1269.5587158203 , 129.18183898926)
	        wait(100)
	    sendXyinc(-1093.9997558594 , -1275.8104248047 , 129.18853759766)
	        wait(100)
	    sendXyinc(-1094.1588134766 , -1282.5004882813 , 129.18217468262)
	        wait(100)
	    sendXyinc(-1084.0397949219 , -1257.9674072266 , 129.18698120117)
	        wait(100)
	    sendXyinc(-1083.9029541016 , -1263.9340820313 , 129.18391418457)
	        wait(100)
	    sendXyinc(-1083.8612060547 , -1270.1910400391 , 129.18405151367)
	        wait(100)
	    sendXyinc(-1083.9265136719 , -1276.81640625 , 129.18157958984)
	        wait(100)
	    sendXyinc(-1084.0688476563 , -1283.4132080078 , 129.18725585938)
	        wait(100)
	    sendXyinc(-1067.0374755859 , -1263.5368652344 , 129.18244934082)
	        wait(100)
	    sendXyinc(-1072.1055908203 , -1263.9385986328 , 129.1869354248)
	        wait(100)
	    sendXyinc(-1072.6311035156 , -1271.2838134766 , 129.18284606934)
	        wait(100)
	    sendXyinc(-1072.8955078125 , -1277.4381103516 , 129.1834564209)
	        wait(100)
	    sendXyinc(-1072.9587402344 , -1283.5361328125 , 129.18301391602)
	  wait(100)
	    sendXyinc(-1094.3696289063 , -1283.0740966797 , 129.18283081055)
	    wait(100)
	    sendXyinc(-1113.849609375 , -1261.0444335938 , 129.2039642334)
	    wait(100)
	    sendXyinc(-1114.8194580078 , -1277.4967041016 , 129.21235656738)
	    wait(100)
	    sendXyinc(-1114.9105224609 , -1283.8936767578 , 129.2112121582)
	    wait(100)
	    sendXyinc(-1108.6383056641 , -1281.7221679688 , 129.20942687988)
	    wait(100)
	    sendXyinc(-1104.0822753906 , -1282.6810302734 , 129.19998168945)
	    wait(100)
	    sendXyinc(-1109.0930175781 , -1284.6158447266 , 129.2025604248)
	    wait(100)
	    sendXyinc(-1099.2036132813 , -1284.1278076172 , 129.20376586914)
	    wait(100)
	    sendXyinc(-1090.1502685547 , -1284.3781738281 , 129.21321105957)
	    wait(100)
	    sendXyinc(-1079.1826171875 , -1286.2197265625 , 129.21101379395)
	    wait(100)
	    sendXyinc(-1076.2086181641 , -1282.890625 , 129.21401977539)
	    wait(100)
	    sendXyinc(-1072.9581298828 , -1285.0555419922 , 129.21263122559)
	    wait(100)
	    sendXyinc(-1072.5073242188 , -1275.1802978516 , 129.20463562012)
	    wait(100)
	    sendXyinc(-1073.6833496094 , -1269.3089599609 , 129.21678161621)
	    wait(100)
	    sendXyinc(-1069.8991699219 , -1268.6064453125 , 129.21182250977)
	    wait(100)
	    sendXyinc(-1073.271484375 , -1261.9240722656 , 129.21170043945)
	        wait(100)
	    sendXyinc(-1113.060546875 , -1259.0079345703 , 129.18826293945)
	        wait(100)
	    sendXyinc(-1112.8931884766 , -1265.0311279297 , 129.18550109863)
	  wait(100)
	    sendXyinc(-1078.4114990234 , -1285.9512939453 , 129.21015930176)
	      wait(100)
	    sendXyinc(-1072.8708496094 , -1286.3883056641 , 129.20690917969)
			 wait(100)
			sendXyinc(-1113.5279541016 , -1285.0106201172 , 129.21099853516)
			wait(100)
			sendXyinc(-1114.4526367188 , -1277.5283203125 , 129.20983886719)
			wait(100)
			sendXyinc(-1108.587890625 , -1272.5733642578 , 129.20971679688)
			wait(100)
			sendXyinc(-1103.6710205078 , -1273.6024169922 , 129.20840454102)
			wait(100)
			sendXyinc(-1098.8067626953 , -1273.9484863281 , 129.20890808105)
			wait(100)
			sendXyinc(-1094.0665283203 , -1274.3114013672 , 129.20686340332)
			wait(100)
			sendXyinc(-1089.6188964844 , -1274.2719726563 , 129.20840454102)
			wait(100)
			sendXyinc(-1083.8198242188 , -1274.3165283203 , 129.20721435547)
			wait(100)
			sendXyinc(-1077.6223144531 , -1274.3371582031 , 129.21041870117)
			wait(100)
			sendXyinc(-1085.0407714844 , -1286.7224121094 , 129.20960998535)
			wait(100)
			sendXyinc(-1089.6690673828 , -1286.7413330078 , 129.21028137207)
		end end
			sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF} Succes', -1)
 end) end


function apteka()
	  lua_thread.create(function()
	function sampev.onSetPlayerPos()
		return false end
	  sendSync(620, -70.875, 1497.875, true, key, 590)
sendSync(324.25, 1831.75, 5.75, true, key, 378)
wait(1000)
function sampev.onSetPlayerPos()
	return true end
end) end

function seif()
sendSync(2315.625, -1143.625, 1054.25, true, key, 1312)
end


function remnab()
  lua_thread.create(function()
sendSync(615.625 , -72 , 997.875, true, key, 389)
wait(100)
sampCloseCurrentDialogWithButton(1)
wait(200)
sampSetCurrentDialogEditboxText(25)
sampCloseCurrentDialogWithButton(1)
end) end




function eda()
  lua_thread.create(function()
sendSync(-224.875 , 1407.5 , 27.75, true, key, 364)
function sampev.onShowDialog(id, style, title, button1, button2, text)
		if id == (5) then sampSendDialogResponse(id, 1, 1, nil)
		return false end end
		wait(500)
		sampSetCurrentDialogListItem(1)
			sampCloseCurrentDialogWithButton(1)
			wait(300)
			sampCloseCurrentDialogWithButton(0)
end) end


function spirt()
  lua_thread.create(function()
sendSync(-224.875 , 1407.5 , 27.75, true, key, 364)
function sampev.onShowDialog(id, style, title, button1, button2, text)
		if id == (5) then sampSendDialogResponse(id, 1, 0, nil)
		return false end end
		wait(500)
		sampSetCurrentDialogListItem(1)
			sampCloseCurrentDialogWithButton(1)
			wait(300)
			sampCloseCurrentDialogWithButton(0)
end) end


function craftapt()
  lua_thread.create(function()
sendSync(280 , 1873.125 , 8.75, true, key, 402)
wait(600)
sampSetCurrentDialogListItem(1)
sampCloseCurrentDialogWithButton(1)
wait(150)
sampCloseCurrentDialogWithButton(1)
wait(150)
sampSetCurrentDialogListItem(1)
sampCloseCurrentDialogWithButton(1)
wait(150)
sampSetCurrentDialogListItem(5)
sampCloseCurrentDialogWithButton(1)
wait(150)
sampCloseCurrentDialogWithButton(0)
end) end


function craftvac()
  lua_thread.create(function()
		sendSync(280 , 1873.125 , 8.75, true, key, 402)
		wait(600)
		sampSetCurrentDialogListItem(3)
		sampCloseCurrentDialogWithButton(1)
		wait(150)
		sampSetCurrentDialogListItem(1) -- гемоглобин
		sampCloseCurrentDialogWithButton(1) -- добавить
			wait(150)
		sampSetCurrentDialogListItem(5) -- протеин
		sampCloseCurrentDialogWithButton(1) --добавить
	wait(150)
		sampSetCurrentDialogListItem(5) -- протеин
		sampCloseCurrentDialogWithButton(1)--добавить
		wait(150)
		sampCloseCurrentDialogWithButton(0)
end) end



function virus()
  lua_thread.create(function()
		spawn()
		sendSync(280 , 1873.125 , 8.75, true, key, 402)
		wait(700)
		function sampev.onSetPlayerPos()
			return false end
		sampSetCurrentDialogListItem(4)
		sampCloseCurrentDialogWithButton(1)
			wait(200)
		sendSync(317.16787719727 , 1853.9177246094 , 7.7340755462646)
	wait(200)
		sampSetCurrentDialogListItem(3) -- плазма
		sampCloseCurrentDialogWithButton(1) -- добавить
		wait(200)
		sampSetCurrentDialogListItem(4) -- масло
		sampCloseCurrentDialogWithButton(1) --добавить
	wait(200)
		sampCloseCurrentDialogWithButton(1) -- спирт
			wait(200)
		sampSetCurrentDialogListItem(5) -- протеин
		sampCloseCurrentDialogWithButton(1)--добавить
	wait(200)
		sampCloseCurrentDialogWithButton(0)
		wait(1000)
		function sampev.onSetPlayerPos()
			return true end
end) end



function benz()
  lua_thread.create(function()
		state2 = true
		if isCharInAnyCar(PLAYER_PED) then
				 local _, carId = sampGetVehicleIdByCarHandle(storeCarCharIsInNoSave(PLAYER_PED))
	 sampSendExitVehicle(carId)
		local data = allocateMemory(67)
	sampStorePlayerIncarData(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)), data)
	setStructElement(data, 6, 2, 2, true)
	setStructFloatElement(data, 24, 315.6975402832, false) --    position
	setStructFloatElement(data, 28, 2007.2641601563, false)
	setStructFloatElement(data, 32, 15.19079208374, false)
	sampSendIncarData(data)
	freeMemory(data)
	wait(800)
	state2 = false
else
	sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Надо быть в транспорте",-1)
end end) end




function craftantirad()
  lua_thread.create(function()
sendSync(280 , 1873.125 , 8.75, true, key, 402)
    wait(700)
sampSetCurrentDialogListItem(2)
sampCloseCurrentDialogWithButton(1)
wait(300)
sampSetCurrentDialogListItem(1) -- гемоглобин
sampCloseCurrentDialogWithButton(1) -- добавить
wait(300)
sampSetCurrentDialogListItem(5) -- протеин
sampCloseCurrentDialogWithButton(1) --добавить
wait(300)
sampSetCurrentDialogListItem(5) -- протеин
sampCloseCurrentDialogWithButton(1)--добавить
wait(300)
sampCloseCurrentDialogWithButton(0)
end) end






function zapchast()
  lua_thread.create(function()
		spawn()
		wait(500)
		for i = 0,10 do wait(50)
		function sampev.onShowDialog(id, style, title, button1, button2, text)
		    if id == (249) then sampSendDialogResponse(id, 1, 1, nil)
		    return false end end
sendSync(614.5 , -71.75 , 1497.875, true, key, 592) end
wait(500)
function sampev.onShowDialog(id, style, title, button1, button2, text)
		if id == (249) then
		return true end end
end) end


function sklad()
  lua_thread.create(function()
		state3 = true
		function sampev.onShowDialog(id, style, title, button1, button2, text)
		    if id == (149) then sampSendDialogResponse(id, 1, 0, nil)  return false end end
					sendSync(1089.875 , 2098.875 , -4.625, true, key, 435)
									wait(1000)
function sampev.onShowDialog(id, style, title, button1, button2, text)
		if id == (149) then
		return true end end
				state3 = false
end) end


---649.17547607422 , 1286.8107910156 , 3.9529900550842

function derevo()
  lua_thread.create(function()
		if isCharInAnyCar(PLAYER_PED) then
			local x, y, z = getCharCoordinates(PLAYER_PED)
			warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
		state1 = true
		function sampev.onSetPlayerPos()
			return false end
			function sampev.onServerMessage(color, text)
			if string.find(text, "Вы устали пилить,", 1, true) then
			   return false end end
sendSync(-563.625, -181.375, 78.375, true, key, 412)
function sampev.onShowDialog(id, style, title, button1, button2, text)
    if id == (110) then sampSendDialogResponse(id, 1, _, nil)
    return false end end
		sendSync(620, -70.875, 1497.875, true, key, 590)
    for i = 0, 50 do wait(40)
	  sendSync(-560.12329101563, -37.946193695068, 64.270294189453, 0, 14)
		sendSync(-539.71234130859, -27.002712249756, 62.291122436523, 0, 14)
		sendSync(-543.44677734375, -38.637573242188, 63.404426574707, 0, 14)
		sendSync(-557.53936767578, -25.741027832031, 63.598514556885, 0, 14)
		sendSync(-549.53967285156, -13.153273582458, 63.021263122559, 0, 14)
    end
    tpseat(578)
		wait(1000)
    sampCloseCurrentDialogWithButton(1)
	  state2 = true
	  sendXyinc(-555.32574462891 , -85.297897338867 , 64.372024536133)
	  sendXyinc(808.12365722656 , 1661.1018066406 , 5.9064102172852)
	  sendXyinc(-534.85546875 , -177.46928405762 , 78.404663085938)
		 state2 = false
		 wait(200)
		 setCharCoordinates(playerPed, -491.02047729492 , -188.31530761719 , 78.328758239746)
		 freezeCharPosition(PLAYER_PED, true)
	  	freezeCharPosition(PLAYER_PED, false)
			setPlayerControl(PLAYER_HANDLE, true)
			restoreCameraJumpcut()
			clearCharTasksImmediately(PLAYER_PED)
			function sampev.onSetPlayerPos()
				return true end
				function sampev.onServerMessage(color, text)
				if string.find(text, "Вы устали пилить,", 1, true) then
				   return true end end
					 		state1 = false
end)
end



function samolet()
	lua_thread.create(function()
		function sampev.onSetPlayerPos()
			return false end
		if isCharInAnyCar(PLAYER_PED) then
			local x, y, z = getCharCoordinates(PLAYER_PED)
			warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
			sendSync(620, -70.875, 1497.875, true, key, 590)
			wait(500)
			state2 = true
		tpseat(512)
wait(300)
  sendXyinc(-1024.6737060547 , -931.36340332031 , 171.14692687988)
	sendXyinc(-1172.8856201172 , -930.66345214844 , 170.46723937988)
	sendXyinc(-1174.61328125 , -962.83660888672 , 169.78672790527)
	sendXyinc(-1025.1671142578 , -966.45001220703 , 167.24034118652)
	sendXyinc(-1028.3338623047 , -1006.7046508789 , 166.01989746094)
	sendXyinc(-1176.5454101563 , -1029.1674804688 , 169.23150634766)
	sendXyinc(-1175.0986328125 , -1050.4854736328 , 168.13063049316)
	sendXyinc(-1025.8559570313 , -1050.5233154297 , 166.84294128418)
	sendXyinc(-1114.6069335938 , -1270.5874023438 , 166.06169128418)
	sendXyinc(-1068.4643554688 , -1270.7839355469 , 166.42256164551)
	sendXyinc(291.93, 2505.53, 16.08)
	state2 = false
	wait(200)
	function sampev.onSetPlayerPos()
		return true end
end) end


function samolet2()
	lua_thread.create(function()
		function sampev.onSetPlayerPos()
			return false end
 if isCharInAnyCar(PLAYER_PED) then
	 local x, y, z = getCharCoordinates(PLAYER_PED)
	 warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
	 sendSync(620, -70.875, 1497.875, true, key, 590)
	 wait(500)
		state2 = true
		tpseat(553)
wait(300)
sendXyinc(-105.05868530273 , 512.0029296875 , 53.34162902832)
sendXyinc(-87.22395324707 , 1047.1312255859 , 67.041275024414)
sendXyinc(272.84521484375 , 1447.6108398438 , 58.903106689453)
sendXyinc(663.0751953125 , 1663.6505126953 , 60.803318023682)
sendXyinc(236.79296875 , 1912.0090332031 , 67.543098449707)
sendXyinc(380.14556884766 , 2500.1552734375 , 64.309700012207)
sendXyinc(-231.50564575195 , 2625.4665527344 , 123.93656921387)
sendXyinc(-488.22763061523 , 2610.1589355469 , 99.636871337891)
sendXyinc(-391.35406494141 , 2270.0798339844 , 106.65605163574)
sendXyinc(-1492.6147460938 , 2604.4538574219 , 113.77326965332)
sendXyinc(-794.38562011719 , 1578.8819580078 , 75.543830871582)
sendXyinc(290.53811645508 , 2507.0812988281 , 16.484375)
state2 = false
wait(200)
function sampev.onSetPlayerPos()
	return true end
end) end


function paxavat()
sendSync(214.25, 3615.25, 27.5, true, key, 578)
end


function tp()
  lua_thread.create(function()
    result, x, y, z = getTargetBlipCoordinates()
    if result then
     if not isCharInAnyCar(PLAYER_PED) then
      function sampev.onSetPlayerPos()
        return false end
        sendSync(620, -70.875, 1497.875, true, key, 590)
        setCharCoordinates(PLAYER_PED, x, y, z)
        wait(100)
        setCharCoordinates(PLAYER_PED, x, y, getGroundZFor3dCoord(x, y, 999))
				 restoreCameraJumpcut()
        wait(1200)
        function sampev.onSetPlayerPos()
        return true end
			 end  else sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Метку поставь дебил") end
			 result, x, y, z = getTargetBlipCoordinates()
			 if result then
				if isCharInAnyCar(PLAYER_PED) then
	        		local _, carId = sampGetVehicleIdByCarHandle(storeCarCharIsInNoSave(PLAYER_PED))
	     sampSendExitVehicle(carId)
			 setCharCoordinates(PLAYER_PED, x, y, z)
			 wait(100)
			 setCharCoordinates(PLAYER_PED, x, y, getGroundZFor3dCoord(x, y, 999))
		 restoreCameraJumpcut()
end  end end) end




function bron()
sendSync(285.125, -105, 1101.5, true, key, 448)
end

function full()
    sendSync(214.25, 3615.25, 27.5, true, key, 578)
    sendSync(285.125, -105, 1101.5, true, key, 448)
end


function samurai()
sendSync(287.625, -111.75, 1101.5, true, key, 447)
end


function nchki()
  	lua_thread.create(function()
    spawn()
    wait(1200)
    sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Начат сбор нычек", -1)
    function sampev.onSetPlayerHealth()
        return false end
        spawn()
        function sampev.onSetPlayerPos()
           return false end
    freezeCharPosition(PLAYER_PED, true)
    setCharCoordinates(playerPed, 1453 , 2009.4968261719 , 17.842590332031)
      wait(1100)
    setCharCoordinates(playerPed, 1505.458984375, 2005.3280029297, 18.719875335693)
      wait(1100)
    setCharCoordinates(playerPed, 1577.1182861328 , 1939.1301269531 , 11.228739738464)
      wait(1100)
    setCharCoordinates(playerPed, 1784.271484375 , 2115.7114257813 , 3.0509567260742)
      wait(1100)
    sendSync(620, -70.875, 1497.875, true, key, 590)
    setCharCoordinates(playerPed, 1673.7421875 , 2132.8679199219 , 8.881219863892 )
      wait(1100)
    setCharCoordinates(playerPed, 1600.8316650391, 1104.482421875, 17.681875228882)
        wait(1100)
        setCharCoordinates(playerPed, 1590.6053466797 , 2128.990234375 , 11.399749755859)
        wait(1100)
setCharCoordinates(playerPed, 1361.0830078125, 1903.4334716797, 11.46875)
      wait(1100)
      sendSync(620, -70.875, 1497.875, true, key, 590)
    setCharCoordinates(playerPed, 1722.4483642578 , 1109.12109375 , 23.76674079895)
    wait(1100)
    setCharCoordinates(playerPed, 1656.3253173828 , 1107.3588867188 , 16.805389404297)
    wait(1100)
    function sampev.onSetPlayerPos()
       return true end
    spawn()
    restoreCameraJumpcut()
    sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Проход по нычкам окончен", -1)
    function sampev.onSetPlayerHealth()
        return true end
end) end

function predmet()
  	lua_thread.create(function()
				function sampev.onServerMessage(color, text)
			if string.find(text, "Можешь везти предметы на склад, а можешь продолжить поиски.", 1, true) then
				 return false end end
    sampSpawnPlayer()
    wait(1000)
         function sampev.onSetPlayerPos()
            return false end
                sampAddChatMessage('{ffffff}* [SFA{ffffff}]: {00BFFF}Стартуем', -1)
           freezeCharPosition(playerPed, true)
    setCharCoordinates(playerPed, -45.944370269775 , 1179.4415283203 , 18.534049987793)
    wait(1100)
    setCharCoordinates(playerPed, 14.312439918518 , 1239.0225830078 , 18.321689605713)  --194.18890380859 , 1251.7446289063 , 26.246999740601
    wait(1100)
    setCharCoordinates(playerPed, -31.898040771484, 1055.7778320313, 17) ---45.944370269775 , 1179.4415283203 , 20.534049987793
    wait(1100)
    setCharCoordinates(playerPed, -224.89085388184, 1221.4171142578, 17)
    wait(1100)
    setCharCoordinates(playerPed, 55.975677490234, 1210.5308837891, 16)
    wait(1100)
    setCharCoordinates(playerPed, -233.07637023926, 1053.3527832031, 17)
    wait(1100)
  sendSync(620, -70.875, 1497.875, true, key, 590)
    setCharCoordinates(playerPed, -334.71145629883, 1050.2829589844, 19.739168167114)
    wait(1100)
    setCharCoordinates(playerPed, -862.69146728516 , 1515.0981445313 , 20)
    wait(1100)
    setCharCoordinates(playerPed, -1513.0549316406, 2612.9182128906, 53)
    wait(1100)
      setCharCoordinates(playerPed, -739.99591064453 , 2753.3325195313 , 44)
      wait(1100)
      setCharCoordinates(playerPed, -287.02874755859, 2653.9348144531, 60)
      wait(1100)
      setCharCoordinates(playerPed, -26.792631149292, 2350.3889160156, 21)
      wait(1100)
      setCharCoordinates(playerPed, -1462.7628173828, 1873.517578125, 30)
      wait(1100)
            sendSync(620, -70.875, 1497.875, true, key, 590)
      setCharCoordinates(playerPed, 643.89672851563, 1679.7139892578, 6.626259803772)
    wait(1100)
      setCharCoordinates(playerPed, -372.01052856445, 2235.6604003906, 40)
      wait(1100)
      setCharCoordinates(playerPed, -101.44105529785, 1365.8446044922, 8)
      wait(1100)
      setCharCoordinates(playerPed, 591.79156494141, 1233.9449462891, 9)
      wait(1100)
      setCharCoordinates(playerPed, 584.08227539063, 879.56256103516, -43.653125762939)
      wait(1100)
      setCharCoordinates(playerPed, -328.46682739258, 831.30194091797, 11)
      wait(1100)
      setCharCoordinates(playerPed, -92.041954040527, 1165.3995361328, 17)
    wait(1100)
setCharCoordinates(playerPed, 284.58871459961, 2010.1772460938, 17.206323623657)
wait(1100)
       sampAddChatMessage('{ffffff}* [SFA{ffffff}]: {00BFFF}Проход по предметам окончен', -1)
       function sampev.onSetPlayerPos()
          return true end
    sampSpawnPlayer()
    restoreCameraJumpcut()
 end) end


function st()
      lua_thread.create(function()
sendSync(1089.875, 2098.875, -4.625, true, key, 435)
wait(1000)
sampSendChat("/детектор")

end)
end



function spawn()
	if isCharInAnyCar(PLAYER_PED) then
		local x, y, z = getCharCoordinates(PLAYER_PED)
		warpCharFromCarToCoord(PLAYER_PED, x, y + 1, z) end
		sampSpawnPlayer()
end


function repaircar()
 		local car12 = storeCarCharIsInNoSave(PLAYER_PED)
		if isCharInAnyCar(PLAYER_PED) then
		setCarHealth(car12, 1000)
	else
		sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Нужно быть в машине",-1)
end end

function artraz()
  lua_thread.create(function()
				spawn()
				wait(300)
    sendSync(1089.875, 2098.875, -4.625, true, key, 435)
		wait(1000)
    sampSendChat("/детектор")
    wait(1000)
    function sampev.onSetPlayerPos()
     return false end
zalupa(2904.5 , 2203.375 , 1110.75, true, key, pic)
wait(700)
zalupa(2825.875 , 2189.875 , 1111.5, true, key, pic)
wait(700)
zalupa(2814.125 , 2166.875 , 1110.75, true, key, pic)
wait(700)
zalupa(2883.75 , 2169.125 , 1111.875, true, key, pic)
wait(700)
zalupa(2881.25 , 2132.25 , 1110.75, true, key, pic)
wait(700)
zalupa(2829.25 , 2077.375 , 1110.75, true, key, pic)
wait(700)
zalupa(2896 , 2086 , 1110.75, true, key, pic)
wait(700)
zalupa(2823.375 , 2008.125 , 1110.75, true, key, pic)
wait(700)
zalupa(2851.75 , 1923.25 , 1111, true, key, pic)
wait(700)
zalupa(2883.75 , 1873.375 , 1110.75, true, key, pic)
wait(700)
zalupa(2842.625 , 1832.5 , 1110.625, true, key, pic)
wait(700)
zalupa(2844.375 , 1791.5 , 1110.75, true, key, pic)
wait(700)
zalupa(2784.625 , 1730 , 1110.75, true, key, pic)
wait(700)
zalupa(2849.125 , 1750.75 , 1110.75, true, key, pic)
wait(700)
zalupa(2812.5 , 1549.125 , 1110.875, true, key, pic)
wait(700)
zalupa(2904.375 , 1143 , 1114.875, true, key, pic)
wait(700)
zalupa(2851.75 , 1120.625 , 1110.875, true, key, pic)
wait(700)
zalupa(2864.375 , 1070.375 , 1110.875, true, key, pic)
wait(700)
zalupa(2861.375 , 1033.875 , 1110.875, true, key, pic)
end)
end

function zalp()
    lua_thread.create(function()
		if getActiveInterior() == 0 then
		   sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Зайди в свой дом", -1) else
sendSync(2807.875, 2373.625, 1110.875, true, key, 611)
sendSync(2855, 902.25, 1110.875, true, key, 610)
end
end)
end



function artefact()
	lua_thread.create(function()
		function sampev.onShowDialog(id, style, title, button1, button2, text)
				if id == (66) then sampSendDialogResponse(id, 1, 5, nil)	 return false end end
	function sampev.onTogglePlayerControllable()
		return false end
	function sampev.onSetPlayerPos()
		return false end
		function sampev.onSetInterior()
			return false end
		function sampev.onSetPlayerHealth()
		return false end
		function sampev.onApplyPlayerAnimation()
		return false end
		sampSendChat("/детектор")
		printStringNow('Succes', 2000)
				sendSync(620, -70.875, 1497.875, true, key, 590)
					zalupa(-434.375 , 866 , 1.5, true, key, pic)
		zalupa(-1464.625 , 2633.25 , 55.75, true, key, pic)
wait(900)
zalupa(-173.875 , 496.25 , 1.25, true, key, pic)
wait(900)
zalupa(41.25 , 1377.625 , 9.125, true, key, pic)
	sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(-1522.625 , 2520.25 , 55.875, true, key, pic)
wait(900)
zalupa(-831.625 , 1900.875 , 22.875, true, key, pic)
		sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(-332.875 , 1054.875 , 19.625, true, key, pic)
wait(900)
zalupa(-361 , 892.75 , 8.75, true, key, pic)
		sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(654.625 , 2312.125 , 26.75, true, key, pic)
wait(900)
zalupa(724.25 , 1579 , 5, true, key, pic)
		sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(-85 , 1129 , 19.625, true, key, pic)
wait(900)
zalupa(265 , 2962.375 , 2.625, true, key, pic)
wait(900)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		zalupa(-210.625 , 2622.75 , 67.125, true, key, pic)
			sendSync(280, 1873.125, 8.75, true, key, 402)
		wait(900)
		zalupa(61.75 , 2413.625 , 16.375, true, key, pic)
		wait(900)
		zalupa(114.25 , 2406.625 , 17.25, true, key, pic)
		wait(900)
				sendSync(280, 1873.125, 8.75, true, key, 402)
		zalupa(383.125 , 2605.75 , 16.375, true, key, pic)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		wait(900)
		zalupa(778.875 , 1644 , 6.875, true, key, pic)
		wait(900)
		zalupa(10.5 , 1525.5 , 12.75, true, key, pic)
		wait(900)
		zalupa(-1282.125 , 1659.125 , 2.375, true, key, pic)
		wait(900)
		zalupa(-1399 , 2015.375 , 53.375, true, key, pic)
				sendSync(280, 1873.125, 8.75, true, key, 402)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		wait(900)
		zalupa(-1809.75 , 2059.875 , 9, true, key, pic)
		wait(900)
		zalupa(-1483.75 , 2621 , 58.75, true, key, pic)
			sendSync(280, 1873.125, 8.75, true, key, 402)
		wait(900)
		zalupa(-771.375 , 2754.375 , 45.625, true, key, pic)
		wait(900)
		zalupa(-662.75 , 2306 , 136, true, key, pic)
		sendSync(620, -70.875, 1497.875, true, key, 590)
				sendSync(280, 1873.125, 8.75, true, key, 402)
		wait(900)
		zalupa(-430.375 , 2203.625 , 42.375, true, key, pic)
		wait(900)
		zalupa(-462.125 , 2188.375 , 46.5, true, key, pic)
		wait(900)
		zalupa(199.25 , 1791.875 , 17.625, true, key, pic)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		wait(900)
		zalupa(-480.625 , 2186.25 , 41.75, true, key, pic)
				sendSync(280, 1873.125, 8.75, true, key, 402)
		wait(900)
		zalupa(29.5 , 1885.25 , 17.625, true, key, pic)
		wait(900)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		  wait(900)
	 zalupa(-263.25 , 2774.25 , 61.75, true, key, pic)
	   wait(900)
	 zalupa(304.125 , 2618.75 , 17.375, true, key, pic)
	 		sendSync(280, 1873.125, 8.75, true, key, 402)
							sendSync(620, -70.875, 1497.875, true, key, 590)
	   wait(900)
	 zalupa(438.25 , 2533 , 16.625, true, key, pic)
	   wait(900)
	 zalupa(628 , 2266.875 , 26.5, true, key, pic)
	 wait(900)
		sendSync(280, 1873.125, 8.75, true, key, 402)
	   wait(900)
	 zalupa(611.75 , 1694.125 , 6.875, true, key, pic)
	 sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
	   wait(900)
	 zalupa(772.5 , 1716.5 , 5.25, true, key, pic)
	   wait(900)
	 zalupa(575.25 , 872 , -43.5, true, key, pic)
	 wait(900)
	 sendSync(280, 1873.125, 8.75, true, key, 402)
	   wait(900)
	 sendSync(620, -70.875, 1497.875, true, key, 590)
	   wait(900)
	 zalupa(197.625 , 872.375 , 16.5, true, key, pic)
	   wait(900)
	 zalupa(171.375 , 644.75 , 1.125, true, key, pic)
	 	sendSync(280, 1873.125, 8.75, true, key, 402)
						sendSync(620, -70.875, 1497.875, true, key, 590)
	   wait(900)
	 zalupa(-51.5 , 920 , 21.875, true, key, pic)
	   wait(900)
	 zalupa(-146.625 , 1161.75 , 19.75, true, key, pic)
	 	 sendSync(620, -70.875, 1497.875, true, key, 590)
	   wait(900)
	 zalupa(-67.125 , 1289.25 , 11.375, true, key, pic)
	 	sendSync(280, 1873.125, 8.75, true, key, 402)
	   wait(900)
	 zalupa(72.625 , 1215.25 , 19.125, true, key, pic)
	   wait(900)
	 zalupa(314 , 1376.5 , 8.75, true, key, pic)
	 wait(900)
		sendSync(280, 1873.125, 8.75, true, key, 402)
	   wait(900)
	 sendSync(620, -70.875, 1497.875, true, key, 590)
	   wait(900)
	 zalupa(-251.25 , 1159.625 , -0.875, true, key, pic)
	   wait(900)
	 zalupa(-799.25 , 1820 , 3, true, key, pic)
	   wait(900)
	 zalupa(-895.625 , 1870.875 , 117.875, true, key, pic)
	 		sendSync(280, 1873.125, 8.75, true, key, 402)
	   wait(900)
	 zalupa(-1391.125 , 2110.75 , 42.125, true, key, pic)
	 sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
	   wait(900)
	 zalupa(-735.125 , 2751.875 , 50.125, true, key, pic)
	 wait(900)
		sendSync(280, 1873.125, 8.75, true, key, 402)
	   wait(900)
	 zalupa(324.375 , 2030 , 18.5, true, key, pic)
	   wait(900)
		  sendSync(620, -70.875, 1497.875, true, key, 590)
      wait(900)
		  zalupa(-1851.25 , 2119.5 , 1.5, true, key, pic)
			wait(900)
		  zalupa(-1579 , 1878.875 , 27.125, true, key, pic)
			wait(900)
		  zalupa(-954 , 1891.125 , 124.5, true, key, pic)
					sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
	sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
				wait(900)
		  zalupa(-1506.375 , 2421.625 , 49.25, true, key, pic)
			wait(900)
		  zalupa(-1458.375 , 2626.25 , 55.75, true, key, pic)
				sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
		  zalupa(-1321.5 , 2697.5 , 50.25, true, key, pic)
			wait(900)
		  sendSync(-1101.375 , 2815.625 , 44.5, true, key, 590)
			wait(900)
		  zalupa(-931 , 2697 , 41.5, true, key, pic)
			wait(900)
			sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
		  zalupa(-734.75 , 2406.75 , 127.75, true, key, pic)
			wait(900)
		  zalupa(-781.125 , 2104.625 , 60.375, true, key, pic)
			sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
			wait(900)
		  zalupa(-601 , 1923.5 , 22.875, true, key, pic)
					sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
		  zalupa(-495.25 , 2317.25 , 69, true, key, pic)
			wait(900)
		  zalupa(-192.25 , 2656.75 , 62.875, true, key, pic)
			wait(900)
			sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
		  sendSync(-32.875 , 2342.75 , 24.125, true, key, 590)
			wait(900)
		  zalupa(233.75 , 2547.125 , 16.75, true, key, pic)
			wait(900)
		  zalupa(285.5 , 2501.125 , 16.375, true, key, pic)
			wait(900)
		  zalupa(232.375 , 2951.25 , 2.625, true, key, pic)
				sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
		  zalupa(683.875 , 2210.75 , 24.625, true, key, pic)
							sendSync(620, -70.875, 1497.875, true, key, 590)
					sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
		  zalupa(721.25 , 1824.375 , 9.5, true, key, pic)
			wait(900)
			sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
		  zalupa(678.375 , 1822 , 5.375, true, key, pic)
			wait(900)
		  zalupa(716.375 , 1827.75 , 5.875, true, key, pic)
			wait(900)
		  sendSync(722.625 , 1628.125 , 5, true, key, 590)
			wait(900)
		  zalupa(684.375 , 895.75 , -39.625, true, key, pic)
					sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
		  zalupa(-219.625 , 1218.25 , 19.625, true, key, pic)
			wait(900)
		  zalupa(35.625 , 1360.125 , 9.125, true, key, pic)
			wait(900)
			sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
		  zalupa(278.125 , 1253.875 , 16.125, true, key, pic)
				 sendSync(620, -70.875, 1497.875, true, key, 590)
			wait(900)
		  zalupa(413.5 , 1438.25 , 9.125, true, key, pic)
			wait(900)
		  zalupa(109.5 , 1064.875 , 13.5, true, key, pic)
			wait(900)
		  zalupa(134 , 1736.625 , 17.625, true, key, pic)
					sendSync(280, 1873.125, 8.75, true, key, 402)
			wait(900)
		  sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
			wait(900)
zalupa(-197.875 , 2689.625 , 67.875, true, key, pic)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(-419.5 , 2571.75 , 42, true, key, pic)
wait(900)
zalupa(-329.875 , 2220.25 , 42.375, true, key, pic)
sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
wait(900)
zalupa(-323 , 2218.625 , 44.75, true, key, pic)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
	  sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
		wait(900)
zalupa(-416.875 , 2208.375 , 42.375, true, key, pic)
wait(900)
zalupa(687.875 , 1770.75 , 6.875, true, key, pic)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(797.125 , 1652.25 , 10.875, true, key, pic)
	 sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(703.625 , 1336.375 , 11.25, true, key, pic)
wait(900)
zalupa(652.25 , 1289.75 , 11.625, true, key, pic)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
				sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(687 , 1292.5 , 18.75, true, key, pic)
wait(900)
zalupa(693.25 , 1264 , 11.625, true, key, pic)
wait(900)
	  sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
				sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(705.625 , 1287.625 , 14.5, true, key, pic)
wait(900)
zalupa(802.625 , 1101.625 , 30.375, true, key, pic)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(491.625 , 783.5 , -22, true, key, pic)
sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
wait(900)
zalupa(-131.625 , 578.5 , 15.875, true, key, pic)
wait(900)
zalupa(-22.625 , 964 , 19.625, true, key, pic)
wait(900)
zalupa(22.375 , 1184.5 , 19.25, true, key, pic)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(184.5 , 1256 , 26.125, true, key, pic)
wait(900)
zalupa(353.25 , 1311.5 , 13.875, true, key, pic)
wait(900)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(247.75 , 1139.375 , 11.25, true, key, pic)
		sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(-23.875 , 1235.25 , 18.125, true, key, pic)
wait(900)
zalupa(-266.625 , 1256.25 , -5.375, true, key, pic)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(-412.625 , 1237.875 , 1.125, true, key, pic)
wait(900)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(-270.625 , 1437 , 75.75, true, key, pic)
wait(900)
zalupa(-252.125 , 1461.625 , 75.5, true, key, pic)
wait(900)
zalupa(-270.375 , 1473.25 , 75.875, true, key, pic)
sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(-248.625 , 1478 , 75.5, true, key, pic)
wait(900)
zalupa(-233 , 1499.25 , 75.875, true, key, pic)
wait(900)
sendSync(620, -70.875, 1497.875, true, key, 590)
		sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(-218.375 , 1656.125 , 24.75, true, key, pic)
wait(900)
zalupa(-941 , 1640 , 7.125, true, key, pic)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(-1038.5 , 1810.25 , 77.5, true, key, pic)
wait(900)
  sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(-1206.375 , 1823.125 , 41.625, true, key, pic)
wait(900)
zalupa(-1322.25 , 1842.5 , 36.875, true, key, pic)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
				sendSync(620, -70.875, 1497.875, true, key, 590)
zalupa(-601 , 1923.5 , 22.875, true, key, pic)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(-1441.875 , 2641.375 , 61, true, key, pic)
wait(900)
zalupa(-1320.625 , 2458.375 , 87.125, true, key, pic)
wait(900)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
zalupa(260.375 , 2116.75 , 17.25, true, key, pic)
	sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(238 , 1717.75 , 22.75, true, key, pic)
wait(900)
zalupa(15.25 , 1721.25 , 23.75, key, pic)
wait(900)
sendSync(280, 1873.125, 8.75, true, key, 402)
wait(900)
	  sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
		sampAddChatMessage("Всё ептаа" -1)
wait(1000)
function sampev.onSetPlayerPos()
	return true end
	function sampev.onSetPlayerHealth()
	return true end
	function sampev.onSetInterior()
		return true end
	function sampev.onTogglePlayerControllable()
	return true end
	function sampev.onApplyPlayerAnimation()
	return true end
	function sampev.onShowDialog(id, style, title, button1, button2, text)
			if id == (66) then sampSendDialogResponse(id, 1, 5, nil)	 return true end end
end) end

function artefact2()
	lua_thread.create(function()
	function sampev.onTogglePlayerControllable()
		return false end
	function sampev.onSetPlayerPos()
		return false end
		function sampev.onSetPlayerHealth()
		return false end
		function sampev.onApplyPlayerAnimation()
		return false end
		function sampev.onSetInterior()
			return false end
			sampSendChat("/детектор")
					printStringNow('Succes', 2000)
							sendSync(620, -70.875, 1497.875, true, key, 590)
							zalupa(-434.375 , 866 , 1.5, true, key, pic)
							wait(900)
							zalupa(-173.875 , 496.25 , 1.25, true, key, pic)
							wait(900)
							zalupa(41.25 , 1377.625 , 9.125, true, key, pic)
							wait(900)
		zalupa(-1464.625 , 2633.25 , 55.75, key, pic)
		wait(900)
		zalupa(-1522.625 , 2520.25 , 55.875, key, pic)
						sendSync(620, -70.875, 1497.875, true, key, 590)
		wait(900)
		zalupa(-831.625 , 1900.875 , 22.875, key, pic)
		wait(900)
		zalupa(-332.875 , 1054.875 , 19.625, key, pic)
				sendSync(620, -70.875, 1497.875, true, key, 590)
		wait(900)
		zalupa(-361 , 892.75 , 8.75, key, pic)
		wait(900)
		zalupa(654.625 , 2312.125 , 26.75, key, pic)
		wait(900)
		zalupa(724.25 , 1579 , 5, key, pic)
		wait(900)
						sendSync(620, -70.875, 1497.875, true, key, 590)
		zalupa(-85 , 1129 , 19.625, key, pic)
		wait(900)
		zalupa(265 , 2962.375 , 2.625, key, pic)
		wait(900)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		zalupa(-210.625 , 2622.75 , 67.125, true, key, pic)
		wait(900)
		zalupa(61.75 , 2413.625 , 16.375, true, key, pic)
		wait(900)
		zalupa(114.25 , 2406.625 , 17.25, true, key, pic)
		wait(900)
		zalupa(383.125 , 2605.75 , 16.375, true, key, pic)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		wait(900)
		zalupa(778.875 , 1644 , 6.875, true, key, pic)
		wait(900)
		zalupa(10.5 , 1525.5 , 12.75, true, key, pic)
		wait(900)
		zalupa(-1282.125 , 1659.125 , 2.375, true, key, pic)
		wait(900)
		zalupa(-1399 , 2015.375 , 53.375, true, key, pic)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		wait(900)
		zalupa(-1809.75 , 2059.875 , 9, true, key, pic)
		wait(900)
		zalupa(-1483.75 , 2621 , 58.75, true, key, pic)
		wait(900)
		zalupa(-771.375 , 2754.375 , 45.625, true, key, pic)
		wait(900)
		zalupa(-662.75 , 2306 , 136, true, key, pic)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		wait(900)
		zalupa(-430.375 , 2203.625 , 42.375, true, key, pic)
		wait(900)
		zalupa(-462.125 , 2188.375 , 46.5, true, key, pic)
		wait(900)
		zalupa(199.25 , 1791.875 , 17.625, true, key, pic)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		wait(900)
		zalupa(-480.625 , 2186.25 , 41.75, true, key, pic)
		wait(900)
		zalupa(29.5 , 1885.25 , 17.625, true, key, pic)
		wait(900)
		sendSync(620, -70.875, 1497.875, true, key, 590)
		  wait(900)
	 zalupa(-263.25 , 2774.25 , 61.75, true, key, pic)
	   wait(900)
	 zalupa(304.125 , 2618.75 , 17.375, true, key, pic)
	   wait(900)
	 zalupa(438.25 , 2533 , 16.625, true, key, pic)
	 				sendSync(620, -70.875, 1497.875, true, key, 590)
	   wait(900)
	 zalupa(628 , 2266.875 , 26.5, true, key, pic)
	   wait(900)
	 zalupa(611.75 , 1694.125 , 6.875, true, key, pic)
	   wait(900)
	 zalupa(772.5 , 1716.5 , 5.25, true, key, pic)
	   wait(900)
	 zalupa(575.25 , 872 , -43.5, true, key, pic)
	   wait(900)
	 sendSync(620, -70.875, 1497.875, true, key, 590)
	   wait(900)
	 zalupa(197.625 , 872.375 , 16.5, true, key, pic)
	   wait(900)
	 zalupa(171.375 , 644.75 , 1.125, true, key, pic)
	   wait(900)
	 zalupa(-51.5 , 920 , 21.875, true, key, pic)
	   wait(900)
	 zalupa(-146.625 , 1161.75 , 19.75, true, key, pic)
	 wait(900)
 sendSync(620, -70.875, 1497.875, true, key, 590)
	   wait(900)
	 zalupa(-67.125 , 1289.25 , 11.375, true, key, pic)
	   wait(900)
	 zalupa(72.625 , 1215.25 , 19.125, true, key, pic)
	   wait(900)
	 zalupa(314 , 1376.5 , 8.75, true, key, pic)
	   wait(900)
	 sendSync(620, -70.875, 1497.875, true, key, 590)
	   wait(900)
	 zalupa(-251.25 , 1159.625 , -0.875, true, key, pic)
	   wait(900)
	 zalupa(-799.25 , 1820 , 3, true, key, pic)
	   wait(900)
	 zalupa(-895.625 , 1870.875 , 117.875, true, key, pic)
	 wait(900)
 sendSync(620, -70.875, 1497.875, true, key, 590)
	   wait(900)
	 zalupa(-1391.125 , 2110.75 , 42.125, true, key, pic)
	   wait(900)
	 zalupa(-735.125 , 2751.875 , 50.125, true, key, pic)
	   wait(900)
	 zalupa(324.375 , 2030 , 18.5, true, key, pic)
	   wait(900)
		  sendSync(620, -70.875, 1497.875, true, key, 590)
      wait(900)
		  zalupa(-1851.25 , 2119.5 , 1.5, true, key, pic)
			wait(900)
		  zalupa(-1579 , 1878.875 , 27.125, true, key, pic)
			wait(900)
		  zalupa(-954 , 1891.125 , 124.5, true, key, pic)
							sendSync(620, -70.875, 1497.875, true, key, 590)
				wait(900)
		  zalupa(-1506.375 , 2421.625 , 49.25, true, key, pic)
			wait(900)
		  zalupa(-1458.375 , 2626.25 , 55.75, true, key, pic)
			wait(900)
		  zalupa(-1321.5 , 2697.5 , 50.25, true, key, pic)
			wait(900)
		  sendSync(-1101.375 , 2815.625 , 44.5, true, key, 590)
			wait(900)
		  zalupa(-931 , 2697 , 41.5, true, key, pic)
			wait(900)
		  zalupa(-734.75 , 2406.75 , 127.75, true, key, pic)
			wait(900)
		  zalupa(-781.125 , 2104.625 , 60.375, true, key, pic)
			wait(900)
		sendSync(620, -70.875, 1497.875, true, key, 590)
			wait(900)
		  zalupa(-601 , 1923.5 , 22.875, true, key, pic)
			wait(900)
		  zalupa(-495.25 , 2317.25 , 69, true, key, pic)
			wait(900)
		  zalupa(-192.25 , 2656.75 , 62.875, true, key, pic)
			wait(900)
		  sendSync(-32.875 , 2342.75 , 24.125, true, key, 590)
			wait(900)
		  zalupa(233.75 , 2547.125 , 16.75, true, key, pic)
			wait(900)
		  zalupa(285.5 , 2501.125 , 16.375, true, key, pic)
			wait(900)
		  zalupa(232.375 , 2951.25 , 2.625, true, key, pic)
			wait(900)
		sendSync(620, -70.875, 1497.875, true, key, 590)
			wait(900)
		  zalupa(683.875 , 2210.75 , 24.625, true, key, pic)
			wait(900)
		  zalupa(721.25 , 1824.375 , 9.5, true, key, pic)
			wait(900)
		  zalupa(678.375 , 1822 , 5.375, true, key, pic)
			wait(900)
		  zalupa(716.375 , 1827.75 , 5.875, true, key, pic)
			wait(900)
		  sendSync(722.625 , 1628.125 , 5, true, key, 590)
			wait(900)
		  zalupa(684.375 , 895.75 , -39.625, true, key, pic)
			wait(900)
		  zalupa(-219.625 , 1218.25 , 19.625, true, key, pic)
			wait(900)
		  zalupa(35.625 , 1360.125 , 9.125, true, key, pic)
			wait(900)
		sendSync(620, -70.875, 1497.875, true, key, 590)
			wait(900)
		  zalupa(278.125 , 1253.875 , 16.125, true, key, pic)
			wait(900)
		  zalupa(413.5 , 1438.25 , 9.125, true, key, pic)
			wait(900)
		  zalupa(109.5 , 1064.875 , 13.5, true, key, pic)
				sendSync(620, -70.875, 1497.875, true, key, 590)
			wait(900)
		  zalupa(134 , 1736.625 , 17.625, true, key, pic)
			wait(900)
		  sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
			wait(900)
zalupa(-197.875 , 2689.625 , 67.875, true, key, pic)
wait(900)
zalupa(-419.5 , 2571.75 , 42, true, key, pic)
wait(900)
zalupa(-329.875 , 2220.25 , 42.375, true, key, pic)
wait(900)
zalupa(-323 , 2218.625 , 44.75, true, key, pic)
wait(900)
sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
wait(900)
zalupa(-416.875 , 2208.375 , 42.375, true, key, pic)
wait(900)
zalupa(687.875 , 1770.75 , 6.875, true, key, pic)
wait(900)
zalupa(797.125 , 1652.25 , 10.875, true, key, pic)
				sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(703.625 , 1336.375 , 11.25, true, key, pic)
wait(900)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(652.25 , 1289.75 , 11.625, true, key, pic)
wait(900)
zalupa(687 , 1292.5 , 18.75, true, key, pic)
	sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(693.25 , 1264 , 11.625, true, key, pic)
wait(900)
sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
wait(900)
zalupa(705.625 , 1287.625 , 14.5, true, key, pic)
wait(900)
zalupa(802.625 , 1101.625 , 30.375, true, key, pic)
wait(900)
zalupa(491.625 , 783.5 , -22, true, key, pic)
wait(900)
				sendSync(620, -70.875, 1497.875, true, key, 590)
zalupa(-131.625 , 578.5 , 15.875, true, key, pic)
wait(900)
zalupa(-22.625 , 964 , 19.625, true, key, pic)
wait(900)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(22.375 , 1184.5 , 19.25, true, key, pic)
wait(900)
zalupa(184.5 , 1256 , 26.125, true, key, pic)
wait(900)
zalupa(353.25 , 1311.5 , 13.875, true, key, pic)
wait(900)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(247.75 , 1139.375 , 11.25, true, key, pic)
wait(900)
zalupa(-23.875 , 1235.25 , 18.125, true, key, pic)
	sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(-266.625 , 1256.25 , -5.375, true, key, pic)
wait(900)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(-412.625 , 1237.875 , 1.125, true, key, pic)
wait(900)
zalupa(-270.625 , 1437 , 75.75, true, key, pic)
	sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(-252.125 , 1461.625 , 75.5, true, key, pic)
wait(900)
zalupa(-270.375 , 1473.25 , 75.875, true, key, pic)
wait(900)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(-248.625 , 1478 , 75.5, true, key, pic)
	sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(-233 , 1499.25 , 75.875, true, key, pic)
wait(900)
zalupa(-218.375 , 1656.125 , 24.75, true, key, pic)
				sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(-941 , 1640 , 7.125, true, key, pic)
wait(900)
zalupa(-1038.5 , 1810.25 , 77.5, true, key, pic)
wait(900)
  sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(-1206.375 , 1823.125 , 41.625, true, key, pic)
wait(900)
zalupa(-1322.25 , 1842.5 , 36.875, true, key, pic)
wait(900)
zalupa(-601 , 1923.5 , 22.875, true, key, pic)
				sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(-1441.875 , 2641.375 , 61, true, key, pic)
wait(900)
zalupa(-1320.625 , 2458.375 , 87.125, true, key, pic)
wait(900)
sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(260.375 , 2116.75 , 17.25, true, key, pic)
wait(900)
zalupa(238 , 1717.75 , 22.75, true, key, pic)
	sendSync(620, -70.875, 1497.875, true, key, 590)
wait(900)
zalupa(15.25 , 1721.25 , 23.75, key, pic)
wait(900)
	  sendSync(415.375 , 1843.625 , 20.5, true, key, 590)
		sampAddChatMessage("Всё ептаа" -1)
wait(1000)
function sampev.onSetPlayerPos()
	return true end
	function sampev.onSetPlayerHealth()
	return true end
	function sampev.onSetInterior()
		return true end
	function sampev.onTogglePlayerControllable()
	return true end
	function sampev.onApplyPlayerAnimation()
	return true end
end) end




-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function fastmenu()
lua_thread.create(function()
sampSendChat(".у Начинаю эфир")
wait(6500)
sampSendChat(".э Доброго времени суток, дорогие жители Зоны.")
wait(4000)
sampSendChat(".э Сегодня я хотел бы вас рассказать о СЭС ( Санитарно-эпидемическая служба ).")
wait(6000)
sampSendChat(".э В зоне каждый день проходят перестрелки и люди умирают от рук других людей,")
wait(7000)
sampSendChat(".э голода, радиации, аномалий, мутантов...")
wait(5000)
sampSendChat(".э Но если эти трупы не убирать - то будет ужасная вонь и беспорядок")
wait(6000)
sampSendChat(".э Что бы того не случилось и была организована служба СЭС")
wait(5000)
sampSendChat(".э В которую входят низко профильные учёные ( ниже 20 лвла ).")
wait(6000)
sampSendChat(".э В их обязанности входит сбор трупов.")
wait(4000)
sampSendChat(".э Трупы нужно свозить в кучи, которые находятся возле общин")
wait(6000)
sampSendChat(".э А именно : возле Кебрадоса, Боуна, Робады, Бруджаса, на ВС и яме возле анклава")
wait(4000)
sampSendChat(".э ( нужно нажать F находясь на куче трупов без зелёного дыма ).")
wait(5000)
sampSendChat(".э Так же в трупах учёные при обыске могут находить : золотые коронки ( +100$ ),")
wait(5000)
sampSendChat(".э Деньги в бумажнике ( +500$ ), флешки ( +1 ЕХР ), важные документы ( +5 ЕХР )!")
wait(6000)
sampSendChat(".э Но запах просачивается сквозь мешки для трупов и мутанты чуют этот запах")
wait(4000)
sampSendChat(".э Они могут приходить и собирать плоть со свежих трупов тем самым утоляя голод!")
wait(7000)
sampSendChat(".э Так что эта работа выгодна и для учёных, и для мутантов!")
wait(5000)
sampSendChat(".э А на этом я заканчиваю свой эфир. Удачи в зоне и приятной игры!")
wait(1000)
sampSendChat("/время")
end)
end


function fastmenu2()
lua_thread.create(function()
sampSendChat(".у Начинаю эфир")
wait(6500)
sampSendChat(".э Доброго времени суток, дорогие жители Зоны.")
wait(4000)
sampSendChat(".э Сегодня я хотел бы рассказать вам о погодных явлениях.")
wait(5000)
sampSendChat(".э Всего в Зоне зафиксировано 4 погодных явления:")
wait(6000)
sampSendChat(".э Песчаная буря, кислотный дождь, выброс, грави.")
wait(5000)
sampSendChat(".э Обо всех явлениях Псионная Разведка предупреждает за 5 минут до их начала.")
wait(8000)
sampSendChat(".э По порядку: песчаная буря. Во время её видимость почти нулевая.")
wait(4000)
sampSendChat(".э Все из-за того, что сильный ветер несёт песок по Зоне.")
wait(4000)
sampSendChat(".э Буря не очень опасна, так как может помешать только проезду или стрелкам.")
wait(5000)
sampSendChat(".э Кислотный дождь.")
wait(6000)
sampSendChat(".э Во время кислотного дождя лучше всего отсидеться у себя дома или в Анклаве.")
wait(4000)
sampSendChat(".э Причиной этому является зашкаливающий уровень радиации на улице.")
wait(4000)
sampSendChat(".э Еще одной причиной сидеть дома служит высокая активность мутантов.")
wait(4000)
sampSendChat(".э Не стоит забывать, что высокая радиация идёт им только на руку.")
wait(4000)
sampSendChat(".э Выброс.")
wait(5000)
sampSendChat(".э Выброс - самое опасное явление из всех четырёх.")
wait(6000)
sampSendChat(".э Во время выброса всех, кто находится на улице, ожидает мгновенная смерть.")
wait(5000)
sampSendChat(".э Лучшие укрытия от выброса - Анклав или Метро.")
wait(6000)
sampSendChat(".э Ходят слухи, что во время выброса в метро призраки проникают в наш мир.")
wait(7000)
sampSendChat(".э Так же, в метро во время выброса идёт война трёх группировок.")
wait(7000)
sampSendChat(".э Грави.")
wait(5000)
sampSendChat(".э Во время этого явления гравитация предельно снижается.")
wait(4000)
sampSendChat(".э Автомобили не смогут ездить, так как сцепления с дорогой попросту не будет.")
wait(5000)
sampSendChat(".э Во время грави не рекомендуется прыгать из-за рисков разбиться.")
wait(6000)
sampSendChat(".э Не стоит забывать о том, что любое из этих явлений заканчивается внезапно.")
wait(7000)
sampSendChat(".э На этом мой эфир подходит к концу. Удачи вам на просторах Зоны.")
wait(1000)
sampSendChat("/время")
end)
end

function fastmenu3()
		lua_thread.create(function()
sampSendChat(".у Начинаю эфир")
wait(6500)
sampSendChat(".э Приветствую жители Зоны!!!")
wait(4000)
sampSendChat(".э Сегодня я расскажу о фракции Военные.")
wait(5000)
sampSendChat(".э Военные - Люди, которые должны охранять стратегические объекты")
wait(6000)
sampSendChat(".э И обеспечивать защиту силовыми методами.")
wait(5000)
sampSendChat(".э У военных многообразная деятельность.")
wait(8000)
sampSendChat(".э Посты - каждый боец который не входит в состав ДОЛГа обязан стоять на посту.")
wait(4000)
sampSendChat(".э Конвой - военные берут хаммеры и автомобиль находящийся рядом с хаммерами.")
wait(4000)
sampSendChat(".э В этом автомобиле артефакты, военные должны доставить артефакты в Бейсад.")
wait(5000)
sampSendChat(".э Караван - военные должны доставить из Бейсада 4 фуры на военные склады.")
wait(6000)
sampSendChat(".э Инкассация - военные должны доставить деньги в один из 3 банков...")
wait(4000)
sampSendChat(".э Но каждый может сесть в бронеавтомобиль и забрать из его 25.000$!")
wait(4000)
sampSendChat(".э Ограбление - Нужно убить каждого грабителя, за 1 грабителя военные получают 10 наград.")
wait(4000)
sampSendChat(".э Но если военный не справится с задачей, то его отправят на гауп-вахту.")
wait(4000)
sampSendChat(".э Сопровождение - военные должны защитить ученых и их документы любой ценой!")
wait(5000)
sampSendChat(".э Ведь на них могут напасть с любой стороны и кто угодно.")
wait(7000)
sampSendChat(".э На этом мой эфир подходит к концу. Удачи вам на просторах Зоны.")
wait(1000)
sampSendChat("/время")
wait(1000)
 end)
end



  function fastmenu4()
			lua_thread.create(function()
sampSendChat(".у Начинаю эфир")
wait(6500)
sampSendChat(".э Добрый день дорогие жители Зоны.")
wait(5000)
sampSendChat('.э Сегодня я хочу провести эфир на тему "Вечеринка".')
wait(4000)
sampSendChat(".э Для вечеринки нам необходимо: дом с Гостинной (Кухня), алкоголь и гости.")
wait(6000)
sampSendChat(".э У нас есть 4 вида алкоголя - это пиво,вино,эль,бейлис.")
wait(4000)
sampSendChat(".э Алкогольные напитки можно найти на алкозаводе выполнив кв-найти водки (завод).")
wait(7000)
sampSendChat(".э Для пиво необходимо: 1 канистра, 1 крупа и 100 кулинарии.")
wait(5000)
sampSendChat(".э Для вина же нам необходимо: 1 канистра, фрукты (1 шт.) и 200 кулинарии.")
wait(5000)
sampSendChat(".э Для эль'а так же 1 канистра, 1 тыква и 300 кулинарии.")
wait(4000)
sampSendChat(".э И для самого приятного по вкусу - бейлис'а нужна 1 канистра, 1 молоко и 400 кулинарии.")
wait(6000)
sampSendChat(".э После того как набрали алкоголь рекомендую наварить по больше еды!")
wait(4000)
sampSendChat(".э И дальше о самом приятном.")
wait(5000)
sampSendChat(".э За 1 выпитый напиток вы получите награду в размере 1 ЕХР.")
wait(4000)
sampSendChat(".э За 1 еду которую съедят вы получите так же 1 ЕХР.")
wait(7000)
sampSendChat(".э А за то что ваши гости поблагодарят за вечеринку вы получите тоже 1 ЕХР.")
wait(7000)
sampSendChat(".э Хочу добавить то что за 1 сваренный алкоголь в ваш бар добавиться +5 алкоголя.")
wait(5000)
sampSendChat(".э Максимальное количество алкоголя в баре 5 (каждая по 5).")
wait(6000)
sampSendChat(".э Не забудьте открыть двери для гостей и приглашайте как можно больше жителей зоны.")
wait(4000)
sampSendChat(".э А на этом всё.")
wait(4000)
sampSendChat(".э Удачи вам и берегите себя!")
wait(1000)
sampSendChat("/время")
end)
end

  function fastmenu5()
			lua_thread.create(function()
sampSendChat(".у Начинаю эфир!")
wait(2500)
sampSendChat('/э Здравствуйте! Сегодняшняя тема эфира "Завод Кибердайн"')
wait(6500)
sampSendChat("/э Со всем недавно был добавлен завод Кибердайн.")
wait(5000)
sampSendChat("/э Но мало кому известно что завод функционирует очень хорошо.")
wait(5000)
sampSendChat("/э На заводе имеются различные работы, также Бендер платит за электронику.")
wait(4000)
sampSendChat("/э Электроника - Материал из которого производятся наноботы")
wait(5000)
sampSendChat("/э Электроника раскидана по Лас-Вентурас, Вы можете искать её в домах.")
wait(4000)
sampSendChat("/э Электронику также можно найти в нычках сиплого.")
wait(6000)
sampSendChat("/э Бендер платит за каждую 10-ю электронику 1000$")
wait(5000)
sampSendChat("/э На заводе учёные производят различных наноботов.")
wait(5000)
sampSendChat("/э Таким образом деятельность учёных в Лас-Вентурас стала полностью автономна.")
wait(6000)
sampSendChat("/э Собирая электронику все игроки получают деньги, а создавая наноботов, учёные - опыт.")
wait(7000)
sampSendChat("/э Создание одной партии наноботов тратится 10 единиц электроники.")
wait(4000)
sampSendChat("/э В конце всех действий нужно будет правильно сложить Драгметаллы.")
wait(7000)
sampSendChat("/э Числа выпадают рандомно и будут служить дальнейшей наградой для учёного.")
wait(5000)
sampSendChat("/э Всего Учёный сможет получить от 1 до 15 exp.")
wait(4000)
sampSendChat("/э Также Учёный получает +5 к науке, но не больше одного раза в день.")
wait(6000)
sampSendChat("/э А если его навык науки прокачен полностью, то выдаётся +1 exp за работу.")
wait(7000)
sampSendChat(".э Теперь переходим к синтезу на заводе Кибердай.")
wait(6500)
sampSendChat(".э Лучшие умы учёных придумали синтез, синтез используется для заряда артефакта")
wait(5500)
sampSendChat(".э Стоимость заряда артефакта составляет 10.000$")
wait(6000)
sampSendChat(".э А провести синтез сможет любой учёный Чистой Воды.")
wait(6500)
sampSendChat(".э Для проведения синтеза учёному потребуются наноботы.")
wait(6900)
sampSendChat("/э На этом эфир подошёл к концу. Приятной игры :)")
wait(1300)
sampSendChat("/время")
end)
end



function fastmenu6()
		lua_thread.create(function()
   sampSendChat(".у Начинаю эфир")
   wait(6500)
   sampSendChat(".э Доброго времени суток, жители зоны.")
   wait(6000)
   sampSendChat(".э Сегодня мне бы хотелось вам подробно рассказать об улучшенном оружие.")
   wait(5000)
   sampSendChat(".э Всего их 5: Пистолеты, ПП, дробовики, автоматы и снайперские винтовки.")
   wait(4000)
   sampSendChat(".э Улучшить их можно двумя способами.")
wait(5000)
sampSendChat(".э Первый способ. Купить улучшение на Нефтезаводе у Нитро.")
wait(4000)
sampSendChat(".э Второй способ. Улучшить в гараже, имея 100 науки, 1000 навыка ремонта и нужные ресурсы на руках.")
wait(6000)
sampSendChat(".э Пистолеты - $100 000. В гараже: 10 металла, 10 запчастей")
wait(5000)
sampSendChat(".э Пистолет будет стрелять отравленными дротиками, отравляя противника.")
wait(7000)
sampSendChat(".э Смерть будет медленной и мучительной.")
wait(4000)
sampSendChat(".э Избежать смерти вам поможет обычная травка (Y - курнуть)")
wait(4000)
sampSendChat(".э Пистолеты-пулемёты - $300 000. В гараже: 20 металла, 20 запчастей.")
wait(7000)
sampSendChat(".э Улучшение касается изменения формы пули.")
wait(5000)
sampSendChat(".э Стреловидные пули, будут  вызывать сильное кровотечение у жертвы.")
wait(4000)
sampSendChat(".э Она будет терять по 10 НР в секунду.")
wait(6000)
sampSendChat(".э Спастись можно просто перевязав раны бинтами из обычной аптечки.")
wait(7000)
sampSendChat(".э Дробовики - $800 000. В гараже: 30 металла, 30 запчастей.")
wait(8000)
sampSendChat(".э Дробь заменяется на капсулы с взрывчатым веществом...")
wait(4000)
sampSendChat(".э ...которое детонирует при попадании в противника!")
wait(6000)
sampSendChat(".э Очень эффектно выглядит и к тому же наносит колоссальный урон!")
wait(4000)
sampSendChat(".э Автоматы - $500 000. В гараже: 40 металла, 40 запчастей")
wait(5000)
sampSendChat(".э Детали заменяются на более износостойкие.")
wait(7000)
sampSendChat(".э Ибо будет применяться мощный бронебойный патрон.")
wait(5000)
sampSendChat(".э Отличная альтернатива для военных против сильных мутантов!")
wait(5000)
sampSendChat(".э Прошибает броню и наносит больший урон!")
wait(6000)
sampSendChat(".э Снайперская винтовка - $1 000 000. В гараже: 50 металла ,50 запчастей.")
wait(4000)
sampSendChat(".э Более лёгкая, более удобная, точная и бесшумная.")
wait(6000)
sampSendChat(".э Но самое главное это опять же то чем она стреляет!")
wait(5000)
sampSendChat(".э Пуля, выпускаемая из винтовки, наносит такие огромные повреждения")
wait(5000)
sampSendChat(".э Что выжить шансов практически нет даже у мутантов, учитывая всю их высокую живучесть.")
wait(4000)
sampSendChat(".э Один выстрел - один труп.")
wait(5000)
sampSendChat(".э Патроны к этим оружиям можно купить у Тамары и на базе Сталкеров.")
wait(6000)
sampSendChat(".э (.навигатор - услуги - оружие от Тамары), (.навигатор - базы орг - Сталкеры)")
wait(4000)
sampSendChat(".э Стреловидные пули ($100) - Для ПП.")
wait(5000)
sampSendChat(".э Отравленные дротики ($300) - Для пистолетов.")
wait(4000)
sampSendChat(".э Бронебойные пули (500$) - Для автоматов.")
wait(4000)
sampSendChat(".э Разрывные капсулы ($1000) - Для дробовиков.")
wait(4000)
sampSendChat(".э Пули Дум-Дум ($2000) - Для снайперской винтовки.")
wait(5000)
sampSendChat(".э Не забудьте, у Вас может быть только одно улучшение!")
wait(4000)
sampSendChat(".э  На этом эфир окончен - Приятной игры!")
wait(1000)
sampSendChat("/время")
end)
end


 function fastmenu7()
	 	lua_thread.create(function()
sampSendChat(".у Начинаю эфир!")
wait(2500)
sampSendChat(".э Здравствуйте уважаемые радиослушатели!")
wait(6500)
sampSendChat('.э Сегодняшняя тема эфира "Модификация Артефактов"')
wait(5000)
sampSendChat(".э На заводе Кибердайн каждый желающий может улучшить свой артефакт!")
wait(5000)
sampSendChat(".э Для этого вам потребуется попросить СВОБОДУ - 16+ лвл сталкера")
wait(4000)
sampSendChat(".э Чтобы он скрафтит артефакт, стоимость его составляет 10.000$")
wait(5000)
sampSendChat('.э Такая модификация называется "Спайка"')
wait(4000)
sampSendChat(".э Перейдём собственно к самим модификациям.")
wait(6000)
sampSendChat(".э Туман - Газировка+Медуза.")
wait(5000)
sampSendChat(".э Отличное сочетание для боя, газировка спасёт от любого спец.оружия...")
wait(5000)
sampSendChat(".э а Медуза спрячет Вас от нежелательных врагов ")
wait(6000)
sampSendChat(".э Шторм - Газировка+Трамплин.")
wait(7000)
sampSendChat(".э Такая спайка артефактов хороша тем, что Вы сможете быстро ездить..")
wait(4000)
sampSendChat(".э И тем же временем, быть в безопасности от спец.оружия.")
wait(7000)
sampSendChat(".э Автоген - Газировка+Жарка.")
wait(5000)
sampSendChat(".э Такое сочетание как по мне, вытащит Вас с любой передряги!")
wait(4000)
sampSendChat(".э Гроза - Газировка+Электра")
wait(6000)
sampSendChat(".э Может и для новичков такое сочетание хорошее, но не для всех игроков.")
wait(7000)
sampSendChat(".э Далее мы перейдём к синтезу...")
wait(8000)
sampSendChat(".э Если СВОБОДОВЕЦ может сделать спайку, то Учёный может провести синтез.")
wait(4000)
sampSendChat(".э Синтез может увеличить Ваш заряд артефакта до 30")
wait(6000)
sampSendChat(".э Стоимость такой услуги стоит 10.000$")
wait(7000)
sampSendChat("/э Синтез проводится на заводе Кибердайн")
wait(6000)
sampSendChat("/э И при Синтезе, все участники Чистой Воды получают 1000$")
wait(5500)
sampSendChat("/э Для Синтеза и Спайки потребуются наноботы, или ничего не получится.")
wait(5500)
sampSendChat(".э На этом эфир окончен - Приятной игры!")
wait(1000)
sampSendChat("/время")
end)
end

function fastmenu8()
		lua_thread.create(function()
   sampSendChat(".у Начинаю эфир")
   wait(6500)
   sampSendChat(".э Доброго времени суток, жители зоны.")
   wait(6000)
   sampSendChat(".э Сегодня я расскажу вам про кланы")
   wait(5000)
   sampSendChat(".э Как всем известно, после взрыва К.А.С.С началась полная неразбериха")
   wait(4000)
   sampSendChat(".э В этой суете люди стали объединяться в кланы")
wait(5000)
sampSendChat(".э Цели у кланы самые разные: грабеж, помощь, войны за контроль общин и тд")
wait(4000)
sampSendChat(".э В одном клане могут состоять игроки из различных фракций")
wait(6000)
sampSendChat(".э Узнать какие кланы сейчас есть можно командой (.кланы)")
wait(5000)
sampSendChat(".э У каждого клана есть собственная волна (.ь)")
wait(7000)
sampSendChat(".э Создать клан довольно просто. Достаточно оплатить его (.донат – создать клан)")
wait(4000)
sampSendChat(".э Цена создания клана – 100 донат рублей")
wait(4000)
sampSendChat(".э Также клан необходимо продлевать (цена одного продления – 100 д.р.)")
wait(7000)
sampSendChat(".э Одно продление дает возможность существовать клану 30 дней")
wait(5000)
sampSendChat(".э Меню клана можно открыть в похоронном бюро")
wait(4000)
sampSendChat(".э (.навигатор – услуги – похоронное бюро)")
wait(6000)
sampSendChat(".э Допустим вы создали клан. Что же делать дальше спросите вы")
wait(7000)
sampSendChat(".э Для начала вам надо набрать состав. Максимум 10 человек в клане")
wait(8000)
sampSendChat(".э Ищите подходящего человека и вводите команду (.взять ид)")
wait(4000)
sampSendChat(".э Также в кланах присутствует система рангов (всего 5 рангов считая с лидером)")
wait(6000)
sampSendChat(".э Игроки 4 ранга могут улучшать цитадель.")
wait(4000)
sampSendChat(".э Игроки 3 – заниматься минированием. 2 – брать оружие")
wait(5000)
sampSendChat(".э Повышать игроков может только лидер (.повысить ид)")
wait(7000)
sampSendChat(".э Затем, если ваш клан создан для каптов бизнесов, ищите подходящие бизнесы и нападете")
wait(5000)
sampSendChat(".э Время каптов с 21:00 до 23:00. Список бизнесов можно посмотреть в похоронном бюро")
wait(5000)
sampSendChat(".э После того, как вы набрали состав,определились на какие бизнесы нападать…")
wait(6000)
sampSendChat(".э Для начала дождитесь начала каптов, а то есть 21.00")
wait(4000)
sampSendChat(".э Затем вы должны подьехать к ближнему бизнесу и начать капт (.напасть)")
wait(6000)
sampSendChat(".э После этого начнется капт, ваша задача продержаться 5 минут в зоне капта")
wait(5000)
sampSendChat(".э После захвата бизнеса, каждый день в 21:01 вам будет приходить «оброк» с него")
wait(5000)
sampSendChat(".э И так до тех пор, пока его не отберут у вас")
wait(4000)
sampSendChat(".э Идем дальше! На очереди у нас цитадель")
wait(5000)
sampSendChat(".э Цитадель – база клана. Всего их четыре: Боун, Робада, Кебрадос и Бруджас")
wait(6000)
sampSendChat(".э Чтобы ваш клан обзавелся цитаделью, вам надо захватить все бизнесы в одной общине")
wait(4000)
sampSendChat(".э Когда у вас появится цитадель, прибыль с бизнесов станет больше")
wait(5000)
sampSendChat(".э Да и защищать бизнесы от нападения других кланов вам станет проще")
wait(4000)
sampSendChat(".э Теперь же мы узнаем об улучшениях самой цитадели")
wait(4000)
sampSendChat(".э Для начала вам нужно построить Амбарный замок, его цена 100.000$")
wait(4000)
sampSendChat(".э Он позволит брать ресурсы в цитадели")
wait(5000)
sampSendChat(".э Ресурсы вам надо будет воровать с ВС")
wait(4000)
sampSendChat(".э Рядом с вашей цитаделью будут мопеды. Именно на них выбудете воровать ресурсы")
wait(5000)
sampSendChat(".э Сядьте на него и нажмите «Да».")
wait(4500)
sampSendChat(".э Затем езжайте на ВС, встаете на маркер и назад в цитадель.")
wait(5000)
sampSendChat(".э Также можно угнать фуру, во время конвоя у военных.")
wait(4500)
sampSendChat(".э Тогда на склад получите сразу 10 ресурсов на склад")
wait(7000)
sampSendChat(".э Далее идут улучшения, цена которых 100.000$ и 100 ресурсов за каждое")
wait(6000)
sampSendChat(".э Затем вам нужен генератор. Он обеспечит цитадель электричеством")
wait(5000)
sampSendChat(".э Фельдшер – члены клана могут лечиться в цитадели.")
wait(6000)
sampSendChat(".э Стоит каждое возрождение в цитадели 3 ед.ресурса")
wait(5000)
sampSendChat(".э Также при смерти в активной фазе клана, игрок возродится в цитадели")
wait(6000)
sampSendChat(".э Оружейка – добавляет в цитадель оружейную комнату.")
wait(5000)
sampSendChat(".э Оружие делается из ресурсов на складе. В скобочках будет указана цена")
wait(5000)
sampSendChat(".э Пикапы – заменяет мопеды на пикапы.")
wait(5000)
sampSendChat(".э Теперь вы будете возить не по 1 ед.ресов за раз, а по 2")
wait(6000)
sampSendChat(".э Цитадель 1ур. – увеличивает доход с бизнесов вдвое.")
wait(5000)
sampSendChat(".э У следующих улучшений цена: 200.000$ и 200 ресурсов за одно улучшение")
wait(6000)
sampSendChat(".э Дизель-генератор – вырабатывает больше энергии.")
wait(5000)
sampSendChat(".э Благодаря улучшению стеллажи вы сможете хранить до 300 ед. ресурсов в цитадели")
wait(4500)
sampSendChat(".э Операционная – фельдшер сможет теперь давать вам доп.хп.")
wait(7000)
sampSendChat(".э Минирование – у вас появится возможность минировать территорию общины")
wait(7000)
sampSendChat(".э Цена одного минирование – 10 ед.ресурсов")
wait(7000)
sampSendChat(".э Фургоны – заменяет транспорт клана на фургоны.")
wait(7000)
sampSendChat(".э Что позволяет возить по 3 ед.ресов за раз.")
wait(5000)
sampSendChat(".э Цитадель 2 ур. – бизнесы приносят в три раза больше прибыли от первоначальной")
wait(5000)
sampSendChat(".э У последней категории улучшений цена 300.000$ и 300 ресурсов за каждое улучшение")
wait(5000)
sampSendChat(".э Логистика – позволяет хранить 500 ресурсов в цитадели.")
wait(5000)
sampSendChat(".э улучшение «Аптека» в цитадели позволяет вывести радиацию, вирус и ввести глюкозу")
wait(5000)
sampSendChat(".э ГРЩ - контракт с дамбой о поставке электроэнергии напрямую")
wait(5000)
sampSendChat(".э Турели – турели будут наносить урон нападающим 5 хп в секунду.")
wait(5000)
sampSendChat(".э Улучшение «Свои тачки» временно не работает")
wait(5000)
sampSendChat(".э Цитадель 3ур. - бизнесы приносят в четыре раза больше прибыли от первоначальной")
wait(5000)
sampSendChat(".э На этом всё! Удачного выживания в Зоне!")
wait(1000)
sampSendChat("/время")
end)
end

	function fastmenu9()
			lua_thread.create(function()
   sampSendChat(".у Начинаю эфир")
   wait(6500)
   sampSendChat(".э Доброго времени суток, жители зоны.")
   wait(6000)
   sampSendChat(".э Тема нашего эфира - Подфракции.")
   wait(5000)
   sampSendChat(".э Наверное каждый мечтал попасть в Свободу, Долг, Монолит,Чистая Вода или Наемники")
   wait(4000)
   sampSendChat(".э Сегодня я расскажу как туда попасть и чем они занимаются.")
wait(5000)
sampSendChat(".э Сначала разберём кто они такие?")
wait(4000)
sampSendChat(".э Свобода - Сталкеры. Наёмники - Бандиты. Долг - Военные.")
wait(6000)
sampSendChat(".э Монолит - Мутанты. Учёные - Чистая вода.")
wait(5000)
sampSendChat(".э Теперь о том, как туда попасть.")
wait(7000)
sampSendChat(".э Для вступление в ряды Наёмников, Свободы, Монолита надо иметь 16+ Допуск уровня.")
wait(6000)
sampSendChat('.э Для вступление в ряды Долга 20+ Уровень допуска.')
wait(7000)
sampSendChat('.э Для вступление в "Чистая вода" 21+ Уровень допуска.')
wait(4000)
sampSendChat(".э Чем они отличаются от остальных членов фракции.")
wait(7000)
sampSendChat(".э Долг, Свобода, Монолит воюют в PayDay за радио , ради пропаганды своей группировки(+10ЕХР).")
wait(5000)
sampSendChat(".э Все Ученые и Наёмники воюют за дамбу(+10ЕХР), т.к. на дамбе два ценных материала в Зоне.")
wait(4000)
sampSendChat('.э Что имеется ввиду под "два ценных материала в Зоне"?')
wait(6000)
sampSendChat(".э А именно: электроэнергия и очищенная вода.")
wait(7000)
sampSendChat(".э Теперь разберём некоторые новые возможности подфракций.")
wait(8000)
sampSendChat(".э Чистая вода - установка имплантов, лечение от наркомании.")
wait(4000)
sampSendChat(".э Наёмники - возможность выполнять заказы на определённых людей.")
wait(6000)
sampSendChat(".э Свобода - обычные свободные сталкеры, почти не отличаются от обычных сталкеров.")
wait(7000)
sampSendChat(".э Долг - лучшие подразделение военных,. Могут помочь на постах и спец. операциях.")
wait(5000)
sampSendChat(".э Монолит - Почти ничем не отличаются от обычных мутантов.")
wait(7000)
sampSendChat(".э На этом эфир окончен - Приятной игры, до новых встреч!")
wait(1000)
sampSendChat("/время")
end)
end



function fastmenu10()
		lua_thread.create(function()
sampSendChat(".у Начинаю эфир!")
wait(2500)
sampSendChat(".э Здравствуйте исследователи Зоны.")
wait(6500)
sampSendChat(".э Сегодня эфир мы посвятим Заводу.")
wait(5000)
sampSendChat(".э В этом эфире вы узнаете его задумку и приз!")
wait(5000)
sampSendChat(".э При победе Долга и имея 60 ОД, игроки попадают на Завод.")
wait(4000)
sampSendChat(".э Только обязательно нужно быть на Разломе")
wait(5000)
sampSendChat(".э Как только вы зайдете в Завод - вы получаете награду.")
wait(4000)
sampSendChat(".э На протяжении 5-ти минут у вас будет действовать Сумрак")
wait(6000)
sampSendChat(".э В это время вы не будете видеть врагов, а они не будут видеть вас.")
wait(5000)
sampSendChat(".э За это время у вас есть время обдумать стратегию и хорошенько выбрать позицию.")
wait(5000)
sampSendChat(".э За это время, у людей есть время, что бы поставить ставки на того или иного бойца.")
wait(6000)
sampSendChat(".э По истечению 5-ти минут миры вновь сходятся и вы уже можете видеть своих врагов.")
wait(7000)
sampSendChat(".э В этот момент начинается кровопролитная бойня, где выживает только один.")
wait(4000)
sampSendChat(".э Победителю дается право загадать желание у Исполнителя.")
wait(7000)
sampSendChat(".э Помимо оружий, на заводе разбросаны медикаменты, которые пополняют вам здоровье.")
wait(5000)
sampSendChat(".э Особо удачливым даже может попасться медикамент с большой дозой протеина.")
wait(4000)
sampSendChat(".э И ему выдается максимальное значение Дополнительного ХП.")
wait(6000)
sampSendChat(".э В этой мясорубке победит лишь самый удачливый и самый умелый боец.")
wait(7000)
sampSendChat(".э Обдумывайте стратегию на Заводе тщательно! Ведь получить проход к исполнителю")
wait(8000)
sampSendChat(".э Это большая редкость!")
wait(4000)
sampSendChat(".э Но не сидите на одном месте... Голодные Пси-опс готовы тут же съесть людей")
wait(6000)
sampSendChat(".э Которые стоят в сторонке, спокойно наблюдая за кровопролитием.")
wait(7000)
sampSendChat(".э Так же с каждого убитого бойца, вам дадут 2 документа (ЕХР) с его трупа.")
wait(5000)
sampSendChat(".э Ну, а на этом все. Удачи вам в странствиях по Зоне!")
wait(2300)
sampSendChat(".время")
end)
end


function fastmenu11()
		lua_thread.create(function()
   sampSendChat(".у Начинаю эфир!")
   wait(2500)
   sampSendChat(".э Доброго времени суток, жители зоны.")
   wait(6500)
   sampSendChat('.э Сейчас вы прослушаете вещание на тему "Исполнитель Желаний"')
   wait(5000)
   sampSendChat(".э Доступ к заветному Исполнителю можно получить двумя способами.")
   wait(5000)
   sampSendChat(".э Первый способ, пройти квест Пескадеро.")
   wait(4000)
   sampSendChat('.э Квест "Пескадеро" - это сюжетный квест.')
wait(5000)
sampSendChat(".э Сюжетные квесты нужно брать у Бармена.")
wait(4000)
sampSendChat(".э Навигация: Y-Навигатор-Услуги-Бар Скалли.")
wait(6000)
sampSendChat(".э Второй способ , выиграть Завод.")
wait(5000)
sampSendChat(".э Завод - это сражение за Исполнитель, после победы долга на Разломе.")
wait(5000)
sampSendChat('.э Подробнее про Завод вы можете узнать в вещании "Завод".')
wait(6000)
sampSendChat(".э Скажем так. Желания выбирают из определённого списка!")
wait(7000)
sampSendChat('.э Так что заказать "курочку на дом" - у вас не выйдет.')
wait(4000)
sampSendChat(".э Перейдём к желаниям.")
wait(7000)
sampSendChat(".э Богатство - 100.000$, очень неплохая сумма.")
wait(5000)
sampSendChat(".э Сила - 5 Пангита, как его использовать: Y-Пангит.")
wait(4000)
sampSendChat('.э Подробно про Пангит можно узнать в одноимённом вещании "Пангит".')
wait(6000)
sampSendChat(".э Власть - 30 зарядов артефакта на поясе.")
wait(7000)
sampSendChat(".э Убедитесь, что на поясе есть артефакт.")
wait(5500)
sampSendChat(".э Знания - +10 exp.")
wait(6000)
sampSendChat(".э Слава - переход в другую группировку без потери уровня.")
wait(6000)
sampSendChat(".э При переводе, опыт в вашем досье будет обнулён!")
wait(7000)
sampSendChat(".э Переход в Учёные исключительно за .донат")
wait(5000)
sampSendChat(".э И нужно обязательно пройти собеседование и получить .интерн")
wait(6000)
sampSendChat(".э Доблесть - навыки стрельбы на все оружие +1000.")
wait(5500)
sampSendChat(".э Умения - Любой из ваших навыков, станет равен максимальному значению прокачки.")
wait(5500)
sampSendChat(".э На этом эфир окончен - Приятной игры!")
wait(1000)
sampSendChat("/время")
end)
end

function fastmenu12()
		lua_thread.create(function()
   sampSendChat(".у Начинаю эфир!")
   wait(2500)
   sampSendChat(".э Доброго времени суток, жители зоны.")
   wait(6500)
   sampSendChat(".э Каждый имплант дает свои плюшки, но и для его установки нужен вип-статус.")
   wait(5000)
   sampSendChat(".э Первый имплант - Х-мэн.")
   wait(5000)
   sampSendChat(".э Нужен 1 вип-статус и 1.000.000$ на руках.")
   wait(4000)
   sampSendChat(".э Позволяет игнорировать вирус.")
wait(5000)
sampSendChat(".э Даже если у вас нет пангита или артефакта электра заражение не грозит.")
wait(4000)
sampSendChat(".э За исключением входа на Радар на случай если нужно стать заражённым.")
wait(6000)
sampSendChat(".э Вы можете навсегда забыть об угрозе потерять фракцию и уровень.")
wait(5000)
sampSendChat(".э Второй имплант - Аскетизм.")
wait(5000)
sampSendChat(".э Нужен 2 вип-статус и 1.000.000$ на руках.")
wait(6000)
sampSendChat(".э Глушит сигналы организма, сообщающие о голоде, попутно насыщая вас глюкозой.")
wait(7000)
sampSendChat(".э Когда голод достигает критического значения, то вы снова станете сыты.")
wait(4000)
sampSendChat(".э Но при этом сам голод будет увеличиваться, давая вам возможность питаться в кафе.")
wait(7000)
sampSendChat(".э Таким образом восполняя свою выносливость.")
wait(5000)
sampSendChat(".э Для его установки нужно собрать 10 яиц зараженных черепах.")
wait(4000)
sampSendChat(".э Третий имплант - Самоконтроль.")
wait(6000)
sampSendChat(".э Нужен 3 вип-статус и 1.000.000$ на руках.")
wait(7000)
sampSendChat(".э Накопленная радиация до критического уровня резко выбрасывается из организма.")
wait(8000)
sampSendChat(".э Вы сможете навсегда забыть о комбезах, антирадинах и водке.")
wait(4000)
sampSendChat(".э Однако следует понимать, что смертельная радиация в рэд-зонах вас убьёт.")
wait(6000)
sampSendChat(".э Для его установки нужны 10 звёзд-трупоедов")
wait(7000)
sampSendChat(".э Четвёртый имплант - Вычислитель.")
wait(5000)
sampSendChat(".э Нужен 4 вип-статус и 1.000.000$ на руках.")
wait(6000)
sampSendChat(".э Разгоняет вычислительные способности мозга, позволяя делать в уме сложные расчёты.")
wait(5500)
sampSendChat(".э Вы навсегда забудете о комиссии в банке.")
wait(5500)
sampSendChat(".э Для установки данного импланта нужно собрать 10 гребешков.")
wait(5500)
sampSendChat(".э Пятый имплант - Вундеркинд.")
wait(5500)
sampSendChat(".э Нужен 5 вип-статус и 1.000.000$ на руках.")
wait(5500)
sampSendChat(".э С таким имплантом вы станете более легко обучаемые.")
wait(5500)
sampSendChat(".э То есть, любое получение навыка умножается на 2!")
wait(5500)
sampSendChat(".э Для данного ипланта потребуются 10 яиц зараженных черепах и фруктоза от ученого.")
wait(5500)
sampSendChat(".э Шестой имплант - Память.")
wait(5500)
sampSendChat(".э Нужен 6 вип-статус и 1.000.000$ на руках.")
wait(5500)
sampSendChat(".э Склероз вам больше не грозит!")
wait(5500)
sampSendChat(".э Ваша память, как жёсткий диск, удерживает любую информацию.")
wait(5500)
sampSendChat(".э Навыки, полученные в результате обучения, не будут утрачиваться никаким образом.")
wait(6000)
sampSendChat(".э Например навык вождения или выносливость.")
wait(6000)
sampSendChat(".э Для данного импланта требуются 10 звезд-трупоедов и мёд от ученого.")
wait(6000)
sampSendChat(".э Седьмой имплант - Восприятие.")
wait(6000)
sampSendChat(".э Нужен 7 вип-статус и 1.000.000$ на руках.")
wait(6000)
sampSendChat(".э Ваш мозг легко воспринимает новую информацию, не перегружаясь и не уставая.")
wait(6000)
sampSendChat(".э Таким образом вы сможете изучать больше навыков, не прибегая к медитации или отдыху.")
wait(6000)
sampSendChat(".э Некоторые навыки можно будет развить даже сверх нормы!")
wait(6000)
sampSendChat(".э Такая возможность доступна только обладателям данного импланта!")
wait(6000)
sampSendChat(".э Для установки этого импланта вам требуется 10 морских гребешков и аптечку от ученого.")
wait(6000)
sampSendChat(".э Восьмой имплант - Сосредоточенность.")
wait(6000)
sampSendChat(".э Нужен 8 вип-статус и 1.000.000$ на руках.")
wait(6000)
sampSendChat(".э Данный имплант позволяет даже в пылу боя сосредотачиваться на поставленной задаче.")
wait(5500)
sampSendChat(".э Вы будете получать в два раза больше наград!")
wait(5500)
sampSendChat(".э Для данного импланта потребуются 10 яиц зараженных черепах и соль от ученого.")
wait(5500)
sampSendChat(".э Девятый имплант - Реакция.")
wait(5500)
sampSendChat(".э Нужен 9 вип-статус и 1.000.000$ на руках.")
wait(5500)
sampSendChat(".э Ваша реакция увеличивается в разы!")
wait(5500)
sampSendChat(".э С этим имплантом вы можете замечать даже малейшие колебания воздуха!")
wait(5500)
sampSendChat(".э А в случае опасности быстро принимать верные решения, которые спасут вашу жизнь.")
wait(5500)
sampSendChat(".э Состоятельные люди могут себе позволить воздушный транспорт и любят на нём летать")
wait(5500)
sampSendChat(".э Однако постоянно мешают аномалии, которые портят всю романтику неба.")
wait(5500)
sampSendChat(".э С этим имплантом вы сможете летать в своё удовольствие!")
wait(5500)
sampSendChat(".э Для этого импланта нужно 10 звезд-трупоедов и винт от ученого")
wait(5500)
sampSendChat(".э И последний, десятый имплант - Портал.")
wait(5500)
sampSendChat(".э Нужен 10 вип-статус и 1.000.000$ на руках.")
wait(5500)
sampSendChat(".э С таким имплантом вы сможете телепортироваться в самые различные места!")
wait(5500)
sampSendChat(".э При этом не теряя своих пассажиров и свой транспорт.")
wait(5500)
sampSendChat(".э Но стартовать можно только от порталов, которые стоят у арены.")
wait(5500)
sampSendChat(".э Для установки данного импланта вам нужно 10 морских гребешков и металл от ученого.")
wait(5000)
sampSendChat(".э На этом эфир окончен - Приятной игры!")
wait(1000)
sampSendChat("/время")
end)
end


	function fastmenu13()
			lua_thread.create(function()
   sampSendChat(".у Начинаю эфир")
   wait(6500)
   sampSendChat(".э Доброго времени суток, жители зоны.")
   wait(8000)
   sampSendChat(".э И сегодня тема эфира - Места силы.")
   wait(9000)
   sampSendChat(".э После катастрофы в К.А.С.С. можно сказать, что вся Зона - это место силы.")
   wait(4000)
   sampSendChat(".э В основном эти места силы предназначены для мутантов.")
wait(5000)
sampSendChat(".э Учёным ещё предстоит о них узнать.")
wait(7000)
sampSendChat(".э В основном это такие точки: Сгоревшая деревня возле радаров, двор библиотеки")
wait(6000)
sampSendChat('.э пещера снорков, заброшенный дом на дороге "новичков".')
wait(5000)
sampSendChat(".э Мутанты чуют эти места силы, впадая в особое состояние (.походка)")
wait(7000)
sampSendChat(".э В таких местах они начинают восполнять свою силу.")
wait(6000)
sampSendChat('.э Так же, за каждые 3 минуты будет пополнятся один артефакт мутанта.')
wait(7000)
sampSendChat('.э Анклав учредил награду охотникам на мутантов, которые встречаются в местах силы.')
wait(4000)
sampSendChat(".э Это 1 ЕХР за каждого убитого мутанта в этих самых скоплениях.")
wait(7000)
sampSendChat(".э А вот если заражённый убьёт человека в этих местах силы, то тоже получит 1 ЕХР.")
wait(8000)
sampSendChat(".э На этом эфир окончен - Приятной игры, до новых встреч!")
wait(1000)
sampSendChat("/время")
end)
end


function fastmenu14()
		lua_thread.create(function()
   sampSendChat(".у Начинаю эфир")
   wait(6500)
   sampSendChat(".э Доброго времени суток, жители зоны.")
   wait(5500)
   sampSendChat(".э Сегодня я проведу свой эфир на тему “Артефакты”.")
   wait(5000)
   sampSendChat(".э В Зоне шесть артефактов.")
   wait(4000)
   sampSendChat(".э Медуза, Жарка, Газировка, Электра, Трамплин и Пустышка.")
wait(5000)
sampSendChat(".э Все артефакты можно купить на пятой базе.")
wait(7000)
sampSendChat(".э Навигация: .навигатор-услуги-пятая база.")
wait(6000)
sampSendChat(".э Артефакт медуза – может вас отправить в другое измерение на 30 секунд.")
wait(5000)
sampSendChat(".э В этом мире измерении никого нет, кроме вас.")
wait(7000)
sampSendChat(".э Это игроку даёт преимущество пройти куда угодно без препятствий.")
wait(6000)
sampSendChat(".э Его теряют все радары, даже самые мощные.")
wait(7000)
sampSendChat(".э Артефакта хватает на 5 применений.")
wait(4000)
sampSendChat(".э Артефакт Трамплин – своей силой разгоняет ваш т/с за секунду до 100 км/час")
wait(7000)
sampSendChat(".э Можно использовать до 10 раз.")
wait(8000)
sampSendChat(".э Артефакт Газировка обволакивает вас особым газом.")
wait(5500)
sampSendChat(".э Который спасает вас от патрон улучшенного оружия.")
wait(5500)
sampSendChat(".э Хватает на 10 попаданий по вам.")
wait(7000)
sampSendChat(".э Артефакт Жарка, поджигает вашу жертву при стрельбе из любого стрелкового оружия")
wait(5500)
sampSendChat(".э Если у жертвы было изначально больше 90 hp.")
wait(6000)
sampSendChat(".э Этот артефакт очень эффективное оружие против мутантов!")
wait(6500)
sampSendChat(".э Хватает на 10 выстрелов.")
wait(5500)
sampSendChat(".э Артефакт Электра не имеет никаких особых эффектов.")
wait(5500)
sampSendChat(".э Но при достижении VIR 90 выстреливает такой разряд тока ...")
wait(5500)
sampSendChat(".э Недостаточный чтобы убить носителя артефакта. но чтобы нейтрализовать вирус в организме.")
wait(5500)
sampSendChat(".э Это очень полезный артефакт для тех, у кого высокий ранг.")
wait(5500)
sampSendChat(".э Артефакт Пустышка может быть извлечён из любой аномалии при помощи болта.")
wait(5500)
sampSendChat(".э Пустышка в течении 3 часов будет залечивать даже самые глубокие ранения!")
wait(5500)
sampSendChat(".э На этом эфир окончен - Приятной игры!")
wait(1000)
sampSendChat("/время")
end)
end



function fastmenu15()
		lua_thread.create(function()
   sampSendChat(".у Начинаю эфир")
   wait(6500)
   sampSendChat(".э Здравствуйте, дорогие жители и новички Зоны!")
   wait(8000)
   sampSendChat(".э Сейчас я расскажу вам про Жильё в Зоне.")
   wait(9000)
   sampSendChat(".э Всем бездомным людям в Зоне предоставляют кров и защиту на Станции Янов.")
   wait(4000)
   sampSendChat(".э На Янове есть спальные места, столовая и бар.")
wait(5000)
sampSendChat(".э Там живут все люди, не имеющие дома.")
wait(7000)
sampSendChat(".э Каждый человек может купить себе дом в любой общине!")
wait(6000)
sampSendChat(".э Общинами являются маленькие деревеньки - Кебрадос, Бруджас, Боун и Робада.")
wait(5000)
sampSendChat(".э За стенами общин находятся небольшие домики.")
wait(7000)
sampSendChat(".э Цена за жильё зависит от дома. Маленькие дома стоят 10.000$")
wait(6000)
sampSendChat(".э В таких домиках есть спальное и парковочное места, но у них есть большой минус.")
wait(7000)
sampSendChat(".э Такие дома невозможно обустроить, поставить сейф и другую мебель.")
wait(4000)
sampSendChat(".э Но большинство домов - средние, стоят они 50.000$")
wait(7000)
sampSendChat(".э В таких домах так же есть спальное и парковочное места, можно располагать мебель.")
wait(8000)
sampSendChat(".э Но красивые интерьеры в такие дома не предлагаются.")
wait(5500)
sampSendChat(".э Главным минусом домов в общинах является постоянное ограбление домушниками!")
wait(5500)
sampSendChat(".э Так же, заходя в дом, не смущайтесь об интерьере. Интерьер всегда больше чем сам дом!")
wait(7000)
sampSendChat(".э Виной этому явлению является Пузырь - аномалия, искажающая пространство.")
wait(5500)
sampSendChat(".э В общинах так же есть отели-бункеры.")
wait(6000)
sampSendChat(".э Такие бункеры строились ещё до катастрофы.Во время взрыва на К.А.С.С о них забыли!")
wait(6500)
sampSendChat(".э И предприимчивые люди забрали эти бункеры себе и обустроили их под гостиницы.")
wait(5500)
sampSendChat(".э В Них есть всё! Мебель, сейф для оружия, кухня, спальные и парковочные места!")
wait(5500)
sampSendChat(".э Но, вы будете жить в общем номере с другими людьми,не для всех это очень приятно.")
wait(5500)
sampSendChat(".э Для таких людей есть отдельные номера, и естественно, проживание в них стоит дороже.")
wait(5500)
sampSendChat(".э В Зоне есть небольшой городок-крепость. Название такого городка - Бейсад.")
wait(5500)
sampSendChat(".э Бейсайд - это элитный городок, дома в котором стоят 1.000.000$ и 3.500.000$")
wait(5500)
sampSendChat(".э Эти дома отличаются не только внешним видом и размером!")
wait(5500)
sampSendChat(".э В таких домах можно делать красивейшие интерьеры, которые порадуют глаз жителя Зоны!")
wait(5500)
sampSendChat(".э Бейсад охраняют наёмники, и под их охраной не пройдёт ни один мутант и домушник!")
wait(5500)
sampSendChat(".э Ну а на этом я заканчиваю свой эфир. Удачи вам и берегите себя.")
wait(1000)
sampSendChat("/время")
end)
end


function fastmenu16()
		lua_thread.create(function()
   sampSendChat(".у Начинаю эфир")
   wait(6500)
   sampSendChat(".э Здравствуйте жители Зоны!")
   wait(4000)
   sampSendChat(".э Сегодня я расскажу о таком месте как библиотека.")
   wait(6000)
   sampSendChat(".э Библиотеку можно найти в навигаторе(.навигатор-услуги-Библиотека).")
   wait(4000)
   sampSendChat(".э Там вам предложат список книг.")
   wait(4000)
   sampSendChat(".э Расскажу о всех книжках по порядку.")
   wait(5000)
   sampSendChat('.э 1)Книжка "Правила дорожного движения" стоимость книги 1000$.Дает 1 навык Вождения.')
   wait(4000)
   sampSendChat(".э Конечно не самый оптимальный вариант,но все же для новичка сгодится.")
   wait(4000)
   sampSendChat('.э 2)Книжка "Экстремальное движение"')
   wait(6000)
   sampSendChat(".э Стоимость данной книги 100.000$,дает 100 навыка Вождения.")
   wait(4000)
   sampSendChat(".э А вот такая книга предаст вам уверенности на дороге. Следуем дальше.")
   wait(6000)
   sampSendChat('.э 3)Книжка "Медицинский альманах" стоимость которой 1000$,дает 1 навык Медицины.')
   wait(5000)
   sampSendChat(".э Очень хороша в помощи,но все же вы будете не опытным.")
   wait(5000)
   sampSendChat('.э 4)Книжка "Нейрохирургия" стоимость ее 100.000$,дает 100 навыка Медицины.')
   wait(6000)
   sampSendChat(".э С помощью этой книги вы можете лечить других игроков,тем самым получая плату за услугу.")
   wait(6000)
   sampSendChat(".э Едем дальше.")
   wait(4000)
   sampSendChat('.э 5)Книжка "Устройство пылесоса" стоимость 1000$,дает 10 навыка Ремонта.')
   wait(4000)
   sampSendChat('.э Знание устройства пылесоса поможет новичку, ремонтировать свое т/с.')
   wait(4000)
   sampSendChat('.э 6)Книжка "Робототехника" стоимость ее 100.000$,дает 1000 навыка Ремонта.')
   wait(5000)
   sampSendChat(".э Зная эту книгу можно ходить на ограбления Банка. Следующая на очереди.")
   wait(5000)
   sampSendChat('.э 7) "Учебник по математике за 7 класс" стоимость 1000$,дает 1 навык Науки.')
   wait(6000)
   sampSendChat(".э Ну вам явно пригодится математика,как считать то будете свои денежки!")
   wait(6000)
   sampSendChat('.э 8)Книжка "Квантовая физика" стоимость книги 100.000$,дает 100 навыка Науки.')
   wait(5000)
   sampSendChat(".э Может Хакнем Пентагон?")
   wait(5000)
   sampSendChat('.э 9)Название данной книги "Умелый Поваренок" стоимость которой 1000$.')
   wait(4000)
   sampSendChat(".э Книга даёт 10 навыка Кулинарии.")
   wait(5000)
   sampSendChat(".э Салатик будет вкусным с помощью такой книги.")
   wait(4000)
   sampSendChat('.э 10)Книга "Кухня народов мира" стоимость книги 100.000$.')
   wait(5000)
   sampSendChat(".э После прочтения вы сразу получите +1000 навыка Кулинарии.")
   wait(6000)
   sampSendChat(".э Данная книга позволит вам развить кулинарный талант до предела.")
   wait(5000)
   sampSendChat('.э 11)Книга "Искусство красноречия" стоимость данной книги 1000$.')
   wait(4000)
   sampSendChat(".э После прочтения ваш навык торговли прибавится на 1 единицу.")
   wait(6000)
   sampSendChat('.э Что нужно хорошему продавцу?! Конечно "Риторика"!')
   wait(5000)
   sampSendChat('.э 12)Книга "Риторика". Стоимость книги 100.000$.')
   wait(4000)
   sampSendChat(".э После прочтения дает +200 навыка Торговли.")
   wait(6000)
   sampSendChat(".э Пора купить вам свой первый бизнес!")
   wait(4000)
   sampSendChat(".э Ну и последняя книга.")
   wait(6000)
   sampSendChat('.э 13) "Сетевой маркетинг" стоимость которой 200.000$,дает 1000 навыка Торговли.')
   wait(4000)
   sampSendChat(".э Будете заядлым Торговцем!")
   wait(5000)
   sampSendChat(".э Пункт найти книги. Про них вам скажут, что ищите в заброшенных домах Форт - Карсона.")
   wait(6000)
   sampSendChat(".э До скорого!")
   wait(1000)
   sampSendChat("/время")
 end)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------MENU--------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
function applyCustomStyle()
  imgui.SwitchContext()
  local style = imgui.GetStyle()
  local colors = style.Colors
  local clr = imgui.Col
  local function ImVec4(color)
    local r = bit.band(bit.rshift(color, 24), 0xFF)
    local g = bit.band(bit.rshift(color, 16), 0xFF)
    local b = bit.band(bit.rshift(color, 8), 0xFF)
    local a = bit.band(color, 255)
    return imgui.ImVec4(r/255, g/255, b/255, a/255)
  end


  style.WindowRounding = 10.0
  style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
  style.ChildWindowRounding = 5.0
  style.FrameRounding = 5.0
  style.ItemSpacing = imgui.ImVec2(5.0, 5.0)
  style.ScrollbarSize = 13.0
  style.ScrollbarRounding = 5

  colors[clr.Text] = ImVec4(0xFFFFFFFF)
  colors[clr.TextDisabled] = ImVec4(0x212121FF)
  colors[clr.WindowBg] = ImVec4(1);
  colors[clr.ChildWindowBg] = ImVec4(0x21212180)
  colors[clr.PopupBg] = ImVec4(0x212121FF)
  colors[clr.Border] = ImVec4(0xFFFFFF10)
  colors[clr.BorderShadow] = ImVec4(0x21212100)
  colors[clr.FrameBg] = ImVec4(0xC3E88D90)
  colors[clr.FrameBgHovered] = ImVec4(0xC3E88DFF)
  colors[clr.FrameBgActive] = ImVec4(0x61616150)
  colors[clr.TitleBg] = ImVec4(0x212121FF)
  colors[clr.TitleBgActive] = ImVec4(0x212121FF)
  colors[clr.TitleBgCollapsed] = ImVec4(0x212121FF)
  colors[clr.MenuBarBg] = ImVec4(0x21212180)
  colors[clr.ScrollbarBg] = ImVec4(0x212121FF)
  colors[clr.ScrollbarGrab] = ImVec4(0xEEFFFF20)
  colors[clr.ScrollbarGrabHovered] = ImVec4(0xEEFFFF10)
  colors[clr.ScrollbarGrabActive] = ImVec4(0x80CBC4FF)
  colors[clr.ComboBg] = colors[clr.PopupBg]
  colors[clr.CheckMark] = ImVec4(0x212121FF)
  colors[clr.SliderGrab] = ImVec4(0x212121FF)
  colors[clr.SliderGrabActive] = ImVec4(0x80CBC4FF)
  colors[clr.Button] = ImVec4(0x670ba6AA)
  colors[clr.ButtonHovered] = ImVec4(0xce09e0AA)
  colors[clr.ButtonActive] = ImVec4(0x61616150)
  colors[clr.Header] = ImVec4(0x151515FF)
  colors[clr.HeaderHovered] = ImVec4(0x252525FF)
  colors[clr.HeaderActive] = ImVec4(0x303030FF)
  colors[clr.Separator] = colors[clr.Border]
  colors[clr.SeparatorHovered] = ImVec4(0x212121FF)
  colors[clr.SeparatorActive] = ImVec4(0x212121FF)
  colors[clr.ResizeGrip] = ImVec4(0x212121FF)
  colors[clr.ResizeGripHovered] = ImVec4(0x212121FF)
  colors[clr.ResizeGripActive] = ImVec4(0x212121FF)
  colors[clr.CloseButton] = ImVec4(0x212121FF)
  colors[clr.CloseButtonHovered] = ImVec4(0xD41223FF)
  colors[clr.CloseButtonActive] = ImVec4(0xD41223FF)
  colors[clr.PlotLines] = ImVec4(0x212121FF)
  colors[clr.PlotLinesHovered] = ImVec4(0x212121FF)
  colors[clr.PlotHistogram] = ImVec4(0x212121FF)
  colors[clr.PlotHistogramHovered] = ImVec4(0x212121FF)
  colors[clr.TextSelectedBg] = ImVec4(0x212121FF)
  colors[clr.ModalWindowDarkening] = ImVec4(0x21212180)
end
applyCustomStyle()
do


	local fa_font = nil
local fa_glyph_ranges = imgui.ImGlyphRanges({ fa.min_range, fa.max_range })
function imgui.BeforeDrawFrame()
    if fa_font == nil then
        local font_config = imgui.ImFontConfig() -- to use 'imgui.ImFontConfig.new()' on error
        font_config.MergeMode = true

        fa_font = imgui.GetIO().Fonts:AddFontFromFileTTF('moonloader/resource/fonts/fa-solid-900.ttf', 13.0, font_config, fa_glyph_ranges)
    end
end

		function imgui.OnDrawFrame()
			local btnSize = imgui.ImVec2(100, 60)
		if mainwindow.v then window1.v = false window2.v = false
		    local resX, resY = getScreenResolution()
		    imgui.SetNextWindowSize(imgui.ImVec2(590, 420), 2)
		    imgui.SetNextWindowPos(imgui.ImVec2(resX/2, resY/2), 2, imgui.ImVec2(0.5, 0.5))
		    imgui.Begin(u8'Хуууй', mainwindow, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoTitleBar + imgui.WindowFlags.AlwaysAutoResize)
		      imgui.BeginGroup()
		        imgui.BeginChild('Left panel', imgui.ImVec2(118, 338), true)
                if not selectedTab then selectedTab = 1 end
                if imgui.Button(fa.ICON_FA_MAGIC ..u8' Основное ' , btnSize, selectedTab == 1) then selectedTab = 1 end
		            if imgui.Button(fa.ICON_FA_MONEY_BILL ..u8' Работы ',  btnSize, selectedTab == 2) then selectedTab = 2 end
		            if imgui.Button(fa.ICON_FA_GRIP_HORIZONTAL ..u8' Прочее ',  btnSize, selectedTab == 3) then selectedTab = 3 end
							  if imgui.Button(fa.ICON_FA_WHEELCHAIR.. u8' Артефакты ',  btnSize, selectedTab == 4) then selectedTab = 4 end
							 if imgui.Button(fa.ICON_FA_JOURNAL_WHILLS ..u8" Советка ",  btnSize, selectedTab == 5) then selectedTab = 5 end

											    imgui.Hint(u8[[
sfa               inf          nano        zoombie    stalker
masla             metal        eda         spirt      tp
ygol              benz         xleb        apt        derevo
check             anti         virus       xlam       artefact2
sklad             neft         artefact    st         nchki
zalp              shmot        artraz      predmet    invi
inc               apteka       paxavat     seif       samurai
vz                vm           bron        samolet    samolet2
porox             korablik2    korablik    minigun    full
electro           kladik       snipe       remnab     damba
tainik            lovka        zagotovka   zapchast   ferma
ferma2            ferma3       ferma4      posadit    sobrat
cement            cement2      cement3     cement4
da", otvetda) -- "Да"
bazm", otvetbazm) -- "/навигатор - базы организаций - Радар(логово мутантов)"
bazb", otvetbazb) -- "/навигатор - базы организаций - Бандиты"
bazs", otvetbazs) -- "/навигатор - базы органиций - Сталкеры"
bazv", otvetbazv) -- "/навигатор - базы органиций - Штаб Военных"
bazy", otvetbazy) -- "/навигатор - базы организаций - Офис Учёных"
ankl", otvetankl) -- "/навигатор - базы органиций - Анклав"
zar", otvetzar) -- "/навигатор - заработок"
zapravka", otvetzapravka) -- "/навигатор - заправки"
bank", otvetbank) -- "/навигатор - банки"
skin", otvetskin) -- "/навигатор - Магазины одежды"
net", otvetnet) -- "Нет"
pri", otvetpri) -- "Приятной игры на SA:MP Z.O.N.A =)"
zapiska", otvetzapiska) -- "Y - Записки"
zapiskas", otvetzapiskas) -- "Y - Записки - Связь"
zapiskan", otvetzapiskan) -- "Y - Записки - Новичкам"
zapiskak", otvetzapiskak) -- "Y - Записки - Команды"
zapiskaks", otvetzapiskaks) -- "Y - Записки - Служебные команды"
fraka", otvetfraka) -- "Y - Записки - Сообщества"
mat", otvetmat) -- "Воздержитесь от мата"
caps", otvetcaps) -- "Выключите Caps Lock"
nepon", otvetnepon) -- "Не понял Вашего вопроса, перефразируйте"
osk" , otvetosk) -- "Перестаньте оскорблять игрока!"
nocw" , otvetnocw) -- "По квестам советники не помогают!"
sek" , otvetsek) -- "Ожидайте, скоро вылечу Вас!"
zapiskay", otvetzapiskay) -- "Y - записки - уровни"]], 1)
		        imgui.EndChild()
						imgui.EndGroup()
						imgui.SameLine();


						if selectedTab == 1 then
							imgui.BeginGroup()
								imgui.BeginChild('Center panel', imgui.ImVec2(435, 380), true)
								if imgui.Button(u8'Спавн '.. fa.ICON_FA_HOME, btnSize) then spawn() end
                imgui.Hint(u8"В отличие от того же спавна в ультрафаке или же спавн админской командой это тебя в случае нахождения в транспорте выкинет из него и заспавнит", 0.4)
                imgui.SameLine();
                if imgui.Button(u8'Чекпоинт '..fa.ICON_FA_MAP_MARKED_ALT,btnSize) then getMarker() end
                imgui.Hint(u8"Это не /fp но метки берёт также, с машиной не бёрёт, не кикает, варнит", 0.4)
                imgui.SameLine();
								if imgui.Button(u8'Чекпоинт2 '..fa.ICON_FA_MAP_MARKED_ALT,btnSize) then
									  lua_thread.create(function()
									function sampev.onSetPlayerPos()
										return false end
									 sendSync(620, -70.875, 1497.875, true, key, 590)
									 sampProcessChatInput("/rfp") wait(4000)
									 function sampev.onSetPlayerPos()
										 return true end end) end
								imgui.Hint(u8"это /rfp, нужен этот скрипт, не кикает, варнит", 0.4)
								imgui.SameLine();
								if imgui.Button(u8'Смэрть '..fa.ICON_FA_SKULL_CROSSBONES, btnSize) then setCharHealth(PLAYER_PED, 0) end
								if imgui.Button(u8'Сбить скин '..fa.ICON_FA_TSHIRT, btnSize) then shmot() end
								imgui.Hint(u8"Берёт одежду с хаты, не кикает, но варнит", 0.4)
								 imgui.SameLine();
								if imgui.Button(u8'Телепорт '..fa.ICON_FA_MAP_MARKER_ALT,imgui.ImVec2(205, 60)) then tp() end
								imgui.Hint(u8"Телепорт в машине и без, в машине не варнит, без машины варнит", 0.4)
								imgui.SameLine();
							  if imgui.Button(u8'Починить '..fa.ICON_FA_TOOLS,btnSize) then repaircar() end
						   	imgui.Hint(u8"Чинит тачку, не варнит,однако админы так же могут смотреть колл-во ремнаборов", 0.4)
						  	if imgui.Button(u8'Хп бронь '..fa.ICON_FA_FIRST_AID,btnSize) then full() end
						   	imgui.Hint(u8"Не кикает, варнит, над головой пишет, что ты схавал банан", 0.4)
                imgui.SameLine();
								if imgui.Button(u8'Сейф ' .. fa.ICON_FA_BOMB,btnSize) then seif() end
						   	imgui.Hint(u8"Не кикает, варнит", 0.4)
								imgui.SameLine();
								if imgui.Button(u8'Нычки '  .. fa.ICON_FA_BOXES,btnSize) then nchki() end
						   	imgui.Hint(u8"Лутает нычки из виртуального мира", 0.4)
								imgui.SameLine();
								if imgui.Button(u8'Предметы '  .. fa.ICON_FA_COUCH,btnSize) then predmet() end
						   	imgui.Hint(u8"Спавнит и лутает предметы из виртуального мира", 0.4)
								if imgui.Button(u8'Хлам '  .. fa.ICON_FA_DUMPSTER,btnSize) then xlam() end
								imgui.Hint(u8"Спавнит и лутает хлам из виртуального мира", 0.4)
								imgui.SameLine();
								if imgui.Button(u8'Детали ' .. fa.ICON_FA_COGS,btnSize) then electro() end
								imgui.Hint(u8"Заспавнит и соберёт мусор,электродетали и прочую поёбень с ЛВ", 0.4)
								imgui.SameLine();
								if imgui.Button(u8'Нано '  .. fa.ICON_FA_ATOM ,btnSize) then nano() end
								imgui.Hint(u8"Для учёных", 0.4)
								imgui.SameLine();
								if imgui.Button(u8'Ремнаборы ' .. fa.ICON_FA_TOOLBOX,btnSize) then remnab() end
								imgui.Hint(u8"Варнит, не кикает, купит 25 ремнаборов или же просто оставит этот диалог", 0.4)
								if imgui.Button(u8'Порох '  .. fa.ICON_FA_BURN,btnSize) then porox() end
								imgui.Hint(u8"Заспавнит соберёт всякую хуйню и сделает порох 5 - 1 шт", 0.4)
								imgui.SameLine();
								if imgui.Button(u8'Дум-дум ' .. fa.ICON_FA_CROSSHAIRS,btnSize) then snipe() end
								imgui.Hint(u8"Заспавниться и скрафтить 10 пуль дум-дум", 0.4)
								imgui.SameLine();
								if imgui.Button(u8'Запчасти '  .. fa.ICON_FA_SUITCASE,btnSize) then zapchast() end
								imgui.Hint(u8"спавнит и делает 10 запчастей из гаража", 0.4)
								imgui.SameLine();
								if imgui.Button(u8'Заготовки '  .. fa.ICON_FA_SCREWDRIVER,btnSize) then zagotovka() end
								imgui.Hint(u8"НЕ ЮЗАТЬ УЧЁНЫМ, для учёных есть в другой вкладке альтернатива", 0.4)
								if imgui.Button(u8'Спиздить залп '  .. fa.ICON_FA_ROCKET,imgui.ImVec2(205, 40)) then zalp() end
								imgui.Hint(u8"Варнит и пишет админам что ты взял залп, нужно быть дома, не кикает", 0.4)
								imgui.SameLine();
								if imgui.Button(u8'/cклад в ЛВ '  .. fa.ICON_FA_WAREHOUSE, imgui.ImVec2(205, 40)) then sklad() end
								imgui.Hint(u8"Нужно быть в ЛВ у свободы,иначе кик", 0.4)



								imgui.EndChild()
							imgui.EndGroup() end



						if selectedTab == 3 then
							imgui.BeginGroup()
								imgui.BeginChild('Center panel', imgui.ImVec2(435, 380), true)
											if imgui.Button(u8'Косячки '  .. fa.ICON_FA_JOINT, imgui.ImVec2(100, 60)) then maslo() end
												imgui.Hint(u8"Масла масла для учёных масла,не кикает, варнит", 0.4)
												imgui.SameLine();
												if imgui.Button(u8'Еда '  .. fa.ICON_FA_UTENSILS, imgui.ImVec2(100, 60)) then eda()  end
												imgui.Hint(u8"Протеин,не кикает, варнит", 0.4)
													imgui.SameLine();
													if imgui.Button(u8'Спирт '  .. fa.ICON_FA_WINE_BOTTLE, imgui.ImVec2(100, 60)) then spirt() end
														imgui.Hint(u8"Водка,не кикает, варнит", 0.4)
														imgui.SameLine();
														if imgui.Button(u8'Бензин '   .. fa.ICON_FA_GAS_PUMP, imgui.ImVec2(100, 60)) then benz() end
															imgui.Hint(u8"Бензин, не кикает, варнит и отправляет H на военные склады для заправки ", 0.4)
															if imgui.Button(u8'Свобода '  .. fa.ICON_FA_USER, imgui.ImVec2(100, 60)) then st() end
																imgui.Hint(u8"Активка сталков с ЛВ для сбора артов,не кикает, варнит", 0.4)
																imgui.SameLine();
															if imgui.Button(u8'Инвиз '  .. fa.ICON_FA_EYE_SLASH, imgui.ImVec2(100, 60)) then invis() end
																		imgui.Hint(u8"Ты в зоне стрима, но невидим", 0.4)
																imgui.SameLine();
																if imgui.Button(u8'Инвиз кар '  .. fa.ICON_FA_LOW_VISION, imgui.ImVec2(100, 60)) then incarinvis() end
																	imgui.Hint(u8"Обязательно нужно менять зону стрима", 0.4)
																	imgui.SameLine();
																	if imgui.Button(u8'Аптека '  .. fa.ICON_FA_CAPSULES, imgui.ImVec2(100, 60)) then apteka() end
																		imgui.Hint(u8"Регистратура, не кикает, варнит", 0.4)
																				if imgui.Button(u8'Похавать '  .. fa.ICON_FA_UTENSIL_SPOON, imgui.ImVec2(100, 60)) then paxavat() end
																				imgui.Hint(u8"Отдельно схавать банан, не кикает, варнит", 0.4)
																							imgui.SameLine();
																				if imgui.Button(u8'Бронежелет '  .. fa.ICON_FA_SHIELD_ALT, imgui.ImVec2(100, 60)) then bron() end
																					imgui.Hint(u8"Отдельно бронежелет, не кикает, варнит", 0.4)
																					imgui.SameLine();
																					if imgui.Button(u8'Катана '  .. fa.ICON_FA_SKULL, imgui.ImVec2(100, 60)) then samurai() end
																							imgui.Hint(u8"Ваще хз нахуй это надо, но не варнит и не кикает", 0.4)
																						imgui.SameLine();
																						if imgui.Button(u8'Дамба ' .. fa.ICON_FA_CHARGING_STATION, imgui.ImVec2(100, 60)) then damba() end
																							imgui.Hint(u8"Переключить моментально рубильники, нужно быть не в виртуальном мире, на карте тебя пидорнет по этим точкам, не кикает,варнит", 0.4)
																						if imgui.Button(u8'Ловкач '  .. fa.ICON_FA_MALE, imgui.ImVec2(100, 60)) then lovka() end
																							imgui.Hint(u8"Переключить моментально панели, нужно, что бы умер охранник, не кикает,варнит", 0.4)
																							imgui.SameLine();
																						if imgui.Button(u8'Тайники '  .. fa.ICON_FA_BOX, imgui.ImVec2(100, 60)) then tainik() end
																							imgui.Hint(u8"Тайники для сталкеров", 0.4)
																							imgui.SameLine();
																						if imgui.Button(u8'Заготовки2 '  .. fa.ICON_FA_SCREWDRIVER, imgui.ImVec2(100, 60)) then zagotovka2() end
																							imgui.Hint(u8"нужно быть в гараже", 0.4)
																							imgui.SameLine();
																						if imgui.Button(u8'Разрывные '  .. fa.ICON_FA_CERTIFICATE, imgui.ImVec2(100, 60)) then shotgun() end
																							imgui.Hint(u8"Крафт разрывных для дробовика, нужен порох", 0.4)
																							if imgui.Button(u8'Бронебой '  .. fa.ICON_FA_EXCLAMATION_TRIANGLE, imgui.ImVec2(100, 60)) then avtomat() end
																								imgui.Hint(u8"Крафт бронебойных для мки, нужен порох", 0.4)





								imgui.EndChild()
							imgui.EndGroup() end



							if selectedTab == 2 then
								imgui.BeginGroup()
									imgui.BeginChild('Center panel', imgui.ImVec2(435, 380), true)
									if imgui.Button(u8'Уголь '  .. fa.ICON_FA_BOMB, imgui.ImVec2(100, 60)) then ygol() end
										imgui.Hint(u8"Заспавниться, сделать уголь в вирт.мире", 0.4)
										imgui.SameLine();
										if imgui.Button(u8'Металл '  .. fa.ICON_FA_RECYCLE, imgui.ImVec2(100, 60)) then metal() end
										imgui.Hint(u8"Заспавниться, сделать металл в вирт.мире", 0.4)
											imgui.SameLine();
											if imgui.Button(u8'Завоз метал '  .. fa.ICON_FA_TRUCK_MOVING, imgui.ImVec2(100, 60)) then vm() end
													imgui.Hint(u8"Нужно быть на литейном заводе, аккуратней с людьми рядом", 0.4)
												imgui.SameLine();
												if imgui.Button(u8'Завоз взрыв '  .. fa.ICON_FA_TRUCK_MOVING, imgui.ImVec2(100, 60)) then vz() end
													imgui.Hint(u8"Нужно быть на литейном заводе, аккуратней с людьми рядом", 0.4)
													if imgui.Button(u8'Лесопилка '  .. fa.ICON_FA_TREE, imgui.ImVec2(100, 60)) then derevo() end
															imgui.Hint(u8"Нужно быть на лесопилке, аккуратней с людьми рядом", 0.4)
														imgui.SameLine();
														if imgui.Button(u8'Химикаты '  .. fa.ICON_FA_TRUCK, imgui.ImVec2(100, 60)) then neft() end
															imgui.Hint(u8"Надо взять работу привезти нефть и прицепить прицеп, не кикает", 0.4)
															imgui.SameLine();
															if imgui.Button(u8'Клад '  .. fa.ICON_FA_GEM, imgui.ImVec2(100, 60)) then kladik() end
																imgui.Hint(u8"Лутануть пиратский клад, не кикает", 0.4)
																imgui.SameLine();
																if imgui.Button(u8'Аптечки '  .. fa.ICON_FA_CAPSULES, imgui.ImVec2(100, 60)) then craftapt() end
																	imgui.Hint(u8"Учёным, заспавиться и сделать антирадин", 0.4)
																		if imgui.Button(u8'Антирадин '  .. fa.ICON_FA_PRESCRIPTION_BOTTLE_ALT, imgui.ImVec2(100, 60)) then craftantirad() end
																			imgui.Hint(u8"Учёным, заспавиться и сделать аптечки", 0.4)
																		imgui.SameLine();
																			if imgui.Button(u8'Вирус '  .. fa.ICON_FA_SYRINGE, imgui.ImVec2(100, 60)) then virus() end
																				imgui.Hint(u8"Учёным, заспавиться и исследовать вирус", 0.4)
																			imgui.SameLine();
																				if imgui.Button(u8'Корабль '  .. fa.ICON_FA_SHIP, imgui.ImVec2(100, 60)) then korablik() end
														       		imgui.Hint(u8"Нужно быть у корабля,не кикает, аккуратней с людьми рядом", 0.4)
																				imgui.SameLine();
																					if imgui.Button(u8'Корабль2 '  .. fa.ICON_FA_SHIP, imgui.ImVec2(100, 60)) then korablik2() end
																					imgui.Hint(u8"Нужно быть у корабля,не кикает, аккуратней с людьми рядом", 0.4)
																					if imgui.Button(u8'Кукурузник '  .. fa.ICON_FA_PLANE, imgui.ImVec2(100, 60)) then samolet() end
																					imgui.Hint(u8"Нужно быть у кукурузника,не кикает, аккуратней с людьми рядом", 0.4)
																					imgui.SameLine();
																					if imgui.Button(u8'Гуманитарка '  .. fa.ICON_FA_PARACHUTE_BOX, imgui.ImVec2(100, 60)) then samolet2() end
																					imgui.Hint(u8"Нужно быть у самолёта,не кикает, аккуратней с людьми рядом", 0.4)
																					imgui.SameLine();
																					if imgui.Button(u8'Пшеничка '  .. fa.ICON_FA_SEEDLING, imgui.ImVec2(100, 60)) then posadit() end
																							imgui.Hint(u8"Садит пшеницу, нужно быть в тракторе с прицепом, работу брать хлебороба надо брать самостоятельно", 0.4)
																					imgui.SameLine();
																					if imgui.Button(u8'Тыковки '  .. fa.ICON_FA_SEEDLING, imgui.ImVec2(100, 60)) then sobrat() end
																						imgui.Hint(u8"Садит/собирает тыквы, нужно быть в пикапе или тракторе с сеялкой", 0.4)
																						if imgui.Button(u8'Стройка '  .. fa.ICON_FA_HARD_HAT, imgui.ImVec2(100, 60)) then cement() end
																							imgui.Hint(u8"Аккуратней рядом с людьми, разделено потому что кикает за накрутку ЗП", 0.4)
																						imgui.SameLine();
																						if imgui.Button(u8'Стройка2 '  .. fa.ICON_FA_SPRAY_CAN, imgui.ImVec2(100, 60)) then cement2() end
																							imgui.Hint(u8"Маляр", 0.4)
																						imgui.SameLine();
																						if imgui.Button(u8'Стройка3 '  .. fa.ICON_FA_SNOWPLOW, imgui.ImVec2(100, 60)) then cement3() end
																							imgui.Hint(u8"Бульдозер", 0.4)
																						imgui.SameLine();
																						if imgui.Button(u8'Стройка4 '  .. fa.ICON_FA_TRUCK, imgui.ImVec2(100, 60)) then cement4() end
																							imgui.Hint(u8"Аккуратней рядом с людьми, разделено потому что кикает за накрутку ЗП", 0.4)
																							if imgui.Button(u8'Ферма '  .. fa.ICON_FA_APPLE_ALT, imgui.ImVec2(100, 40)) then ferma1() end
																								imgui.Hint(u8"Яблочки, аккуратней рядом с людьми, разделено потому что кикает за накрутку ЗП", 0.4)
																							imgui.SameLine();
																							if imgui.Button(u8'Ферма2 '  .. fa.ICON_FA_EGG, imgui.ImVec2(100, 40)) then ferma2() end
																								imgui.Hint(u8"Моментально делает 2 работу фермы", 0.4)
																							imgui.SameLine();
																							if imgui.Button(u8'Ферма3 '  .. fa.ICON_FA_TRACTOR, imgui.ImVec2(100, 40)) then ferma3() end
																								imgui.Hint(u8"Возьмёт работу с тыквами, нужно будет самостоятельно сесть в трактор и подцепить сеялку, дальше нажать Тыковки в этой же вкладке ", 0.4)
																							imgui.SameLine();
																							if imgui.Button(u8'Ульи '  .. fa.ICON_FA_ALLERGIES, imgui.ImVec2(50, 40)) then ferma4() end
																								imgui.Hint(u8"4 работа фермы", 0.4)
																								imgui.SameLine();
																								if imgui.Button(u8'Хлеб'  .. fa.ICON_FA_TRACTOR, imgui.ImVec2(50, 40)) then xleb() end
																									imgui.Hint(u8"Хлебороб,нужно что бы поле было засажено пшеницей", 0.4)

									imgui.EndChild()
								imgui.EndGroup() end


			if selectedTab == 4 then
				imgui.BeginGroup()
					imgui.BeginChild('Center panel', imgui.ImVec2(435, 380), true)
								if imgui.Button(u8 'Артефакы', imgui.ImVec2(415, 23)) then artefact() end
									imgui.Hint(u8"Артефакты со сдачей на базе учёных, для учёных онли", 0.4)
										if imgui.Button(u8'Артефакты2', imgui.ImVec2(415, 23)) then artefact2() end
											imgui.Hint(u8"ОСТОРОЖНО БЛЯДЬ,СОБИРАЕТ АРТЕФАКТЫ И НИКУДА НЕ СДАЕТ БАНДИТАМ ПИСАТЬ БУДЕТ, ЕСЛИ АКТИВ СТАЛКА", 0.4)
													if imgui.Button(u8'Артефакты разлом', imgui.ImVec2(415, 23)) then artraz() end
														imgui.Hint(u8"Обязательно нужен разлом", 0.4)
					imgui.EndChild()
				imgui.EndGroup() end




			if selectedTab == 5 then
				imgui.BeginGroup()
					imgui.BeginChild('Center panel', imgui.ImVec2(435, 380), true)
					if imgui.Button(u8"Напоминалка", imgui.ImVec2(410, 0)) then inf() end
								if imgui.Button(u8"Санитарно-эпидемическая служба", imgui.ImVec2(410, 0)) then fastmenu() end
								if imgui.Button(u8'Погодных явления', imgui.ImVec2(410, 0)) then fastmenu2() end
									if imgui.Button(u8'Военные', imgui.ImVec2(410, 0)) then fastmenu3() end
										if imgui.Button(u8'Вечеринка', imgui.ImVec2(410, 0)) then fastmenu4() end
											if imgui.Button(u8'Завод Кибердайн', imgui.ImVec2(410, 0)) then fastmenu5() end
												if imgui.Button(u8'Улучшения оружий', imgui.ImVec2(410, 0)) then fastmenu6() end
													if imgui.Button(u8'Модификация Артефактов', imgui.ImVec2(410, 0)) then fastmenu7() end
													if imgui.Button(u8'Кланы', imgui.ImVec2(410, 0)) then fastmenu8() end
														if imgui.Button(u8'Подфракции', imgui.ImVec2(410, 0)) then fastmenu9() end
														if imgui.Button(u8'Завод разлом', imgui.ImVec2(410, 0)) then fastmenu10() end
															if imgui.Button(u8'Исполнитель Желаний', imgui.ImVec2(410, 0)) then fastmenu11() end
															if imgui.Button(u8'Импланты', imgui.ImVec2(410, 0)) then fastmenu12() end
																if imgui.Button(u8'Места силы', imgui.ImVec2(410, 0)) then fastmenu13() end
																if imgui.Button(u8'Артефакты', imgui.ImVec2(410, 0)) then fastmenu14() end
																	if imgui.Button(u8'Жильё в Зоне', imgui.ImVec2(410, 0)) then fastmenu15() end
																			if imgui.Button(u8'Библиотека', imgui.ImVec2(410, 0)) then fastmenu16() end
																				if imgui.Button(u8'Напоминалка мутанты', imgui.ImVec2(410, 0)) then zoombie() end
																					if imgui.Button(u8'Напоминалка сталкеры', imgui.ImVec2(410, 0)) then stalker() end
					imgui.EndChild()
				imgui.EndGroup()
			end
		imgui.End()
	 end
	end
end

		function imgui.Hint(text, delay, action)
if imgui.IsItemHovered() then
if go_hint == nil then go_hint = os.clock() + (delay and delay or 0.0) end
local alpha = (os.clock() - go_hint) * 5
if os.clock() >= go_hint then
imgui.PushStyleVar(imgui.StyleVar.WindowPadding, imgui.ImVec2(10, 10))
imgui.PushStyleVar(imgui.StyleVar.Alpha, (alpha <= 1.0 and alpha or 1.0))
imgui.PushStyleColor(imgui.Col.PopupBg, imgui.ImVec4(0.11, 0.11, 0.11, 1.00))
imgui.BeginTooltip()
imgui.PushTextWrapPos(450)
 imgui.TextColored(imgui.GetStyle().Colors[imgui.Col.ButtonHovered], fa.ICON_FA_QUESTION_CIRCLE .. u8' Подсказка:')
imgui.TextUnformatted(text)
if

action ~= nil then
imgui.TextColored(imgui.GetStyle().Colors[imgui.Col.TextDisabled], '\n '..action)
end
if not imgui.IsItemVisible() and imgui.GetStyle().Alpha == 1.0 then go_hint = nil end
imgui.PopTextWrapPos()
imgui.EndTooltip()
imgui.PopStyleColor()
imgui.PopStyleVar(2)
end
end
end

            function window() -- функция вызова главного окна..
            mainwindow.v = not mainwindow.v
            end

---------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------Прочая поебота-------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------

function sampGetPlayerIdByNickname(nick)
    local _, myid = sampGetPlayerIdByCharHandle(playerPed)
    if tostring(nick) == sampGetPlayerNickname(myid) then return myid end
    for i = 0, 1000 do if sampIsPlayerConnected(i) and sampGetPlayerNickname(i) == tostring(nick) then return i end end
end



function autoupdate(json_url, prefix, url)
  local dlstatus = require('moonloader').download_status
  local json = getWorkingDirectory() .. '\\'..thisScript().name..'-version.json'
  if doesFileExist(json) then os.remove(json) end
  downloadUrlToFile(json_url, json,
    function(id, status, p1, p2)
      if status == dlstatus.STATUSEX_ENDDOWNLOAD then
        if doesFileExist(json) then
          local f = io.open(json, 'r')
          if f then
            local info = decodeJson(f:read('*a'))
            updatelink = info.updateurl
            updateversion = info.latest
            f:close()
            os.remove(json)
            if updateversion ~= thisScript().version then
              lua_thread.create(function(prefix)
                local dlstatus = require('moonloader').download_status
                local color = -1
                sampAddChatMessage((prefix..'Обнаружено обновление. Пытаюсь обновиться c '..thisScript().version..' на '..updateversion), color)
                wait(250)
                downloadUrlToFile(updatelink, thisScript().path,
                  function(id3, status1, p13, p23)
                    if status1 == dlstatus.STATUS_DOWNLOADINGDATA then
                      print(string.format('Загружено %d из %d.', p13, p23))
                    elseif status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
                      print('Загрузка обновления завершена.')
                      sampAddChatMessage((prefix..'Обновление завершено!'), color)
                      goupdatestatus = true
                      lua_thread.create(function() wait(500) thisScript():reload() end)
                    end
                    if status1 == dlstatus.STATUSEX_ENDDOWNLOAD then
                      if goupdatestatus == nil then
                        sampAddChatMessage((prefix..'Обновление прошло неудачно. Запускаю устаревшую версию..'), color)
                        update = false
                      end
                    end
                  end
                )
                end, prefix
              )
            else
              update = false
              print('v'..thisScript().version..': Обновление не требуется.')
            end
          end
        else
          print('v'..thisScript().version..': Не могу проверить обновление. Смиритесь или проверьте самостоятельно на '..url)
          update = false
        end
      end
    end
  )
  while update ~= false do wait(100) end
end



      function sampev.onDisplayGameText(style, time, text) -- нет судьбы
      	lua_thread.create(function()
              if text:find("N") then
                  setVirtualKeyDown(78, true)
      			wait(5)
      			setVirtualKeyDown(78, false)
          elseif text:find("Y") then
                  setVirtualKeyDown(89, true)
      			wait(5)
      			setVirtualKeyDown(89, false)
          elseif text:find("C") then
                  setVirtualKeyDown(67, true)
      			wait(5)
      			setVirtualKeyDown(67, false)
      		elseif text:find("F") then
                  setVirtualKeyDown(70, true)
      			wait(5)
      			setVirtualKeyDown(70, false)
            end
         end)
      end

      function sampev.onShowTextDraw(id, data)
          if id == 2067 then return false
          end
      end

      function fakepic(id)
  id = tonumber(id)
  local pickup = sampGetPickupHandleBySampId(id)
  local x, y, z = getPickupCoordinates(pickup)
  if x ~= 0 and y ~= 0 and z ~= -100 then
    sendSync( x, y, z, true, 0, id)
  end
end

function sendSync(x, y, z, bool, key, pic)
  local _, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
  local data = allocateMemory(68)
  sampStorePlayerOnfootData(myId, data)
  if key == nil then key = 0 end
  if bool then
    setStructElement(data, 4, 2, key, false) -- send sKeys // mouse
  else
    setStructElement(data, 36, 1, key, false) -- send byteCurrentWeapon // Y, N, H
  end
  if z ~= nil then
    setStructFloatElement(data, 6, x, false)
    setStructFloatElement(data, 10, y, false)
    setStructFloatElement(data, 14, z, false)
  end
  sampSendOnfootData(data)
  if pic ~= nil then
    sampSendPickedUpPickup(tonumber(pic))
  end
  sampForceOnfootSync()
  freeMemory(data)
end

function sendXyinc(x, y, z, bool, key, pic)
local _, id = sampGetPlayerIdByCharHandle(playerPed)
	local data = allocateMemory(63)
	sampStorePlayerIncarData(id, data)
	if key == nil then key = 0 end
	if bool then
		setStructElement(data, 4, 2, key, false) -- send sKeys // mouse
	else
		setStructElement(data, 36, 1, key, false) -- send byteCurrentWeapon // Y, N, H
	end
	if z ~= nil then
		setStructFloatElement(data, 24, x, false) --    position
		setStructFloatElement(data, 28, y, false)
		setStructFloatElement(data, 32, z, false)
	end
	sampSendIncarData(data)
	if pic ~= nil then
		sampSendPickedUpPickup(tonumber(pic))
	end
	freeMemory(data)
end



      function sampev.onPlaySound(soundId, pos)
          if soundId == 36401 and sampTextdrawIsExists(11)
             then sampSendClickTextdraw(11)  end
						   if soundId == 14800 then
								 sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Блядский звук сирены отключён", -1) return false
					  end end





             function split(str, delim, plain)
               local tokens, pos, plain = {}, 1, not (plain == false) --[[ delimiter is plain text by default ]]
               repeat
                 local npos, epos = string.find(str, delim, pos, plain)
                 table.insert(tokens, string.sub(str, pos, npos and npos - 1))
                 pos = epos and epos + 1
               until not pos
               return tokens
             end

             function fakesync(x)
               x = string.gsub(x, ",", ".")
               local zp = split(x, " ")
               local x, y, z, bool, key = tonumber(zp[1]), tonumber(zp[2]), tonumber(zp[3]), tonumber(zp[4]), tonumber(zp[5])
               if x == nil then x = 0 end if y == nil then y = 0 end if z == nil then z = 0 end if key == nil then key = 0 end if bool == nil then bool = 1 end
               if bool == 1 then
                 sampAddChatMessage(string.format("{FFFFFF} You send fake sync (X: %f Y:%f Z:%f Key: %d ) ", x, y, z, key), 0x84FF09)
               else
                 sampAddChatMessage(string.format("{FFFFFF} You send fake sync (X: %f Y:%f Z:%f Weapon: %d ) ", x, y, z, key), 0x84FF09)
               end
               sendSync( x, y, z, bool, key)
             end



             function tpseat(carfortp)
               local x, y, z = getCharCoordinates(PLAYER_PED)
       for i = 0, 2000 do
       local bool, veh = sampGetCarHandleBySampVehicleId(i)
       if bool then
       if isCarModel(veh, carfortp) and doesVehicleExist(veh) then
       warpCharIntoCar(PLAYER_PED, veh)
       return i
        end
      end
       end
       end

			 function sampev.onSendPickedUpPickup(pid)
			   pX, pY, pZ = getCharCoordinates(playerPed)
			   if getDistanceBetweenCoords3d(pX, pY, pZ, -348.375 , 1584.625 , 76.25) < 25 then
			     sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Пикап входа на радар заблокирован.", 0xFF0000)
			     return false
			   end
			 end


function sampev.onSendPlayerSync(data)
	if state1 then
	data.surfingVehicleId = 2001 end
end

function sampev.onSendVehicleSync(data)
    if state2 then
        data.quaternion[0] = 1/0
        data.quaternion[1] = 1/0
        data.quaternion[2] = 1/0
        data.quaternion[3] = 1 end
			end


function invis(arg)
	if state1 then
		sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}Инвиз выключен', -1)
		state1 = false
	else
		sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}Инвиз включен', -1)
		state1 = true
	end
end



function incarinvis(arg)
	if state2 then
		sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF} Инкар инвиз выключен', -1)
		state2 = false
	else
		sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}Инкар инвиз включен, смени зону стрима', -1)
		state2 = true
	end
end


function zalupa(x, y, z, bool, key, pic)
  local _, myId = sampGetPlayerIdByCharHandle(PLAYER_PED)
  local data = allocateMemory(68)
  sampStorePlayerOnfootData(myId, data)
  if key == nil then key = 0 end
  if bool then
    setStructElement(data, 4, 2, key, false) -- send sKeys // mouse
  else
    setStructElement(data, 36, 1, key, false) -- send byteCurrentWeapon // Y, N, H
  end
  if z ~= nil then
    setStructFloatElement(data, 6, x, false)
    setStructFloatElement(data, 10, y, false)
    setStructFloatElement(data, 14, z, false)
  end
  sampSendOnfootData(data)
  if pic == nil then
		for j = 1, #zalupki do
    sampSendPickedUpPickup(zalupki[j]) end
  end
  sampForceOnfootSync()
  freeMemory(data)
end



function sendOnfootSync(x, y, z)
    local data = samp_create_sync_data('player')
		data.quaternion[1] = 0
	    data.quaternion[2] = 0
	    data.quaternion[3] = 0
	    data.quaternion[4] = 0
		data.animationId = 0
		data.position = {x, y, z}
		data.moveSpeed = {0.0, 0.0, 0.0}
		data.send()
end


function samp_create_sync_data(sync_type, copy_from_player)
	local ffi = require 'ffi'
	local sampfuncs = require 'sampfuncs'
	-- from SAMP.Lua
	local raknet = require 'samp.raknet'
	--require 'samp.synchronization'

	copy_from_player = copy_from_player or true
	local sync_traits = {
		player = {'PlayerSyncData', raknet.PACKET.PLAYER_SYNC, sampStorePlayerOnfootData},
		vehicle = {'VehicleSyncData', raknet.PACKET.VEHICLE_SYNC, sampStorePlayerIncarData},
		passenger = {'PassengerSyncData', raknet.PACKET.PASSENGER_SYNC, sampStorePlayerPassengerData},
		aim = {'AimSyncData', raknet.PACKET.AIM_SYNC, sampStorePlayerAimData},
		trailer = {'TrailerSyncData', raknet.PACKET.TRAILER_SYNC, sampStorePlayerTrailerData},
		unoccupied = {'UnoccupiedSyncData', raknet.PACKET.UNOCCUPIED_SYNC, nil},
		bullet = {'BulletSyncData', raknet.PACKET.BULLET_SYNC, nil},
		spectator = {'SpectatorSyncData', raknet.PACKET.SPECTATOR_SYNC, nil}
	}
	local sync_info = sync_traits[sync_type]
	local data_type = 'struct ' .. sync_info[1]
	local data = ffi.new(data_type, {})
	local raw_data_ptr = tonumber(ffi.cast('uintptr_t', ffi.new(data_type .. '*', data)))
	-- copy player's sync data to the allocated memory
	if copy_from_player then
		local copy_func = sync_info[3]
		if copy_func then
			local _, player_id
			if copy_from_player == true then
				_, player_id = sampGetPlayerIdByCharHandle(PLAYER_PED)
			else
				player_id = tonumber(copy_from_player)
			end
			copy_func(player_id, raw_data_ptr)
		end
	end

	local func_send = function()
		local bs = raknetNewBitStream()
		raknetBitStreamWriteInt8(bs, sync_info[2])
		raknetBitStreamWriteBuffer(bs, raw_data_ptr, ffi.sizeof(data))
		raknetSendBitStreamEx(bs, sampfuncs.HIGH_PRIORITY, sampfuncs.UNRELIABLE_SEQUENCED, 1)
		raknetDeleteBitStream(bs)
	end
	-- metatable to access sync data and 'send' function
	local mt = {
		__index = function(t, index)
			return data[index]
		end,
		__newindex = function(t, index, value)
			data[index] = value
		end
	}
	return setmetatable({send = func_send}, mt)
end

function getMarkerPos()
   local mem1 = memory.getint32(sampGetBase() + 0x21A10C, false)
	   local enabled = memory.read(mem1 + 0x24, 4, true)
   if enabled == 1 then
      local mposX = memory.getfloat(mem1 + 0xC, false)
      local mposY = memory.getfloat(mem1 + 0x10, false)
      local mposZ = memory.getfloat(mem1 + 0x14, false)
      return enabled, mposX, mposY, mposZ
   end
   return false, nil, nil, nil
end


	function getMarker()
	local isExists, mpx, mpy, mpz = getMarkerPos()
	if isExists then
		local data = samp_create_sync_data('player')
		data.position.x = mpx
		data.position.y = mpy
		data.position.z = mpz
		data.send()
	else
		sampAddChatMessage("{ffffff}• [SFA{ffffff}]: {00BFFF}Метки нет хуй соси", -1)
	end
end


function check(arg)
	if state3 then
		sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}FALSE', -1)
		state3 = false
	else
		sampAddChatMessage('{ffffff}• [SFA{ffffff}]: {00BFFF}TRUE', -1)
		state3 = true
	end
end

function onReceiveRpc(int,bit)
    if state3 and int == 38 then -- SetRaceCheckpoint(Гоночный checkpoint)
        local typeRace = raknetBitStreamReadInt8(bit)
        local X = raknetBitStreamReadFloat(bit)
        local Y = raknetBitStreamReadFloat(bit)
        local Z = raknetBitStreamReadFloat(bit)
        local nextX = raknetBitStreamReadFloat(bit)
        local nextY = raknetBitStreamReadFloat(bit)
        local nextZ = raknetBitStreamReadFloat(bit)
        local radius = raknetBitStreamReadFloat(bit)
        sendSync(X,Y,Z)
     elseif state3 and int == 107 then -- Если SetCheckpoint(Обычный checkpoint)
        local Xz = raknetBitStreamReadFloat(bit)
        local Yz = raknetBitStreamReadFloat(bit)
        local Zz = raknetBitStreamReadFloat(bit)
        local rdus = raknetBitStreamReadFloat(bit)
        sendSync(Xz,Yz,Zz)
    end
end

--function tpcheck()
