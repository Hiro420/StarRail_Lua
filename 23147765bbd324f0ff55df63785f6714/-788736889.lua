local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = "UIText_ActivityPunkLord_DamageRecord_NormalDamage_Text"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PunkLordDamageAttackInfoRowPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2._on_photo_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._battle_record = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._battle_record = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_name
  L4_2 = ""
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_loading_player_data
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.PunkLordUtils
  L2_2 = L2_2.get_user_nickname_and_head_icon_id_promise
  L3_2 = A1_2.Uid
  L4_2 = A0_2._async_setup_name_and_player_photo
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_damage
  L4_2 = A1_2.DamageHp
  L5_2 = A1_2.IsFinalHit
  L2_2(L3_2, L4_2, L5_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_loading
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._show_loading_player_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 ~= nil then
    L3_2 = A0_2._binder
    if L3_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L4_2 = A0_2
  L3_2 = A0_2._setup_name
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_player_photo
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._show_loading_player_data
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L1_1._async_setup_name_and_player_photo = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_player_photo
    L3_2 = L2_2
    L2_2 = L2_2.setup_view_by_id
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._battle_record
    L2_2 = L2_2.Uid
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.PlayerModule
    L3_2 = L3_2.PlayerData
    L3_2 = L3_2.UserID
    L2_2 = L2_2 == L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_player_photo
    L4_2 = L3_2
    L3_2 = L3_2.set_interactable
    L5_2 = not L2_2
    L3_2(L4_2, L5_2)
  end
end
L1_1._setup_player_photo = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = ""
    L2_2(L3_2, L4_2)
  end
end
L1_1._setup_name = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_damage
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_final_hit
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L1_1._setup_damage = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._battle_record
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.FriendUtils
    L1_2 = L1_2.show_friend_detail_info
    L2_2 = A0_2._battle_record
    L2_2 = L2_2.Uid
    L1_2(L2_2)
  end
end
L1_1._on_photo_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A1_2.Name
    L3_2 = G
    L3_2 = L3_2.FriendUtils
    L3_2 = L3_2.OptionNameTable
    L4_2 = G
    L4_2 = L4_2.FriendUtils
    L4_2 = L4_2.OptionList
    L4_2 = L4_2.DetailInfo
    L3_2 = L3_2[L4_2]
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._report_enter_player_detail
      L2_2(L3_2)
    end
  end
end
L1_1._on_select_option = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "EnterPlayerInfo"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._report_enter_player_detail = L2_1
return L1_1
