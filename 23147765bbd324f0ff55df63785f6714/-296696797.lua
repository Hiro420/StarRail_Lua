local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.GameStartup.SwitchLanguageDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.SwitchLanguageDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.SwitchLanguageItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.SwitchLanguageItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.SettingModule.SettingEnum"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LanguageStartupSwitchDialog"
L2_1 = G
L2_1 = L2_1.SwitchLanguageDialog
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_AudioManager
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_GamePhaseManager
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  L5_2 = A1_2 or nil
  if not A1_2 then
    L5_2 = LanguageSettingType
    L5_2 = L5_2.Language
  end
  A0_2.language_type = L5_2
  A0_2._language_dict = A2_2
  A0_2._callback = A4_2
  L5_2 = A3_2 or L5_2
  if not A3_2 then
    L6_2 = A0_2
    L5_2 = A0_2._get_current_selected_language
    L5_2 = L5_2(L6_2)
  end
  A0_2._cur_selected_language = L5_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L2_2 = A0_2._cur_selected_language
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_confirm_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback
    L1_2()
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_cancel_btn = L3_1
return L0_1
