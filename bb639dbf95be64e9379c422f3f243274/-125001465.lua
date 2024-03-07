local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueRoomIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/Rogue/Map/RogueDivergenceIcon.png"
L2_1 = "UIText_Rogue_Map_Divergence_Name"
L3_1 = 0.4
L4_1 = 1
function L5_1(A0_2)
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
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback_listener = A1_2
  A0_2._click_callback = A2_2
  A0_2._click_index = A3_2
end
L0_1.register_click_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_cur_mark
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_icon_and_name
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_lock_node
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_selected = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = false
  L5_2 = A1_2
  L4_2 = A1_2.get_count
  L4_2 = L4_2(L5_2)
  L5_2 = 0
  L6_2 = L4_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = A1_2
    L9_2 = A1_2.get_site_data_item
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L10_2 = L9_2.SiteID
      if L10_2 == A2_2 then
        L3_2 = true
        break
      end
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_current_mark
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L0_1._setup_cur_mark = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2
  L3_2 = A1_2.get_show_rogue_site_data
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2._setup_super
    L6_2 = false
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_img_icon
    L6_2 = L1_1
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_room_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_1
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._get_rogue_room_type_row
    L7_2 = L3_2
    L6_2 = L3_2.GetRogueRoomType
    L6_2, L7_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if L4_2 ~= nil then
      L6_2 = A0_2
      L5_2 = A0_2._setup_super
      L7_2 = L4_2.IsSuper
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2._setup_img_icon
      L7_2 = L4_2.RogueRoomTypeIcon
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_room_name
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L4_2.RogueRoomTypeTextmapID
      L5_2(L6_2, L7_2)
    end
  end
  L4_2 = L3_2 == nil
  L6_2 = A0_2
  L5_2 = A0_2._setup_gray
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._setup_icon_and_name = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group
  if A1_2 then
    L3_2 = L3_1
    if L3_2 then
      goto lbl_9
    end
  end
  L3_2 = L4_1
  ::lbl_9::
  L2_2.alpha = L3_2
end
L0_1._setup_gray = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueRoomTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "RogueRoomType.txt\233\133\141\231\189\174\230\137\190\228\184\141\229\136\176 => RogueRoomType\239\188\154"
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = nil
    return L3_2
  end
  return L2_2
end
L0_1._get_rogue_room_type_row = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_super
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_super = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_room_icon
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_img_icon = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_lock_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_lock_node = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._callback_listener
  if L1_2 ~= nil then
    L1_2 = A0_2._click_callback
    if L1_2 ~= nil then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L1_2 = A0_2._click_callback
  L2_2 = A0_2._callback_listener
  L3_2 = A0_2._click_index
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L3_2 = A0_2
  L2_2 = A0_2._setup_super
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_img_icon
  L4_2 = L1_2.RogueEndlessConstValue
  L4_2 = L4_2.MapRoomIconPath
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_room_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.RogueEndlessConstValue
  L4_2 = L4_2.MapRoomTitle
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.CurrentStatus
  L3_2 = #L2_2
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.ConvCsEnumToNum
  L5_2 = CS
  L5_2 = L5_2.EHLLLFGGJOJ
  L5_2 = L5_2.HJMBDCBHOLG
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 < L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_gray
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_lock_node
  L6_2 = L3_2
  L7_2 = "UIText_ActivityRogueEndless_Map_Unlock"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_current_mark
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1.setup_view_rogue_endless_entrance = L5_1
return L0_1
