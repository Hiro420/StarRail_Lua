local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubBuffPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubBuffPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AttackDamageType
L2_1 = L2_1.Physical
L1_1[L2_1] = "#b3adad"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AttackDamageType
L2_1 = L2_1.Fire
L1_1[L2_1] = "#f84f36"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AttackDamageType
L2_1 = L2_1.Ice
L1_1[L2_1] = "#47c7fd"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AttackDamageType
L2_1 = L2_1.Thunder
L1_1[L2_1] = "#df54ff"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AttackDamageType
L2_1 = L2_1.Wind
L1_1[L2_1] = "#46de9d"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AttackDamageType
L2_1 = L2_1.Quantum
L1_1[L2_1] = "#6e67d0"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.AttackDamageType
L2_1 = L2_1.Imaginary
L1_1[L2_1] = "#ffeb61"
function L2_1(A0_2)
  local L1_2
  A0_2._is_selected = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
    L0_3 = A0_2._is_selected
    if not L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_btn_root
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.update_key_map_info
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.update_key_map_info
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.buff_id = A1_2
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.GetMazeBuffData
  L3_2 = A0_2.buff_id
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._mazebuff_row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BoxingBreakBuffSelectConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2.buff_id
  L2_2 = L2_2(L3_2)
  A0_2._boxing_club_buff_row = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BoxingClubNatureConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._boxing_club_buff_row
  L3_2 = L3_2.BoxingClubNatureType
  L2_2 = L2_2(L3_2)
  A0_2._boxing_club_nature_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_buff_name
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_img
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_glow
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = A0_2._boxing_club_buff_row
  L4_2 = L4_2.BoxingClubNatureType
  L4_2 = L1_1[L4_2]
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_selected_glow
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = A0_2._boxing_club_buff_row
  L4_2 = L4_2.BoxingClubNatureType
  L4_2 = L1_1[L4_2]
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_buff_desc
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._btn_root_callback = A1_2
  A0_2._btn_root_callback_self = A2_2
end
L0_1.register_btn_root_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_selected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.transform
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_btn_gameobject = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_roll_read
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._is_selected
    if L3_2 then
      L3_2 = G
      L3_2 = L3_2.Utils
      L3_2 = L3_2.is_gamepad_input
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.scroll_rect_desc
        L4_2 = L3_2
        L3_2 = L3_2.CanScroll
        L3_2 = L3_2(L4_2)
      end
    end
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_show_detail
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._is_selected
    if L3_2 then
      L3_2 = G
      L3_2 = L3_2.Utils
      L3_2 = L3_2.is_gamepad_input
      L3_2 = L3_2()
      if L3_2 then
        L3_2 = A0_2._boxing_club_buff_row
        L3_2 = L3_2.ExtraEffectIDList
        L3_2 = L3_2.Length
        L3_2 = 0 < L3_2
      end
    end
    L1_2(L2_2, L3_2)
  end
end
L0_1.update_key_map_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.update_key_map_info
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_move_desc
  L2_2.ActionEnabled = A1_2
end
L0_1.enable_mono_in_control_move = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_buff_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._mazebuff_row
  L3_2 = L3_2.BuffName
  L1_2(L2_2, L3_2)
end
L0_1._setup_buff_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.BoxingClubResonanceShowBuffShortDesc
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_buff_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._mazebuff_row
    L3_2 = L3_2.BuffSimpleDesc
    L4_2 = G
    L4_2 = L4_2.UITextUtils
    L4_2 = L4_2.GetSkillParams
    L5_2 = A0_2._mazebuff_row
    L5_2 = L5_2.ParamList
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_buff_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._mazebuff_row
    L3_2 = L3_2.BuffDesc
    L4_2 = G
    L4_2 = L4_2.UITextUtils
    L4_2 = L4_2.GetSkillParams
    L5_2 = A0_2._mazebuff_row
    L5_2 = L5_2.ParamList
    L4_2, L5_2 = L4_2(L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.update_key_map_info
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1.setup_buff_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_buff_icon
  L4_2 = A0_2._boxing_club_nature_row
  L4_2 = L4_2.BoxingBuffIcon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_bg
  L4_2 = A0_2._boxing_club_nature_row
  L4_2 = L4_2.BoxingBuffBackground
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_buff_icon_bg
  L4_2 = A0_2._boxing_club_nature_row
  L4_2 = L4_2.BoxingBuffIconBackground
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_img = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_selected
  if L1_2 then
    L1_2 = A0_2._boxing_club_buff_row
    L1_2 = L1_2.ExtraEffectIDList
    L1_2 = L1_2.Length
    if 0 < L1_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_async_show
      L2_2 = "Ui.Common.ExtraDesc.ExtraDescListDialog"
      L3_2 = A0_2._boxing_club_buff_row
      L3_2 = L3_2.ExtraEffectIDList
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2._btn_root_callback
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.invoke_callback
      L2_2 = A0_2._btn_root_callback
      L3_2 = A0_2._btn_root_callback_self
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_btn_root = L2_1
return L0_1
