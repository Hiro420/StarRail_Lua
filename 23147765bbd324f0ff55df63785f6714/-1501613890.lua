local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSelectTriggerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Common.HeliobusCommonSelectTriggerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSDetailCommentMissionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueCommonExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_Income_ItemID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_take_mission
  L4_2 = A0_2._on_click_take_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_to_mission
  L4_2 = A0_2._on_click_btn_go_to_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSelectTriggerPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSelectTriggerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fans_tip_panel = L1_2
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bonus_fans
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSelectTriggerPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSelectTriggerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._income_tip_panel = L1_2
  L1_2 = A0_2._income_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bonus_income
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusCommonSelectTriggerPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusCommonSelectTriggerPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_tip_panel = L1_2
  L1_2 = A0_2._skill_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bonus_skill
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._take_mission_callback = A1_2
  A0_2._take_mission_callback_self = A2_2
end
L0_1.register_take_mission_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._go_to_mission_callback = A1_2
  A0_2._go_to_mission_callback_self = A2_2
end
L0_1.register_go_to_mission_btn_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fans_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_btn
  return L1_2(L2_2)
end
L0_1.get_first_sp_zoom_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._post = A1_2
  L2_2 = {}
  A0_2._bonus_btn_table = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_bonus_fan_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_bonus_income_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_bonus_skill_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_take_mission_btn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_goto_mission_btn
  L2_2(L3_2)
  L2_2 = A0_2._fans_tip_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
  L2_2 = A0_2._income_tip_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
  L2_2 = A0_2._skill_tip_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = A0_2._bonus_btn_table
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_bonus_fan
  L2_2 = A0_2._post
  L2_2 = L2_2.Row
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bonus_fans
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_bonus_fans
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = G
    L4_2 = L4_2.HeliobusSNSUtils
    L4_2 = L4_2.get_abbreviation_num_text
    L5_2 = L1_2
    L6_2 = true
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._bonus_btn_table
    L4_2 = A0_2._fans_tip_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_btn
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._setup_bonus_fan_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_bonus_income
  L2_2 = A0_2._post
  L2_2 = L2_2.Row
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bonus_income
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_bonus_income
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._bonus_btn_table
    L4_2 = A0_2._income_tip_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_btn
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_bonus_income_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.HeliobusSNSUtils
  L1_2 = L1_2.get_post_bonus_skill
  L2_2 = A0_2._post
  L2_2 = L2_2.Row
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bonus_skill
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._bonus_btn_table
    L4_2 = A0_2._skill_tip_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_btn
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_bonus_skill_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  L2_2 = L1_1.PostMissionInProgress
  if L2_2 ~= nil then
    L2_2 = L1_1.PostMissionInProgress
    L1_2 = L2_2.IsStart
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_take_mission
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1.PostMissionInProgress
  L4_2 = L4_2 == nil or L4_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_take_mission_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.PostMissionInProgress
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_go_to_mission
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = L1_1.PostMissionInProgress
    L3_2 = L3_2.ID
    L4_2 = A0_2._post
    L4_2 = L4_2.Row
    L4_2 = L4_2.PostTypeParameter
    L3_2 = L3_2 == L4_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_go_to_mission
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_goto_mission_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._take_mission_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._take_mission_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._take_mission_callback
      L2_2 = A0_2._take_mission_callback_self
      L3_2 = A0_2._post
      L3_2 = L3_2.Row
      L3_2 = L3_2.PlayerCommentIDList
      L3_2 = L3_2[0]
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_take_mission = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._go_to_mission_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._go_to_mission_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._go_to_mission_callback
      L2_2 = A0_2._go_to_mission_callback_self
      L3_2 = A0_2._post
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_btn_go_to_mission = L3_1
return L0_1
