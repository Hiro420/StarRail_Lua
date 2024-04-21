local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FriendModule
L1_1 = "UIText_PlayerCard_Record"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PlayerInfoRecordTabItem"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L2_1.update_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_btn_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_btn_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L2_1._setup_tab_btn_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerRecordChallengeRefreshed
  L4_2 = A0_2._on_challenge_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerRecordRogueRefreshed
  L4_2 = A0_2._on_rogue_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerRecordDisplayChanged
  L4_2 = A0_2._refresh_setting_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerRecordDisplayTypeChanged
  L4_2 = A0_2._refresh_setting_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rogue
  L4_2 = A0_2._on_btn_rogue
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.setup_in_control_tip_enable
  L2_2 = A0_2._binder
  L2_2 = L2_2.control_tip_challenge
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.setup_in_control_tip_enable
  L2_2 = A0_2._binder
  L2_2 = L2_2.control_tip_rogue
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_challenge_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_challenge_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.UIUtils
    L0_3 = L0_3.setup_in_control_tip_enable
    L1_3 = A0_2._binder
    L1_3 = L1_3.control_tip_challenge
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.UIUtils
    L0_3 = L0_3.setup_in_control_tip_enable
    L1_3 = A0_2._binder
    L1_3 = L1_3.control_tip_rogue
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_challenge_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = G
    L0_3 = L0_3.UIUtils
    L0_3 = L0_3.setup_in_control_tip_enable
    L1_3 = A0_2._binder
    L1_3 = L1_3.control_tip_challenge
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_rogue_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_rogue_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.UIUtils
    L0_3 = L0_3.setup_in_control_tip_enable
    L1_3 = A0_2._binder
    L1_3 = L1_3.control_tip_challenge
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.UIUtils
    L0_3 = L0_3.setup_in_control_tip_enable
    L1_3 = A0_2._binder
    L1_3 = L1_3.control_tip_rogue
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_rogue_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = G
    L0_3 = L0_3.UIUtils
    L0_3 = L0_3.setup_in_control_tip_enable
    L1_3 = A0_2._binder
    L1_3 = L1_3.control_tip_rogue
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshChallengeRecordData
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshRogueRecordData
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L1_2(L2_2)
end
L2_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_setting_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rogue_view
  L1_2(L2_2)
end
L2_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_setting
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsLocalPlayer
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.PlayerUtils
    L1_2 = L1_2.is_display_record
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = "UI/Atlas/AtlasRoot/Common/Icon/IconHideFill.png"
      if L1_2 then
        goto lbl_21
      end
    end
    L1_2 = "UI/Atlas/AtlasRoot/Common/Icon/IconDisplay.png"
    ::lbl_21::
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_setting_icon
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = "UIText_PlayerCard_Record_HideTips"
    L3_2 = G
    L3_2 = L3_2.PlayerUtils
    L3_2 = L3_2.is_display_record
    L3_2 = L3_2()
    if L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_ModuleManager
      L3_2 = L3_2.PlayerModule
      L3_2 = L3_2.PlayerSettingData
      L3_2 = L3_2.DisplayRecordType
      L4_2 = CS
      L4_2 = L4_2.IJICNOMKDKC
      L4_2 = L4_2.OCNKGJFGKHA
      if L3_2 == L4_2 then
        L2_2 = "UIText_PlayerCard_Record_ShowTips1"
      else
        L4_2 = CS
        L4_2 = L4_2.IJICNOMKDKC
        L4_2 = L4_2.CKPJKNKAJKB
        if L3_2 == L4_2 then
          L2_2 = "UIText_PlayerCard_Record_ShowTips2"
        end
      end
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_setting_status
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L2_1._refresh_setting_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetChallengeRecordData
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._challenge_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._is_challenge_display
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_challenge
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_challenge_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_challenge_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.GroupName
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_challenge_icon
    L5_2 = A0_2._challenge_data
    L5_2 = L5_2.ThemePicPath
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_challenge_progress_current
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.CurrentProgressCount
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_challenge_progress_max
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.TotalProgressCount
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_challenge_star_current
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.CurrentStarCount
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_challenge_star_max
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.TotalStarCount
    L2_2(L3_2, L4_2)
  end
end
L2_1._refresh_challenge_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._challenge_data
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L2_1._is_challenge_display = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueRecordData
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._rogue_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._is_rogue_display
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rogue
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rogue_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_rogue_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Rogue_Title"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_rogue_area_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._rogue_data
    L4_2 = L4_2.AreaName
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_rogue_difficulty
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = G
    L4_2 = L4_2.UITextUtils
    L4_2 = L4_2.GetRomanNumberTextID
    L5_2 = A0_2._rogue_data
    L5_2 = L5_2.Difficulty
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L2_1._refresh_rogue_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_data
  L1_2 = A0_2._rogue_data
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L2_1._is_rogue_display = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_view
  L1_2(L2_2)
end
L2_1._on_challenge_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rogue_view
  L1_2(L2_2)
end
L2_1._on_rogue_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._challenge_data
  if L1_2 ~= nil then
    L1_2 = A0_2._challenge_data
    L1_2 = L1_2.HasRecord
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.PlayerInfo.Record.PlayerChallengeRecordDialog"
  L3_2 = A0_2._challenge_data
  L4_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "ChallengeRecordDetails"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1._on_btn_challenge = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._rogue_data
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_data
    L1_2 = L1_2.HasRecord
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.PlayerInfo.Record.PlayerRogueRecordDialog"
  L3_2 = A0_2._rogue_data
  L4_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "RogueRecordDetails"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1._on_btn_rogue = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_challenge_display
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_challenge_root
    L1_2 = L1_2.gameObject
    return L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2._is_rogue_display
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_rogue_root
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_challenge_display
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_rogue_display
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.UIUtils
      L1_2 = L1_2.setup_navigation
      L2_2 = {}
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_challenge_root
      L4_2 = A0_2._binder
      L4_2 = L4_2.btn_rogue_root
      L2_2[1] = L3_2
      L2_2[2] = L4_2
      L3_2 = NavigationType
      L3_2 = L3_2.Vertical
      L4_2 = false
      L5_2 = false
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1.refresh_short_cut_hint = L3_1
return L2_1
