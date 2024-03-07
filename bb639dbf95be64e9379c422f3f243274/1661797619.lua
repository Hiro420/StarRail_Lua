local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = "UIText_PlayerReturn_Invitation_Bind_Button"
L1_1 = "UIText_PlayerReturn_Invitation_Binded_Button"
L2_1 = "UIText_PlayerReturn_Invitation_BindReward_Txt"
L3_1 = "UIText_PlayerReturn_Invitation_GetReward_txt"
L4_1 = 5
L5_1 = 2
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "PlayerReturnJourneyInvitationPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityPlayerReturnModule
  A0_2._player_return_module = L1_2
  L1_2 = A0_2._player_return_module
  L1_2 = L1_2.InviteData
  A0_2._invite_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_paste
  L4_2 = A0_2._on_btn_paste_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._on_btn_clear_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_h5
  L4_2 = A0_2._on_btn_goto_h5_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_deselect
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_invitation_code_input_length_limit
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.input_field_code
    L2_2.characterLimit = L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_field_code
  L2_2 = L2_2.onValueChanged
  L3_2 = L2_2
  L2_2 = L2_2.SafeAddListener
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_input_field_code_value_change
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.PlayerReturnBindInvitationCodeRsp
  L5_2 = A0_2._on_player_return_bind_invitation_code_rsp
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.PlayerReturnInviteeDataUpdated
  L5_2 = A0_2._on_player_return_invitee_data_updated
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.MDKWebPageClose
  L5_2 = A0_2._on_mdk_web_page_close
  L2_2(L3_2, L4_2, L5_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._bind_invitation_code_block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._bind_invitation_code_block_id
    L1_2(L2_2, L3_2)
    A0_2._bind_invitation_code_block_id = nil
  end
end
L6_1._on_dispose = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._row = A1_2
  A0_2._index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_basic_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_reward
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_gamepad_widget_active
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_root
  L5_2 = L5_2.IsSelectedByController
  L3_2(L4_2, L5_2)
end
L6_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_btn_root_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_field_code
  L1_2 = L1_2.text
  if L1_2 == nil or L1_2 == "" then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_PlayerReturn_Invitation_EmptyCode_Tip"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.BlockFixedTime
  L4_2 = L4_1
  L5_2 = L5_1
  L6_2 = nil
  L7_2 = false
  L8_2 = "BindInvitationCodeWWWReq"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._bind_invitation_code_block_id = L2_2
  L2_2 = A0_2._player_return_module
  L3_2 = L2_2
  L2_2 = L2_2.SendBindInvitationCodeWWWReq
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L6_1._on_btn_confirm_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.get_cliboard_text_with_permission
  L2_2 = A0_2._paste_code
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_paste_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clear_code
  L1_2(L2_2)
end
L6_1._on_btn_clear_click = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_field_code
  L2_2 = L2_2.caretPosition
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIStringUtil
  L3_2 = L3_2.HalfWidthAlphanumericFilter
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.input_field_code
  L5_2 = L4_2
  L4_2 = L4_2.SetTextWithoutNotify
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_string_length_diff
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.input_field_code
  L6_2 = L2_2 + L4_2
  L5_2.caretPosition = L6_2
  L6_2 = A0_2
  L5_2 = A0_2._refresh_btn_paste_clear
  L5_2(L6_2)
end
L6_1._on_input_field_code_value_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._player_return_module
  L2_2 = L1_2
  L1_2 = L1_2.GetInviteFrontendURL
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.OpeUtil
  L2_2 = L2_2.OpenURLInEmbeddedBrowser
  L3_2 = L1_2
  L4_2 = nil
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = A0_2.__name
  L5_2 = "BtnGotoH5"
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L6_1._on_btn_goto_h5_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._is_waiting_info_rsp_after_bound = true
  L1_2 = A0_2._player_return_module
  L2_2 = L1_2
  L1_2 = L1_2.SendGetInviteeInfoWWWReq
  L1_2(L2_2)
end
L6_1._on_player_return_bind_invitation_code_rsp = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._bind_invitation_code_block_id
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_UIManager
    L2_2 = L1_2
    L1_2 = L1_2.TryUnblockFixedTime
    L3_2 = A0_2._bind_invitation_code_block_id
    L1_2(L2_2, L3_2)
    A0_2._bind_invitation_code_block_id = nil
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PlayerReturnRefreshJourneyPanel
  L1_2(L2_2)
end
L6_1._on_player_return_invitee_data_updated = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._player_return_module
  L2_2 = L1_2
  L1_2 = L1_2.SendGetInviteeInfoWWWReq
  L1_2(L2_2)
end
L6_1._on_mdk_web_page_close = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L6_1._setup_basic_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._player_return_module
  L1_2 = L1_2.CurInviteDisplayRewardItems
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if L2_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L3_2 = L1_2
  L2_2 = L1_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.MoveNext
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.Current
  L4_2 = L4_2.Key
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = L2_2.Current
  L4_2 = L4_2.Value
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_reward_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_reward_item_taken
  L8_2 = L3_2.ItemFigureIconPath
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_reward_item
  L8_2 = L3_2.ItemFigureIconPath
  L5_2(L6_2, L7_2, L8_2)
end
L6_1._setup_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_code
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_paste_clear
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
end
L6_1._refresh_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._invite_data
  L1_2 = L1_2.IsInvitationCodeBound
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_code_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_code_used
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_btn_confirm
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_used_code
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A0_2._invite_data
    L4_2 = L4_2.BoundInvitationCode
    if not L4_2 then
      L4_2 = ""
    end
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_btn_confirm
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L0_1
    L2_2(L3_2, L4_2)
  end
end
L6_1._refresh_code = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._invite_data
  L1_2 = L1_2.IsInvitationCodeBound
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_taken
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_get_reward
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_get_reward
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L6_1._refresh_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._invite_data
  L1_2 = L1_2.IsInvitationCodeBound
  L2_2 = A0_2._binder
  L2_2 = L2_2.input_field_code
  L2_2 = L2_2.text
  L2_2 = L2_2 == nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_paste
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2 and L5_2
  L3_2(L4_2, L5_2)
end
L6_1._refresh_btn_paste_clear = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 or nil
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIStringUtil
    L2_2 = L2_2.HalfWidthAlphanumericFilter
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
  end
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_PlayerReturn_Invitation_EmptyCopy_Tip"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.input_field_code
  L3_2.text = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_btn_paste_clear
  L3_2(L4_2)
end
L6_1._paste_code = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_field_code
  L1_2.text = ""
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_paste_clear
  L1_2(L2_2)
end
L6_1._clear_code = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIStringUtil
  L3_2 = L3_2.GetUnicodeLength
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIStringUtil
  L4_2 = L4_2.GetUnicodeLength
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 - L3_2
  return L5_2
end
L6_1._get_string_length_diff = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.PlayerReturnConstValueExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Invite_InvitationCodeInputLengthLimit"
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = tonumber
  L3_2 = L1_2.Value
  return L2_2(L3_2)
end
L6_1._get_invitation_code_input_length_limit = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_gamepad_widget_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_root_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_gamepad_widget_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_root_deselect = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_in_ctrl_btn_arr
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L6_2.ActionEnabled = A1_2
  end
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_in_ctrl_tip_arr
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L6_2.IsShowTip = A1_2
  end
end
L6_1._set_gamepad_widget_active = L7_1
return L6_1
