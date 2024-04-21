local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfCommonQuestItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfCommonQuestItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.SilverWolfUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfActivityMissionRaidTabItemPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._quest_index = 0
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_mission
  L4_2 = A0_2._on_btn_goto_destination
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._raid_data = A1_2
  A0_2._group_id = A2_2
  L3_2 = A0_2._quest_index
  L4_2 = A0_2._raid_data
  L4_2 = L4_2.QuestIDs
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  if L3_2 > L4_2 then
    L3_2 = A0_2._raid_data
    L3_2 = L3_2.QuestIDs
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = A0_2._quest_index
  ::lbl_17::
  A0_2._quest_index = L3_2
  L3_2 = A0_2._state
  L4_2 = A0_2.SelectState
  L4_2 = L4_2.Selected
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh
    L3_2(L4_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  return L1_2
end
L0_1.is_can_to_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._raid_data
  L3_2 = L3_2.QuestIDs
  L3_2 = L3_2.Length
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_view
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_raid_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._raid_data
  L3_2 = L3_2.RaidTitle
  L4_2 = A0_2._quest_index
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_raid_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._raid_data
  L3_2 = L3_2.RaidDesc
  L4_2 = A0_2._quest_index
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.photo_items
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.photo_items
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._group_id
    L7_2 = L7_2 == L4_2
    L5_2(L6_2, L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_goto_btn_state
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_goto_mission
  L2_2 = A0_2._raid_data
  L2_2 = L2_2.QuestFinish
  L2_2 = not L2_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip_btn_go
  L2_2 = A0_2._raid_data
  L2_2 = L2_2.QuestFinish
  L2_2 = not L2_2
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._raid_data
  L1_2 = L1_2.QuestFinish
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_goto_mission
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_SilverWolf_SubTab_Mission_Finish"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_btn_goto_mission
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_SilverWolf_SubTab_Goto"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_goto_btn_state = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._raid_data
  L1_2 = L1_2.UnlockMission
  if L1_2 ~= 0 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.MissionModule
    L4_2 = L2_2
    L3_2 = L2_2.MainMissionDataPromised
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2
    L3_2 = L3_2.ThenLuaAction
    function L5_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._raid_data
      L0_3 = L0_3.UnlockMissionFinish
      if not L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.node_empty
        L1_3 = L0_3
        L0_3 = L0_3.SafeSetActive
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.node_content
        L1_3 = L0_3
        L0_3 = L0_3.SafeSetActive
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._setup_condition_tips
        L2_3 = L1_2
        L0_3(L1_3, L2_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.to_first_zoom
        L0_3(L1_3)
      else
        L0_3 = A0_2._binder
        L0_3 = L0_3.node_content
        L1_3 = L0_3
        L0_3 = L0_3.SafeSetActive
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.node_empty
        L1_3 = L0_3
        L0_3 = L0_3.SafeSetActive
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = CS
        L0_3 = L0_3.RPG
        L0_3 = L0_3.Client
        L0_3 = L0_3.Prefs
        L0_3 = L0_3.User
        L0_3 = L0_3.SilverWolfSeenOpenRaidTab
        L1_3 = L0_3
        L0_3 = L0_3.Contains
        L2_3 = A0_2._group_id
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          L0_3 = CS
          L0_3 = L0_3.RPG
          L0_3 = L0_3.Client
          L0_3 = L0_3.Prefs
          L0_3 = L0_3.User
          L0_3 = L0_3.SilverWolfSeenOpenRaidTab
          L1_3 = L0_3
          L0_3 = L0_3.Add
          L2_3 = A0_2._group_id
          L0_3(L1_3, L2_3)
          L0_3 = CS
          L0_3 = L0_3.RPG
          L0_3 = L0_3.Client
          L0_3 = L0_3.Prefs
          L0_3 = L0_3.ForceSave
          L0_3()
          L0_3 = G
          L0_3 = L0_3.NotifyManager
          L0_3 = L0_3.notify
          L1_3 = G
          L1_3 = L1_3.CS
          L1_3 = L1_3.NotifyType
          L1_3 = L1_3.ActivityForceRefreshRedDot
          L0_3(L1_3)
        end
      end
    end
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_select = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_timer
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_task
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_currency
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.SilverWolfUtils
  L5_2 = L5_2.GetCurrencyIcon
  L5_2, L6_2, L7_2 = L5_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetMainMissionRow
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_empty_tips
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_SilverWolf_SubTab_Lock_PreMission"
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L2_2.Name
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_empty
  L6_2 = A0_2._on_btn_goto_mission
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_condition_tips = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "GotoMission_"
  L5_2 = A0_2._raid_data
  L5_2 = L5_2.GotoID
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowConfirmDialog
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = A0_2._raid_data
      if L1_3 == nil then
        return
      end
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_ModuleManager
      L1_3 = L1_3.TransferModule
      L2_3 = L1_3
      L1_3 = L1_3.Transfer
      L3_3 = A0_2._raid_data
      L3_3 = L3_3.EntranceID
      L4_3 = A0_2._raid_data
      L4_3 = L4_3.MappingInfoID
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L1_2 = L1_2(L2_2)
  L2_2 = DialogBtnMode
  L2_2 = L2_2.eOkCancel
  L1_2.Mode = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.GetComponentContent
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_SilverWolf_SubTab_GotoConfirm"
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_goto_destination = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.SilverWolfUtils
  L1_2 = L1_2.goto_companion_mission
  L1_2()
end
L0_1._on_btn_goto_mission = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SilverWolfCommonQuestItemPanel
    L8_2 = G
    L8_2 = L8_2.SilverWolfCommonQuestItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.set_action_list
    L7_2 = {}
    L8_2 = "ActionGroup_Scroll"
    L9_2 = "ActionGroup_RewardDetail"
    L10_2 = "ActionGroup_Return"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._raid_data
  L7_2 = L7_2.QuestIDs
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_reward_change = L1_1
return L0_1
