local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Friend.SupportRewardInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SupportRewardInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_photo
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2._on_click_head_icon
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._data
  L2_2 = L2_2 ~= nil
  L4_2 = A0_2
  L3_2 = A0_2._refresh_node
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_name
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A0_2._data
    L6_2 = L5_2
    L5_2 = L5_2.GetDisplayName
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = G
    L3_2 = L3_2.FriendUtils
    L3_2 = L3_2.is_friend
    L4_2 = A0_2._data
    L4_2 = L4_2.UID
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_relationship
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_Assist_Filter_Content_Friend"
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_relationship
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_Assist_Filter_Content_Stranger"
      L3_2(L4_2, L5_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_photo
    L4_2 = L3_2
    L3_2 = L3_2.setup_view_by_id
    L5_2 = A0_2._data
    L5_2 = L5_2.HeadIconID
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_photo
    L4_2 = L3_2
    L3_2 = L3_2.set_level
    L5_2 = A0_2._data
    L5_2 = L5_2.Level
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_platform
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._data
    L5_2 = L5_2.PlatformInfo
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_platform
    L4_2 = L3_2
    L3_2 = L3_2.set_line
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_relationship
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_Assist_Filter_Content_NoPSN_Friend"
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_head_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_platform_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.show_friend_detail_info
  L2_2 = A0_2._data
  L2_2 = L2_2.UID
  L3_2 = CS
  L3_2 = L3_2.LCNCCKJBFIP
  L3_2 = L3_2.KOBMKFOHILH
  L1_2(L2_2, L3_2)
end
L0_1._on_click_head_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_click_head_icon
    L1_2(L2_2)
  end
end
L0_1._on_btn_root = L1_1
return L0_1
