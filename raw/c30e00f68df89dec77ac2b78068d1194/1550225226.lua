local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfExploreQuestItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfExploreQuestItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfActivityMissionExploreTabItemPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_SilverWolf_SubTab_Explore_Tips"
L2_1 = "8006"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.SilverWolfUtils
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._reward_panels = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_mission
  L4_2 = A0_2._on_btn_goto_mission
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_item_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_quest_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_item_view
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
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._explore_data = A1_2
  A0_2._group_id = A2_2
  L3_2 = A0_2._state
  L4_2 = A0_2.SelectState
  L4_2 = L4_2.Selected
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh
    L3_2(L4_2)
  end
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._explore_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._explore_data
  L1_2 = L1_2.ImgPath
  if L1_2 then
    L1_2 = A0_2._explore_data
    L1_2 = L1_2.ImgPath
    L1_2 = L1_2.FigurePath
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._async_load_sprite_to
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_map
      L4_2 = A0_2._explore_data
      L4_2 = L4_2.ImgPath
      L4_2 = L4_2.FigurePath
      L1_2(L2_2, L3_2, L4_2)
  end
  else
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.Log
    L2_2 = "exploreData imgPath do not exist!"
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_entrance_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1.GetTextIDByEntranceID
  L4_2 = A0_2._explore_data
  L4_2 = L4_2.EntranceID
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cur_progress
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_goto_btn_state
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_item_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._explore_data
  L3_2 = L3_2.QuestIDs
  L3_2 = L3_2.Length
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_item_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.quest_item_view
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_goto_mission
  L2_2 = A0_2._explore_data
  L2_2 = L2_2.QuestFinish
  L2_2 = not L2_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip_btn_go
  L2_2 = A0_2._explore_data
  L2_2 = L2_2.QuestFinish
  L2_2 = not L2_2
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._explore_data
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
L0_1._refresh_goto_btn_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = A0_2._explore_data
  L3_2 = L3_2.QuestIDs
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.GlobalVars
    L6_2 = L6_2.s_ModuleManager
    L6_2 = L6_2.QuestModule
    L7_2 = L6_2
    L6_2 = L6_2.TryGetQuestData
    L8_2 = A0_2._explore_data
    L8_2 = L8_2.QuestIDs
    L8_2 = L8_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = L6_2.Status
      L8_2 = CS
      L8_2 = L8_2.LEOGBBOPKKO
      L8_2 = L8_2.CMOFEAFMGAK
      if L7_2 == L8_2 then
        L1_2 = L1_2 + 1
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_cur_progress = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SilverWolfSeenOpenExploreTab
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._group_id
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.SilverWolfSeenOpenExploreTab
    L2_2 = L1_2
    L1_2 = L1_2.Add
    L3_2 = A0_2._group_id
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.ForceSave
    L1_2()
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.ActivityForceRefreshRedDot
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L4_1
function L4_1(A0_2)
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
  L5_2 = A0_2._explore_data
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
      L1_3 = A0_2._explore_data
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
      L1_3 = L1_3.TransferWithFinishedEvent
      L3_3 = A0_2._explore_data
      L3_3 = L3_3.EntranceID
      L4_3 = A0_2._explore_data
      L4_3 = L4_3.MappingInfoID
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_ModuleManager
      L1_3 = L1_3.SilverWolfModule
      L2_3 = L2_1
      L1_3.TutorialKeyAfterTrans = L2_3
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
L0_1._on_btn_goto_mission = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.SilverWolfExploreQuestItemPanel
  L8_2 = G
  L8_2 = L8_2.SilverWolfExploreQuestItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A2_2 + 1
  L8_2 = A0_2._explore_data
  L8_2 = L8_2.QuestIDs
  L8_2 = L8_2.Length
  L9_2 = A0_2._explore_data
  L9_2 = L9_2.QuestIDs
  L9_2 = L9_2[A2_2]
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2._reward_panels
  L6_2 = A2_2 + 1
  L5_2[L6_2] = L4_2
  return L3_2
end
L0_1._on_quest_item_change = L4_1
return L0_1
