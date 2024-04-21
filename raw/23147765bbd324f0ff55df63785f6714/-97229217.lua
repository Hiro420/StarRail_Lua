local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarEidolonSkillDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Locked = 1
L1_1.Activatable = 2
L1_1.Activated = 3
L2_1 = "UIText_AvatarRank_Activated"
L3_1 = "UIText_AvatarRank_ActiveRequire"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_data = A1_2
  A0_2._point_row = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.active_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.active_in_control_button
  L2_2.ActionEnabled = A1_2
end
L0_1.setup_in_control_button_enable = L4_1
function L4_1(A0_2, A1_2)
  A0_2._close_callback = A1_2
end
L0_1.register_close_point_detail_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._active_callback = A1_2
  A0_2._active_callback_self = A2_2
end
L0_1.register_on_click_active_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_close_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_active
  L4_2 = A0_2._on_active_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_eidolon_icon
  L4_2 = A0_2._point_row
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_eidolon_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._point_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_rank
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._point_row
  L3_2 = L3_2.Rank
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_eidolon_desc
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_cost_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2._get_material_cost
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_state
  L1_2(L2_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._point_row
  L3_2 = L3_2.Param
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._point_row
    L8_2 = L8_2.Param
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_eidolon_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._point_row
  L4_2 = L4_2.Desc
  L5_2 = unpack
  L6_2 = L1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._set_eidolon_desc = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._is_display_only
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_material
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_point_state
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_material
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1.Activated
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_active
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1.Activatable
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_disable_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1.Locked
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_activated_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1.Activated
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1.Activatable
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_material_enough
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_active
    L3_2.interactable = L2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_active_btn_disable_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not L2_2
    L3_2(L4_2, L5_2)
  else
    L2_2 = L1_1.Locked
    if L1_2 == L2_2 then
      L2_2 = A0_2._point_row
      L2_2 = L2_2.Rank
      if 1 < L2_2 then
        L2_2 = A0_2._avatar_data
        L2_2 = L2_2.Row
        L2_2 = L2_2.RankIDList
        L3_2 = A0_2._point_row
        L3_2 = L3_2.Rank
        L3_2 = L3_2 - 1
        L3_2 = L3_2 - 1
        L2_2 = L2_2[L3_2]
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.AvatarRankConfigExcelTable
        L3_2 = L3_2.GetData
        L4_2 = L2_2
        L3_2 = L3_2(L4_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.text_disable_hint
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetTextID
        L6_2 = L3_1
        L7_2 = G
        L7_2 = L7_2.TextmapStatic
        L7_2 = L7_2.GetText
        L8_2 = L3_2.Name
        L7_2, L8_2 = L7_2(L8_2)
        L4_2(L5_2, L6_2, L7_2, L8_2)
      else
        L2_2 = G
        L2_2 = L2_2.SuperDebug
        L2_2 = L2_2.Log
        L3_2 = "(AvatarEidolonSkillDetailPanel) Eidolon detail panel init error! No preEidolon Exist!"
        L2_2(L3_2)
      end
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_activated_hint
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L2_1
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._set_state = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._close_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._close_callback
    L1_2()
  end
end
L0_1._on_close_btn_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._point_row
  L1_2 = L1_2.Rank
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Rank
  if L1_2 > L2_2 then
    L1_2 = A0_2._avatar_data
    L1_2 = L1_2.Rank
    L1_2 = L1_2 + 1
    L2_2 = A0_2._point_row
    L2_2 = L2_2.Rank
    if L1_2 == L2_2 then
      L1_2 = L1_1.Activatable
      return L1_2
    else
      L1_2 = L1_1.Locked
      return L1_2
    end
  else
    L1_2 = L1_1.Activated
    return L1_2
  end
end
L0_1._get_point_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.is_avatar_rankup_cost_enough
  L2_2 = A0_2._point_row
  return L1_2(L2_2)
end
L0_1._is_material_enough = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_avatar_rankup_cost
  L2_2 = A0_2._point_row
  return L1_2(L2_2)
end
L0_1._get_material_cost = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._point_row
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2.is_eidolon_played_fade_in
  if L1_2 == false then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.Proto
  L2_2 = L2_2.ItemCost
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = 0
  L3_2 = A0_2._point_row
  L3_2 = L3_2.UnlockCost
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._point_row
    L6_2 = L6_2.UnlockCost
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.ItemID
    L7_2 = G
    L7_2 = L7_2.UtilEngineWrap
    L7_2 = L7_2.ConvCsEnumToNum
    L8_2 = CS
    L8_2 = L8_2.HGGDPEHMDBH
    L8_2 = L8_2.AHCNPMBGKID
    L7_2 = L7_2(L8_2)
    if L6_2 ~= L7_2 then
      L6_2 = CS
      L6_2 = L6_2.Proto
      L6_2 = L6_2.ItemCost
      L6_2 = L6_2()
      L7_2 = CS
      L7_2 = L7_2.Proto
      L7_2 = L7_2.PileItem
      L7_2 = L7_2()
      L6_2.PileItem = L7_2
      L7_2 = L6_2.PileItem
      L8_2 = A0_2._point_row
      L8_2 = L8_2.UnlockCost
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.ItemID
      L7_2.ItemId = L8_2
      L7_2 = L6_2.PileItem
      L8_2 = A0_2._point_row
      L8_2 = L8_2.UnlockCost
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.ItemNum
      L7_2.ItemNum = L8_2
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.EventSystem
  L4_2 = L4_2.current
  L4_2 = L4_2.currentSelectedGameObject
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._active_callback
  L3_2 = A0_2._active_callback_self
  L4_2 = A0_2._point_row
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.FFOMLPONIFB
  L3_2 = L2_2
  L2_2 = L2_2.LLKCDFHACCP
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.ID
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.Rank
  L5_2 = L5_2 + 1
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_active_btn_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._display_only
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.get_blackboard
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.query
    L4_2 = "IsDisplayOnly"
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = false
    end
    A0_2._display_only = L2_2
  end
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if not L1_2 then
    L1_2 = A0_2._display_only
  end
  return L1_2
end
L0_1._is_display_only = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._close_callback = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_point_state
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1.Activated
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_display_only
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_12
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_12::
  L1_2 = A0_2._binder
  L1_2 = L1_2.material_cost_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
return L0_1
