local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfCommonQuestItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityMission.SilverWolfCommonQuestItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfActivityMissionShootTabItemPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "8007"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._quest_item_panels = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_mission
  L4_2 = A0_2._on_btn_goto_mission
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_task_img
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._bind_btn_callback
    L7_2 = A0_2._binder
    L7_2 = L7_2.btn_task_img
    L7_2 = L7_2[L4_2]
    L8_2 = A0_2._on_btn_img_task
    L9_2 = L4_2 - 1
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_task_img
  L1_2 = L1_2[1]
  L1_2 = L1_2.transform
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_pic_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._quest_item_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._quest_item_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.get_quest_finished
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = A0_2._quest_item_panels
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.get_btn_root
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.transform
      L5_2 = L5_2.gameObject
      return L5_2
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_task_img
  L1_2 = L1_2[1]
  L1_2 = L1_2.transform
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._shoot_data = A1_2
  A0_2._group_id = A2_2
  L3_2 = A0_2._state
  L4_2 = A0_2.SelectState
  L4_2 = L4_2.Selected
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._init_btn_save_navigation
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_photo_btn_select_trigger
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._first_img_index = nil
  L1_2 = A0_2._shoot_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_shoot_sub_panel
  L1_2(L2_2)
  L1_2 = 0
  L2_2 = A0_2._shoot_data
  L2_2 = L2_2.QuestIDs
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_task
    L6_2 = L4_2 + 1
    L5_2 = L5_2[L6_2]
    if L5_2 then
      L5_2 = A0_2._shoot_data
      L5_2 = L5_2.QuestImgPaths
      L5_2 = L5_2[L4_2]
      if L5_2 then
        L6_2 = A0_2
        L5_2 = A0_2._async_load_sprite_to
        L7_2 = A0_2._binder
        L7_2 = L7_2.img_task
        L8_2 = L4_2 + 1
        L7_2 = L7_2[L8_2]
        L8_2 = A0_2._shoot_data
        L8_2 = L8_2.QuestImgPaths
        L8_2 = L8_2[L4_2]
        L8_2 = L8_2.IconPath
        L5_2(L6_2, L7_2, L8_2)
      end
    end
    L5_2 = A0_2._quest_item_panels
    L6_2 = L4_2 + 1
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = A0_2._shoot_data
    L7_2 = L7_2.QuestIDs
    L7_2 = L7_2[L4_2]
    L5_2(L6_2, L7_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_ModuleManager
    L5_2 = L5_2.QuestModule
    L6_2 = L5_2
    L5_2 = L5_2.TryGetQuestData
    L7_2 = A0_2._shoot_data
    L7_2 = L7_2.QuestIDs
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = false
    if L5_2 ~= nil then
      L7_2 = L5_2.Status
      L8_2 = CS
      L8_2 = L8_2.LEOGBBOPKKO
      L8_2 = L8_2.CMOFEAFMGAK
      L6_2 = L7_2 == L8_2
    end
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_img_get
    L8_2 = L4_2 + 1
    L7_2 = L7_2[L8_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    if not L6_2 then
      L7_2 = A0_2._first_img_index
      if L7_2 == nil then
        L7_2 = L4_2 + 1
        A0_2._first_img_index = L7_2
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_goto_btn_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_goto_mission
  L2_2 = A0_2._shoot_data
  L2_2 = L2_2.QuestFinish
  L2_2 = not L2_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip_btn_go
  L2_2 = A0_2._shoot_data
  L2_2 = L2_2.QuestFinish
  L2_2 = not L2_2
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._shoot_data
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
L0_1._refresh_goto_btn_state = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SilverWolfSeenOpenShootTab
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
    L1_2 = L1_2.SilverWolfSeenOpenShootTab
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
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L2_1
function L2_1(A0_2)
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
  L5_2 = A0_2._shoot_data
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
      L1_3 = A0_2._shoot_data
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
      L3_3 = A0_2._shoot_data
      L3_3 = L3_3.EntranceID
      L4_3 = A0_2._shoot_data
      L4_3 = L4_3.MappingInfoID
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_ModuleManager
      L1_3 = L1_3.SilverWolfModule
      L2_3 = L1_1
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
L0_1._on_btn_goto_mission = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = A0_2.__name
  L5_2 = "OpenPhoto_"
  L6_2 = A0_2._shoot_data
  L6_2 = L6_2.QuestImgPaths
  L6_2 = L6_2[A1_2]
  L6_2 = L6_2.FigurePath
  L5_2 = L5_2 .. L6_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._shoot_data
  if L2_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.PhoneMessage.MessageImageDialog"
  L4_2 = A0_2._shoot_data
  L4_2 = L4_2.QuestImgPaths
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.FigurePath
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_img_task = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._quest_item_panels
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = 0
    L2_2 = A0_2._shoot_data
    L2_2 = L2_2.QuestIDs
    L2_2 = L2_2.Length
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L6_2 = A0_2
      L5_2 = A0_2.create_panel
      L7_2 = G
      L7_2 = L7_2.SilverWolfCommonQuestItemPanel
      L8_2 = G
      L8_2 = L8_2.SilverWolfCommonQuestItemPanelBinder
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.bind
      L8_2 = A0_2._binder
      L8_2 = L8_2.quest_panel
      L9_2 = L4_2 + 1
      L8_2 = L8_2[L9_2]
      L6_2(L7_2, L8_2)
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._quest_item_panels
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._init_shoot_sub_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_task_img
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._quest_item_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._quest_item_panels
    L8_2 = L8_2[L5_2]
    L9_2 = L8_2
    L8_2 = L8_2.get_btn_root
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_task_img
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = {}
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L6_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.btn_task_img
    L9_2 = L9_2[L5_2]
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L6_2
    L9_2 = L1_2[L5_2]
    L7_2(L8_2, L9_2)
    L8_2 = A0_2
    L7_2 = A0_2.setup_navigation
    L9_2 = L6_2
    L10_2 = NavigationType
    L10_2 = L10_2.Horizontal
    L11_2 = false
    L12_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.btn_task_img
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.ClearAnimationState
    L7_2(L8_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  L6_2 = false
  L7_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._init_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_task_img
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = L5_2.gameObject
      L0_3(L1_3, L2_3)
    end
    L5_2.onSelectTrigger = L6_2
  end
end
L0_1._init_btn_save_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_task_img
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.btn_task_img
    L6_2 = L6_2[L5_2]
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 1
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.btn_task_img
      L3_3 = L5_2
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.transform
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.btn_task_img
      L1_3 = L5_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.transform
      L1_3 = L0_3
      L0_3 = L0_3.GetSiblingIndex
      L0_3 = L0_3(L1_3)
      A0_2._last_img_btn_sibling_index = L0_3
      L0_3 = A0_2._binder
      L0_3 = L0_3.btn_task_img
      L1_3 = L5_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.transform
      L1_3 = L0_3
      L0_3 = L0_3.SetSiblingIndex
      L2_3 = L1_2
      L2_3 = L2_3 - 1
      L0_3(L1_3, L2_3)
    end
    L6_2.onSelectTrigger = L7_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.btn_task_img
    L6_2 = L6_2[L5_2]
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._last_img_btn_sibling_index
      if L0_3 then
        L0_3 = A0_2._binder
        if L0_3 ~= nil then
          L0_3 = A0_2._binder
          L0_3 = L0_3.btn_task_img
          L1_3 = L5_2
          L0_3 = L0_3[L1_3]
          L0_3 = L0_3.transform
          L1_3 = L0_3
          L0_3 = L0_3.SetSiblingIndex
          L2_3 = A0_2._last_img_btn_sibling_index
          L0_3(L1_3, L2_3)
          A0_2._last_img_btn_sibling_index = nil
        end
      end
    end
    L6_2.onDeselectTrigger = L7_2
  end
end
L0_1._init_photo_btn_select_trigger = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  L2_2 = 1
  L3_2 = A0_2._quest_item_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_2 - 1
    L6_2 = 0.1 * L6_2
    L6_2 = L1_2 + L6_2
    L7_2 = A0_2._quest_item_panels
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.play_fade_in
    L9_2 = L6_2
    L10_2 = 0.2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._play_fade_in = L2_1
return L0_1
