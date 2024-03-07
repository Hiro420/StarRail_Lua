local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeBreakResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeBreakResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Equipment_RankLevel"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "ResultDialog_ClickProtectTime"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.FloatValue
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LightConeBreakResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._before_data = nil
  A0_2._equip_data = nil
  A0_2._callback = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._equip_data = A1_2
  A0_2._before_data = A2_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._exit_timer = L1_2
  A0_2._enable_exit = false
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._enable_exit = true
end
L0_1._on_timer_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_skill_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.SkillRow
  L3_2 = L3_2.SkillDesc
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetSkillParams
  L5_2 = A0_2._equip_data
  L5_2 = L5_2.SkillRow
  L5_2 = L5_2.ParamList
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_rank_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetLightConeRankTextID
  L4_2 = A0_2._before_data
  L4_2 = L4_2.RankBefore
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._before_data
  L1_2 = L1_2.RankBefore
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.MaxRank
  if L1_2 < L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_rank_before
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#DCC491"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_rank_bg_before
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#282828"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_rank_before
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#121212"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_rank_bg_before
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#ffcf70"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_rank_after
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetLightConeRankTextID
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.Rank
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.Rank
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.MaxRank
  if L1_2 < L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_rank_after
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#DCC491"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_rank_bg_after
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#282828"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_rank_after
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#121212"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_rank_bg_after
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#ffcf70"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_rank_before_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = A0_2._before_data
  L4_2 = L4_2.RankBefore
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_rank_after_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.Rank
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_btn_bg_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_exit
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L3_1
return L0_1
