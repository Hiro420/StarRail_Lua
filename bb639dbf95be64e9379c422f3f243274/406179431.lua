local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.CombatPowerAvatarRarityType
L1_1 = L1_1.CombatPowerAvatarRarityType4
L0_1[L1_1] = "SpriteOutput/UI/PlayerInfo/SupportPurpleBg.png"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.CombatPowerAvatarRarityType
L1_1 = L1_1.CombatPowerAvatarRarityType5
L0_1[L1_1] = "SpriteOutput/UI/PlayerInfo/SupportOrangeBg.png"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AssistAvatarPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AvatarModule
function L3_1(A0_2)
  local L1_2
  A0_2._origin_position = nil
  A0_2._origin_scale = nil
  A0_2._in_edit = false
end
L1_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L1_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  A0_2._in_edit = A1_2
end
L1_1.set_in_edit = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._click_callback = A1_2
  A0_2._click_hander = A2_2
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.panels_avatar
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.bind_click_avatar
    L10_2 = A0_2._click_callback
    L11_2 = A0_2._click_hander
    L8_2(L9_2, L10_2, L11_2)
  end
end
L1_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_datas = A1_2
  L3_2 = A0_2._avatar_datas
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  A0_2._is_empty = L3_2
  A0_2._is_local = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_view
  L3_2(L4_2)
end
L1_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_root_btn
  L1_2(L2_2)
end
L1_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_local
  if L1_2 then
    L1_2 = A0_2._in_edit
    L1_2 = not L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.enabled = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_total_click
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_root_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_avatar
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._avatar_datas
    L6_2 = L6_2[L4_2]
    L8_2 = L5_2
    L7_2 = L5_2.setup_view
    L9_2 = L6_2
    L10_2 = A0_2._is_local
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._is_local
    L7_2 = A0_2._in_edit
    L7_2 = (L7_2 or L6_2 ~= nil) and L7_2
    L9_2 = L5_2
    L8_2 = L5_2.set_interactable
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L1_1._refresh_avatar_list = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._selected_btns = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_avatar
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.get_selected_btn
    L6_2 = L6_2(L7_2)
    if L6_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._selected_btns
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._selected_btns
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._refresh_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_hander
  L1_2(L2_2, L3_2)
end
L1_1._on_btn_root = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_local
  if L1_2 then
    L1_2 = {}
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L1_2[1] = L2_2
    return L1_2
  else
    L1_2 = A0_2._selected_btns
    return L1_2
  end
end
L1_1.get_selected_btns = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_selected_btns
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2[1]
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.gameObject
  return L2_2
end
L1_1.get_first_selected_object = L3_1
return L1_1
