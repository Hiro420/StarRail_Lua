local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Audio.LanguegePackItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LanguegePackItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.TextExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_AudioManager
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_select_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_text
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = A1_2.languageKey
  L5_2 = L5_2 == A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.num
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.GetAudioSize
  L7_2 = A1_2.languageKey
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.IsAudioDownloaded
  L5_2 = A1_2.languageKey
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_1
  L7_2 = L6_2
  L6_2 = L6_2.ShowSize
  L6_2 = not L3_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.disable_text
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.disable_text
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A1_2.textID
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.in_use
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2.languageKey
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_LocalizationManager
  L7_2 = L7_2.CurrentAudioLanguage
  L6_2 = L6_2 == L7_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  A0_2._language_data = A1_2
end
L0_1._setup_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L1_1.SafeSetTextID
  L3_2 = A0_2._binder
  L3_2 = L3_2.text
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.GetAudioSize
  L6_2 = A1_2.languageKey
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_text = L3_1
function L3_1(A0_2, A1_2)
  A0_2._btn_click_callback = A1_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_click_callback
  if L1_2 then
    L1_2 = A0_2._btn_click_callback
    L2_2 = A0_2._language_data
    L1_2(L2_2)
  end
end
L0_1._on_btn_select_click = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._btn_click_callback = nil
end
L0_1._on_dispose = L3_1
return L0_1
