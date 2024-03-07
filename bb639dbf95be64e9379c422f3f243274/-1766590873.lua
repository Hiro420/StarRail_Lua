local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L0_1.normal = "#ffffffb2"
L0_1.selected = "#121212e6"
L1_1 = {}
L1_1.normal = "#dbc291ff"
L1_1.selected = "#9d8563ff"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "FriendChatContactItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._contact_data = nil
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L2_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._contact_data = A1_2
  A0_2._is_selected = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.FriendModule
  L4_2 = L3_2
  L3_2 = L3_2.GetPlayerBriefDisplayDataPromise
  L5_2 = A0_2._contact_data
  L5_2 = L5_2.ContactID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaActionOneParam
  function L5_2(A0_3)
    local L1_3, L2_3
    A0_2._player_brief_data = A0_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_view
    L1_3(L2_3)
  end
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "FriendChatContact"
  L6_2 = A1_2.ContactID
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._player_brief_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._player_brief_data
  L1_2 = L1_2.HasRemarkName
  if L1_2 then
    L1_2 = L1_1
    if L1_2 then
      goto lbl_15
    end
  end
  L1_2 = L0_1
  ::lbl_15::
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = A0_2._is_selected
  if L4_2 then
    L4_2 = L1_2.selected
    if L4_2 then
      goto lbl_27
    end
  end
  L4_2 = L1_2.normal
  ::lbl_27::
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PlayerIconConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._player_brief_data
  L3_2 = L3_2.HeadIconID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img
  L6_2 = L2_2.ImagePath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_online_status
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._player_brief_data
  L5_2 = L5_2.IsOnline
  L6_2 = A0_2._player_brief_data
  L6_2 = L6_2.LogoutTimeSpan
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_platform
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._player_brief_data
  L5_2 = L5_2.PlatformInfo
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = A0_2._is_selected
  L3_2(L4_2, L5_2)
end
L2_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._contact_data
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn_click = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reddot
  return L1_2
end
L2_1.get_reddot_transform = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
return
