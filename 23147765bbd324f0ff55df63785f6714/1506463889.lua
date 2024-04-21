local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.MultipleDropUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookGuideFarmMultipleDropPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MultipleDropModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.MultipleDropUtils
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_double_rule_tip
  L4_2 = A0_2._on_btn_double_rule_tip
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._farm_type = A1_2
  L2_2 = L2_1.GetTopData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1.GetSignIconPath
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.multiple_drop_type_icon
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_refresh_type
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.BannerText
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.special_bg
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2.Multiplier
  L6_2 = L6_2 == 3
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.MultipleDropUtils
  L4_2 = L4_2.setup_tips_num
  L5_2 = A1_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_remain_num
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_total_num
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L2_2.Theme
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_theme_icon
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2 ~= nil
  L5_2(L6_2, L7_2)
  if L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.theme_icon
    L8_2 = L4_2.IconPath
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ActivityFarmMultipleDropType
  L5_2 = L5_2.PlayerReturn
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ActivityFarmMultipleDropType
  L6_2 = L6_2.VersionLimited
  L7_2 = L2_1.IsInSpecificMultipleDrop
  L8_2 = A0_2._farm_type
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L7_2 = L2_1.IsInSpecificMultipleDrop
    L8_2 = A0_2._farm_type
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
  end
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_double_rule_tip
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = "UIText_PlayerReturn_DoubleDetail01"
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MultipleDropUtils
  L2_2 = L2_2.GetMultipleDropTimesData
  L3_2 = A0_2._farm_type
  L4_2 = 2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.RemainTimes
  L3_2 = L1_1.TodayRemainPlayerReturnCount
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_PlayerReturn_DoubleDetail02"
  L6_2 = L2_2
  L7_2 = L2_2 - L3_2
  L8_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.show_introduce_with_text
  L6_2 = L1_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._on_btn_double_rule_tip = L3_1
return L0_1
