local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SwitchLanguageItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_AudioManager
L3_1 = G
L3_1 = L3_1.TextExtensions
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.is_audio_mode = false
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
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.is_audio_mode = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_data
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_text
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.is_audio_mode
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn
    L5_2 = L4_2
    L4_2 = L4_2.SetChecked
    L6_2 = L2_1
    L7_2 = L6_2
    L6_2 = L6_2.IsAudioDownloaded
    L8_2 = A1_2.languageKey
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn
  L5_2 = L4_2
  L4_2 = L4_2.SetChecked
  L6_2 = A1_2.languageKey
  L6_2 = L6_2 == A2_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  A0_2._language_data = A1_2
end
L0_1._setup_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L3_1.SafeSetTextID
  L3_2 = A0_2._binder
  L3_2 = L3_2.text
  L4_2 = A1_2.textID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.is_audio_mode
  if L2_2 then
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
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.IsAudioDownloaded
    L4_2 = A1_2.languageKey
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_1
    L6_2 = L5_2
    L5_2 = L5_2.ShowSize
    L5_2 = not L2_2 and L5_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.disable_text
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.disable_text
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.textID
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.in_use
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2.languageKey
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_LocalizationManager
    L6_2 = L6_2.CurrentAudioLanguage
    L5_2 = L5_2 == L6_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_text = L4_1
function L4_1(A0_2, A1_2)
  A0_2._btn_click_callback = A1_2
end
L0_1.register_click_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._btn_click_callback
  if L1_2 then
    L1_2 = A0_2._btn_click_callback
    L2_2 = A0_2._language_data
    L1_2(L2_2)
  end
end
L0_1._on_btn_select_click = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._btn_click_callback = nil
end
L0_1._on_dispose = L4_1
return L0_1
