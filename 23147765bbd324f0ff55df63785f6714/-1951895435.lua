local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AssistAvatarItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = "UIText_Friend_Name_Remark"
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_item_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._assist_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatar_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_player_info
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._assist_data
  L1_2 = L1_2.PlayerDisplayData
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.IsMarked
  L6_2 = L1_2.UID
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.refresh_mark = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._btn_click_callback = A1_2
  A0_2._event_listener = A2_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._detail_callback = A1_2
  A0_2._detail_callback_listener = A2_2
end
L0_1.register_detail_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_item_select
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_detail_click
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_root_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._btn_click_callback
  if L1_2 then
    L1_2 = A0_2._event_listener
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.save_navigation_target
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_root
      L3_2 = L3_2.gameObject
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._btn_click_callback
      L2_2 = A0_2._event_listener
      L3_2 = A0_2._assist_data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_item_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._assist_data
  L3_2 = L3_2.AvatarData
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_avatar_rank
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._assist_data
  L3_2 = L3_2.AvatarData
  L3_2 = L3_2.Rank
  L1_2(L2_2, L3_2)
end
L0_1._setup_avatar_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._assist_data
  L1_2 = L1_2.PlayerDisplayData
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetFriendBriefData
  L4_2 = L1_2.UID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.StrExt
    L3_2 = L3_2.IsNullOrEmpty
    L4_2 = L2_2.RemarkName
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_name
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = "<color=#9d8563ff>"
      L6_2 = L2_2.RemarkName
      L7_2 = "</color>"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_name
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = L1_2.Name
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_uid
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2.UID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_sign
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L1_2.Signature
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_rank
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._assist_data
  L5_2 = L5_2.AvatarData
  L5_2 = L5_2.Rank
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.IsMarked
  L7_2 = L1_2.UID
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_platform
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2.PlatformInfo
  L3_2(L4_2, L5_2)
end
L0_1._setup_player_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._detail_callback
  L3_2 = A0_2._detail_callback_listener
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_detail
  L5_2 = A0_2._assist_data
  L5_2 = L5_2.PlayerDisplayData
  L5_2 = L5_2.UID
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_detail_click = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._assist_data = nil
end
L0_1._on_dispose = L3_1
return L0_1
