local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionBuffSelectRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityTelevisionModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_deselect
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
  A0_2.show_detail = false
  A0_2.short_desc = true
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.BuffID
  A0_2.buff_id = L2_2
  L2_2 = A1_2.BuffCount
  A0_2.buff_count = L2_2
  L2_2 = A1_2.ShowCount
  A0_2.show_count = L2_2
  L2_2 = A1_2.LevelRow
  A0_2.level_row = L2_2
  L2_2 = A0_2.level_row
  L2_2 = L2_2.ExtraEffectID
  L2_2 = L2_2 ~= 0
  A0_2._has_extra_effect = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2.Interactable
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.Interactable
  A0_2.interactable = L2_2
  L2_2 = A1_2.Interactable
  if L2_2 then
    L2_2 = A1_2.ClickCallback
    A0_2.click_callback = L2_2
    L2_2 = A1_2.CallbackListener
    A0_2.callback_listener = L2_2
  end
  L2_2 = A1_2.DetailCallbackListener
  A0_2._detail_callback_listener = L2_2
  L2_2 = A1_2.DetailCallback
  A0_2._detail_callback = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_buff
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_buff_extra_effect
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.click_callback
  if L1_2 then
    L1_2 = A0_2.click_callback
    L2_2 = A0_2.callback_listener
    L3_2 = A0_2.buff_id
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.GetMazeBuffData
  L2_2 = A0_2.buff_id
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_buff_icon
  L5_2 = L1_2.BuffIcon
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_desc
  L2_2(L3_2)
end
L0_1.setup_buff = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    A0_2.short_desc = A1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_buff_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.show_count
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_buff_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2.buff_count
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.show_count
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.refresh_maze_buff_desc
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.refresh_buff_rate
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.refresh_level_buff_desc
    L2_2(L3_2)
  end
end
L0_1.refresh_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetBuffShowLevelImagePath
  L3_2 = A0_2.buff_id
  L4_2 = A0_2.buff_count
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_rate_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_rate_icon
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.refresh_buff_rate = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.GetMazeBuffData
  L2_2 = A0_2.buff_id
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.ParamList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = #L2_2
    L7_2 = L7_2 + 1
    L8_2 = L1_2.ParamList
    L8_2 = L8_2[L6_2]
    L9_2 = L8_2
    L8_2 = L8_2.ToFloat
    L8_2 = L8_2(L9_2)
    L2_2[L7_2] = L8_2
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetBuffRelatedTelevisionData
  L5_2 = A0_2.buff_id
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.MazeBuffMulList
  L5_2 = 0
  L6_2 = L4_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[L8_2]
    L10_2 = L4_2[L8_2]
    L10_2 = L2_2[L10_2]
    L11_2 = A0_2.buff_count
    L10_2 = L10_2 * L11_2
    L2_2[L9_2] = L10_2
  end
  L5_2 = A0_2.short_desc
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_buff_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L1_2.BuffSimpleDesc
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_buff_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L1_2.BuffDesc
    L8_2 = unpack
    L9_2 = L2_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1.refresh_maze_buff_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.short_desc
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_buff_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.level_row
    L3_2 = L3_2.BuffShortDesc
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.create_lua_table_from_cs_array
    L2_2 = A0_2.level_row
    L2_2 = L2_2.ParmList
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_buff_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2.level_row
    L4_2 = L4_2.BuffDesc
    L5_2 = table
    L5_2 = L5_2.unpack
    L6_2 = L1_2
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1.refresh_level_buff_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_extra_effect
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_option_enabled
  L3_2 = A0_2.interactable
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._has_extra_effect
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ExtraEffectExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2.level_row
    L2_2 = L2_2.ExtraEffectID
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_detail_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.ExtraEffectName
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_detail_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.ExtraEffectDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = L1_2.DescParamList
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._setup_buff_extra_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._detail_callback
  if L1_2 then
    L1_2 = A0_2._detail_callback
    L2_2 = A0_2._detail_callback_listener
    L3_2 = A0_2.buff_id
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2.show_detail
  L1_2 = not L1_2
  A0_2.show_detail = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.show_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_up_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.show_detail
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_down_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.show_detail
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_detail = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_option_enabled
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_in_control_option_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_deselect = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.in_control_btn_detail
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_btn_detail
  L2_2.IsShowTip = A1_2
end
L0_1.set_in_control_option_enabled = L2_1
return L0_1
