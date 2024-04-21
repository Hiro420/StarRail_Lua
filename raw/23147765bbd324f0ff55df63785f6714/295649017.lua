local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.NewbieTicketItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemDetailDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NewbieTicketItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.QuestDataExcelTable
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
function L3_1(A0_2)
  local L1_2
  A0_2._is_selected = false
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.get_reward_btn
  L4_2 = A0_2._on_reward_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.update_selected_status
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.update_selected_status
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_controller_scpts
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.item1_btn
  L4_2 = A0_2._on_first_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.item2_btn
  L4_2 = A0_2._on_second_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_incontrol_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_incontrol_pc_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._generate_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L4_2 = A0_2._status
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_text
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rewards
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L3_2 = A0_2._questid
  L1_2(L2_2, L3_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._questid = A1_2
  L2_2 = L1_1.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._row = L2_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._quest_data = L2_2
  L2_2 = A0_2._quest_data
  if L2_2 ~= nil then
    L2_2 = A0_2._quest_data
    L2_2 = L2_2.Status
    A0_2._status = L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.LEOGBBOPKKO
    L2_2 = L2_2.KBBBFCIHJPC
    A0_2._status = L2_2
  end
end
L0_1._generate_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.CMOFEAFMGAK
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.get_reward_btn
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.reward_got_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.get_reward_btn_inner_circle
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    A0_2.is_btn_interactable = false
    L3_2 = A0_2
    L2_2 = A0_2._update_canvas_values
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.LEOGBBOPKKO
    L2_2 = L2_2.JKFPIINHGPD
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.get_reward_btn
      L2_2 = L2_2.transform
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.get_reward_btn
      L2_2.interactable = true
      L2_2 = A0_2._binder
      L2_2 = L2_2.reward_got_hint
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_lv_panel_canvas
      L2_2.alpha = 1
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_bg_canvas
      L2_2.alpha = 1
      L2_2 = A0_2._binder
      L2_2 = L2_2.get_reward_btn_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_QuestMissionGet_Btn"
      L2_2(L3_2, L4_2)
      A0_2.is_btn_interactable = true
    else
      L2_2 = CS
      L2_2 = L2_2.LEOGBBOPKKO
      L2_2 = L2_2.KBBBFCIHJPC
      if A1_2 == L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.get_reward_btn
        L2_2 = L2_2.transform
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.get_reward_btn
        L2_2.interactable = false
        L2_2 = A0_2._binder
        L2_2 = L2_2.reward_got_hint
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.get_reward_btn_text
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_QuestMissionGet_Btn"
        L2_2(L3_2, L4_2)
        A0_2.is_btn_interactable = false
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_lv_panel_canvas
        L2_2.alpha = 1
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_bg_canvas
        L2_2.alpha = 0.5
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_effect
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.QuestTitle
  L4_2 = A0_2._quest_data
  L4_2 = L4_2.FinishWayRow
  L4_2 = L4_2.ParamInt1
  L5_2 = A0_2._quest_data
  L5_2 = L5_2.FinishWayRow
  L5_2 = L5_2.ParamInt2
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.FinishWayRow
  L6_2 = L6_2.ParamInt3
  L7_2 = A0_2._quest_data
  L7_2 = L7_2.FinishWayRow
  L7_2 = L7_2.Progress
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_text = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._is_selected
    if L1_2 == false then
      return
    end
  end
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = A0_2._questid
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.JCCHEMBPEEE
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_reward_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  return L1_2
end
L0_1.get_reward_btn_gameobject = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RewardExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._row
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  A0_2._reward_row = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item2
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.ItemID_1
  if L2_2 ~= 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.item1
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.item1_num
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = "\195\151"
    L5_2 = L1_2.Count_1
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._config_id_list
    L4_2 = L1_2.ItemID_1
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2.ItemID_1
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2._load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.item1_icon
    L6_2 = L2_2.ItemIconPath
    L3_2(L4_2, L5_2, L6_2)
  end
  L2_2 = L1_2.ItemID_2
  if L2_2 ~= 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.item2
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.item2_num
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = "\195\151"
    L5_2 = L1_2.Count_2
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._config_id_list
    L4_2 = L1_2.ItemID_2
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2.ItemID_2
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2._load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.item2_icon
    L6_2 = L2_2.ItemIconPath
    L3_2(L4_2, L5_2, L6_2)
  end
  L2_2 = L1_2.Hcoin
  if L2_2 ~= 0 then
    L2_2 = L1_2.ItemID_2
    if L2_2 == 0 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.item2
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.item2_num
      L3_2 = L2_2
      L2_2 = L2_2.SetCustomizedText
      L4_2 = "\195\151"
      L5_2 = L1_2.Hcoin
      L4_2 = L4_2 .. L5_2
      L2_2(L3_2, L4_2)
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = A0_2._config_id_list
      L4_2 = 1
      L2_2(L3_2, L4_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.ItemExcelTable
      L2_2 = L2_2.GetData
      L3_2 = 1
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2._load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.item2_icon
      L6_2 = L2_2.ItemIconPath
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._setup_rewards = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_selected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.selected_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_controller_scpts
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.save_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.root_btn
    L4_2 = L4_2.gameObject
    L2_2(L3_2, L4_2)
  end
end
L0_1.update_selected_status = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_incontrol_move
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_incontrol_button
  L2_2.enabled = A1_2
  L2_2 = A0_2._status
  L3_2 = CS
  L3_2 = L3_2.LEOGBBOPKKO
  L3_2 = L3_2.JKFPIINHGPD
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_pc_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = not A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_controller_scpts = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._config_id_list
  return L1_2
end
L0_1.get_reward_items = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._config_id_list
  L4_2 = L4_2[1]
  L2_2(L3_2, L4_2)
end
L0_1._on_first_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._config_id_list
  L4_2 = L4_2[2]
  L2_2(L3_2, L4_2)
end
L0_1._on_second_btn_clicked = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.receive_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.normal_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_effect = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.bg_img_canvas
  L1_2.alpha = 0.6
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_canvas
  L1_2.alpha = 0.6
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc_canvas
  L1_2.alpha = 0.4
  L1_2 = A0_2._binder
  L1_2 = L1_2.item1_num_canvas
  L1_2.alpha = 0.4
  L1_2 = A0_2._binder
  L1_2 = L1_2.item2_num_canvas
  L1_2.alpha = 0.4
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_lv_panel_canvas
  L1_2.alpha = 0.7
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_bg_canvas
  L1_2.alpha = 0.5
end
L0_1._update_canvas_values = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputDeviceClass
  L2_2 = L2_2.Controller
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_incontrol_pc_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_in_control_input_switch = L3_1
return L0_1
