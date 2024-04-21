local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.MusicAlbum.MusicSymbolInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MusicSymbolInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_AudioManager
  L3_2 = L2_2
  L2_2 = L2_2.GetJukeBoxMusicTime
  L4_2 = A1_2.MusicSwitchName
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.MusicName
  L3_2(L4_2, L5_2)
  L3_2 = "00"
  L4_2 = "00"
  if 60 < L2_2 then
    L5_2 = G
    L5_2 = L5_2.MathUtils
    L5_2 = L5_2.add_zero_front_num
    L6_2 = 2
    L7_2 = math
    L7_2 = L7_2.floor
    L8_2 = L2_2 / 60
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L3_2 = L5_2
    L5_2 = G
    L5_2 = L5_2.MathUtils
    L5_2 = L5_2.add_zero_front_num
    L6_2 = 2
    L7_2 = math
    L7_2 = L7_2.fmod
    L8_2 = L2_2
    L9_2 = 60
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L5_2
  else
    L5_2 = G
    L5_2 = L5_2.MathUtils
    L5_2 = L5_2.add_zero_front_num
    L6_2 = 2
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_minute
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_second
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
return L0_1
