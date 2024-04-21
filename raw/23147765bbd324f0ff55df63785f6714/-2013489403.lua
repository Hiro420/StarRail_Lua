local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Logic.RedDotModule.RedDotModule"
L0_1(L1_1)
L0_1 = "UIText_Rogue_MenuSwitchButton_ToMain"
L1_1 = "UIText_Rogue_MenuSwitchButton_ToDLC"
L2_1 = "RogueSelectMain2DPage_SwitchBanner_Hint"
L3_1 = "CommonAlphaFadeOut_15f"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "RogueEntranceTypeSwitchBtnPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_animation_event_switch_banner
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_switch_banner_fade_out_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._hide_switch_banner
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = nil
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1.setup_dlc_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dlc_switch_banner
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueDLCEntrance"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L4_1.setup_simulated_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueAdventureModule
  L1_2 = L1_2.LastRogueDLCSubMode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueUtils
  L2_2 = L2_2.IsDLCSubMode
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RogueSubMode
    L1_2 = L2_2.ChessRogue
  end
  L3_2 = A0_2
  L2_2 = A0_2._find_rogue_dlc_entrance_row_by_sub_mode
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueSubMode
  L3_2 = L3_2.None
  if L1_2 == L3_2 or L2_2 == nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_switch_banner
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_switch_banner_mode_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.SubTypeTitle
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_switch_banner
  L6_2 = L2_2.SwitchBannerImgPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._show_switch_banner
  L3_2(L4_2)
end
L4_1._setup_dlc_switch_banner = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_self = A2_2
end
L4_1.register_click_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_callback_self
  L1_2(L2_2, L3_2)
end
L4_1._on_btn_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.unbind_reddot
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_reddot
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = A1_2
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L4_1._bind_reddot = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCEntranceExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = L3_2.SubType
    if L4_2 == A1_2 then
      L5_2 = L2_2
      L4_2 = L2_2.Dispose
      L4_2(L5_2)
      return L3_2
    end
  end
  L4_2 = L2_2
  L3_2 = L2_2.Dispose
  L3_2(L4_2)
  L3_2 = nil
  return L3_2
end
L4_1._find_rogue_dlc_entrance_row_by_sub_mode = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_switch_banner
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_switch_banner
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L4_1._show_switch_banner = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_switch_banner
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L4_1._hide_switch_banner = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_switch_banner
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1._on_switch_banner_fade_out_anim_end = L5_1
return L4_1
