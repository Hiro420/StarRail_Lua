local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PunkLordModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueCommonExcelTable
L1_1 = L1_1.GetData
L2_1 = "PunkLord_Battle_Count"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.IntValue
L2_1 = "UIText_ActivityPunkLord_Main_BattleLimit_Label"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.PunkLordModule
L3_1 = L3_1.PunkLordSupportItemConfigID
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.ItemExcelTable
L4_1 = L4_1.GetData
L5_1 = L3_1
L4_1 = L4_1(L5_1)
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueCommonExcelTable
L5_1 = L5_1.GetData
L6_1 = "PunkLord_PowerAttack_Cost_Num"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.IntValue
L6_1 = "UIText_ActivityPunkLord_Main_ShareFriend_StateButton"
L7_1 = "UIText_ActivityPunkLord_Main_ShareAll_StateButton"
L8_1 = G
L8_1 = L8_1.Class
L9_1 = "PunkLordControlPanel"
L10_1 = G
L10_1 = L10_1.BasePanel
L8_1 = L8_1(L9_1, L10_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game_pad_switch
  L4_2 = A0_2._on_game_pad_btn_switch
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch_normal_attack
  L4_2 = A0_2._on_switch_normal_attack
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_switch_power_attack
  L4_2 = A0_2._on_switch_power_attack
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_share
  L4_2 = A0_2._on_btn_share
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_collect
  L4_2 = A0_2._on_btn_collect
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_toggle_collect
  L4_2 = A0_2._on_btn_toggle_collect
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2._on_photo_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L8_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2
  A0_2._data = nil
end
L8_1._on_dispose = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._data = A1_2
  L3_2 = A0_2._data
  L3_2 = L3_2.CurHP
  L3_2 = L3_2 == 0
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_for_collect
    L4_2(L5_2)
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_confirm
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_btn_collect
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_share
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = false
  end
  A0_2._is_multi_damage = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_share_state
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_confirm_btn
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_switch_btn
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_monster_weakness
  L6_2 = A1_2.MonsterRow
  L4_2(L5_2, L6_2)
end
L8_1.setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_collect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_share
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_share_state
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mine_share
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._is_collect_all_point = false
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllPunkLordTotalScoreCanTake
  L1_2 = L1_2(L2_2)
  A0_2._all_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_collect
  L1_2(L2_2)
end
L8_1._setup_for_collect = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.StanceWeakList
  L3_2 = {}
  L4_2 = 0
  L5_2 = L2_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L3_2
    L10_2 = L2_2[L7_2]
    L8_2(L9_2, L10_2)
  end
  A0_2._monster_weakness_tb = L3_2
end
L8_1._setup_monster_weakness = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsGenBySystem
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_share
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_share_state
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_mine_share
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.PunkLordUtils
    L1_2 = L1_2.get_gm_nickname_and_head_icon_path
    L1_2, L2_2 = L1_2()
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_share_name
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_player_photo
    L4_2 = L3_2
    L3_2 = L3_2.setup_icon_path
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_player_photo
    L4_2 = L3_2
    L3_2 = L3_2.set_interactable
    L5_2 = true
    L3_2(L4_2, L5_2)
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.IsShared
  L2_2 = A0_2._data
  L2_2 = L2_2.SummonPlayerUID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.PlayerModule
  L3_2 = L3_2.PlayerData
  L3_2 = L3_2.UserID
  L2_2 = L2_2 ~= L3_2
  if L1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_share
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_share_state
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mine_share
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not L2_2
    L3_2(L4_2, L5_2)
    if L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_share_name
      L4_2 = L3_2
      L3_2 = L3_2.SetCustomizedText
      L5_2 = ""
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.panel_player_photo
      L4_2 = L3_2
      L3_2 = L3_2.set_interactable
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = G
      L3_2 = L3_2.PunkLordUtils
      L3_2 = L3_2.get_user_nickname_and_head_icon_id_promise
      L4_2 = A0_2._data
      L4_2 = L4_2.SummonPlayerUID
      L5_2 = A0_2._async_setup_name_and_player_photo
      L6_2 = A0_2
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = A0_2._data
      L3_2 = L3_2.ShareType
      L4_2 = CS
      L4_2 = L4_2.NNKBDGPHENE
      L4_2 = L4_2.GHDMKBABPCB
      if L3_2 == L4_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.text_share_desc
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = L6_1
        L3_2(L4_2, L5_2)
      else
        L3_2 = A0_2._binder
        L3_2 = L3_2.text_share_desc
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = L7_1
        L3_2(L4_2, L5_2)
      end
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_share
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_share_state
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mine_share
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L8_1._setup_share_state = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 ~= nil then
    L3_2 = A0_2._binder
    if L3_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  if A1_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_share_name
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_share_name
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = ""
    L3_2(L4_2, L5_2)
  end
  if A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_player_photo
    L4_2 = L3_2
    L3_2 = L3_2.setup_view_by_id
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_player_photo
    L4_2 = L3_2
    L3_2 = L3_2.set_interactable
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
end
L8_1._async_setup_name_and_player_photo = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_consume
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_assist
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.SummonPlayerUID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.UserID
  L1_2 = L1_2 ~= L2_2
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_confirm
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityPunkLord_Main_BattleAssistStart_Button"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_confirm
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityPunkLord_Main_BattleStart_Button"
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon_assist
  L5_2 = L4_1.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = 1
  L3_2 = A0_2._is_multi_damage
  if L3_2 then
    L2_2 = L5_1
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_consume
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L8_1._setup_confirm_btn = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_switch_normal_attack
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_multi_damage
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_switch_power_attack
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._is_multi_damage
  L1_2(L2_2, L3_2)
end
L8_1._setup_switch_btn = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_multi_damage
  L1_2 = not L1_2
  A0_2._is_multi_damage = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_switch_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn
  L1_2(L2_2)
end
L8_1._on_game_pad_btn_switch = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  A0_2._is_multi_damage = false
  L2_2 = A0_2
  L1_2 = A0_2._setup_switch_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn
  L1_2(L2_2)
end
L8_1._on_switch_normal_attack = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  A0_2._is_multi_damage = true
  L2_2 = A0_2
  L1_2 = A0_2._setup_switch_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn
  L1_2(L2_2)
end
L8_1._on_switch_power_attack = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._is_multi_damage
  if L2_2 then
    L1_2 = L5_1
  end
  L2_2 = L0_1.SupportLeftTimes
  if L1_2 > L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_PunkLord_Bullet_NoEnough"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.WorldLevel
  L3_2 = A0_2._data
  L3_2 = L3_2.WorldLv
  if L3_2 == L2_2 then
    L5_2 = A0_2
    L4_2 = A0_2._show_team_edit
    L4_2(L5_2)
  else
    L4_2 = "UIText_PunkLord_HighLevel_Attack_Tips"
    if L2_2 > L3_2 then
      L5_2 = L3_2 + 1
      if L2_2 > L5_2 then
        L4_2 = "UIText_PunkLord_VeryLowLevel_Attack_Tips"
      else
        L4_2 = "UIText_PunkLord_LowLevel_Attack_Tips"
      end
    end
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.ConfirmDialogUtil
    L5_2 = L5_2.ShowOkCancelHint
    L6_2 = L4_2
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.TextID
    L7_2 = L7_2.empty
    function L8_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3._show_team_edit
        L1_3(L2_3)
      end
    end
    L5_2(L6_2, L7_2, L8_2)
  end
end
L8_1._on_btn_confirm = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.FarmEnemy.FarmTeamEditPage"
  L3_2 = A0_2._on_enter_raid
  L4_2 = A0_2
  L5_2 = {}
  L6_2 = false
  L7_2 = true
  L8_2 = A0_2._monster_weakness_tb
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L8_1._show_team_edit = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SetAutoShowOnExitPunkLord
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.EnterRaid
  L3_2 = A0_2._data
  L4_2 = A0_2._is_multi_damage
  L1_2(L2_2, L3_2, L4_2)
end
L8_1._on_enter_raid = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordShareOptionsDialog"
  L3_2 = A0_2._on_share_option_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L8_1._on_btn_share = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    if A2_2 then
      L3_2 = L0_1
      L4_2 = L3_2
      L3_2 = L3_2.Share
      L5_2 = A0_2._data
      L6_2 = CS
      L6_2 = L6_2.NNKBDGPHENE
      L6_2 = L6_2.GHDMKBABPCB
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = L0_1
      L4_2 = L3_2
      L3_2 = L3_2.Share
      L5_2 = A0_2._data
      L6_2 = CS
      L6_2 = L6_2.NNKBDGPHENE
      L6_2 = L6_2.EMPKBEAHHGA
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L8_1._on_share_option_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.CurHP
    L1_2 = A0_2._data
    L1_2 = L1_2.IsTakenScore
    L1_2 = L1_2 == 0 and L1_2
    if L1_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_NetworkManager
      L3_2 = L2_2
      L2_2 = L2_2.DBKDOGMLGDM
      L4_2 = A0_2._data
      L4_2 = L4_2.SummonPlayerUID
      L5_2 = A0_2._data
      L5_2 = L5_2.ServerID
      L6_2 = A0_2._is_collect_all_point
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L8_1._on_btn_collect = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_collect_all_point
  L1_2 = not L1_2
  A0_2._is_collect_all_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_collect
  L1_2(L2_2)
end
L8_1._on_btn_toggle_collect = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._all_point
  L2_2 = A0_2._data
  L2_2 = L2_2.TotalScore
  L1_2 = L1_2 > L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_toggle_collect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_toggle_collect
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A0_2._is_collect_all_point
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_extra_point
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = A0_2._is_collect_all_point
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._all_point
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalScore
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_extra_point
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = "+"
  L6_2 = L2_2
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
end
L8_1._refresh_collect = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsGenBySystem
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.UIPileToastMessageTextID
      L3_2 = "UIText_ActivityPunkLord_GameMaster_Access_Tips"
      L1_2(L2_2, L3_2)
      return
    end
    L1_2 = G
    L1_2 = L1_2.FriendUtils
    L1_2 = L1_2.show_friend_detail_info
    L2_2 = A0_2._data
    L2_2 = L2_2.SummonPlayerUID
    L1_2(L2_2)
  end
end
L8_1._on_photo_click = L9_1
function L9_1(A0_2, A1_2)
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
L8_1._on_select_option = L9_1
function L9_1(A0_2)
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
L8_1._report_enter_player_detail = L9_1
return L8_1
