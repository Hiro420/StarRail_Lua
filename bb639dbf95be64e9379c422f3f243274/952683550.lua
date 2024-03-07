local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PhoneNoticeItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._data = nil
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageRedDotRefreshed
  L4_2 = A0_2._refresh_view
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "PhoneNotificationsGroup"
  L5_2 = A0_2._data
  L5_2 = L5_2.ID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot
  L7_2 = L7_2.transform
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetContactByGroupID
  L3_2 = A0_2._data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ID
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ConstValueClientExcelTable
    L3_2 = L3_2.GetData
    L4_2 = "PhoneMessage_ContactsID_Hero"
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.Value
    L3_2 = L3_2.UintValue
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_title
      L3_2 = L2_2
      L2_2 = L2_2.SetCustomizedText
      L4_2 = L1_1.PlayerData
      L4_2 = L4_2.NickName
      L2_2(L3_2, L4_2)
      L2_2 = L1_1.PlayerData
      L2_2 = L2_2.HeroAvatarInfoData
      L3_2 = L2_2
      L2_2 = L2_2.GetCurrentHeroBasicType
      L2_2 = L2_2(L3_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AvatarExcelTable
      L3_2 = L3_2.GetData
      L4_2 = #L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 ~= nil then
        L5_2 = A0_2
        L4_2 = A0_2._async_load_sprite_to
        L6_2 = A0_2._binder
        L6_2 = L6_2.img_icon
        L7_2 = L3_2.AvatarSideIconPath
        L4_2(L5_2, L6_2, L7_2)
      end
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._data
    L4_2 = L4_2.Name
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A0_2._data
    L5_2 = L5_2.Icon
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_preview
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_preview
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A0_2._data
  L4_2 = L4_2.Content
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_waiting
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._data
  L4_2 = L4_2.IsWaitingChoose
  if L4_2 then
    L4_2 = L0_1
    L5_2 = L4_2
    L4_2 = L4_2.ShowGroupRedDot
    L6_2 = A0_2._data
    L6_2 = L6_2.ID
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = not L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_battle
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._data
  L4_2 = L4_2.HasBattle
  L2_2(L3_2, L4_2)
end
L2_1._refresh_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L2_1.setup_click_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._click_callback
    L2_3 = A0_2._click_handler
    L3_3 = A0_2._data
    L3_3 = L3_3.ID
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_click = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_go
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
return L2_1
