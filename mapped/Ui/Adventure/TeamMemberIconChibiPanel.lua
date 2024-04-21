local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Adventure.TeamMemberIconChibiPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Buff.BuffIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Buff.BuffIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.TeamBuffDetailDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamMemberIconChibiPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = "UltraSPInfo_Max_Maze"
L3_1 = "UltraSPInfo_InCharge"
L4_1 = "UltraSPInfo_Increase"
L5_1 = 0.5
L6_1 = 128
L7_1 = 200
L8_1 = CS
L8_1 = L8_1.UnityEngine
L8_1 = L8_1.Vector3
L8_1 = L8_1.zero
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level_up_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideLoadingPage
  L4_2 = L0_1._on_hide_loading_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeRefreshCharacterHP
  L4_2 = L0_1._on_refresh_character_hp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerInfoChanged
  L4_2 = L0_1._refresh_name
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetHeroBasicType
  L4_2 = L0_1._refresh_hero
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2.on_button_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2.on_button_hold
  L1_2(L2_2, L3_2, L4_2)
  A0_2._old_hp = nil
  A0_2._old_sp = nil
  A0_2.HP_RED_RATIO = 0.3
  A0_2.active_time = -1
  A0_2.callback_owner = nil
  A0_2.disable_callback = nil
  A0_2.switch_cooldown = 0.5
end
L0_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  A0_2._data = nil
  L2_2 = A0_2
  L1_2 = A0_2._remove_tick
  L1_2(L2_2)
end
L0_1._on_dispose = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  A0_2._old_data = L2_2
  A0_2._data = A1_2
  L2_2 = A0_2._data
  if L2_2 then
    L2_2 = A0_2._old_data
    if L2_2 ~= nil then
      L2_2 = A0_2._data
      L2_2 = L2_2.AvatarID
      L3_2 = A0_2._old_data
      L3_2 = L3_2.AvatarID
      if L2_2 == L3_2 then
        L2_2 = A0_2._old_data
        L2_2 = L2_2.AvatarType
        L3_2 = A0_2._data
        L3_2 = L3_2.AvatarType
        if L2_2 == L3_2 then
          L2_2 = A0_2._data
          L2_2 = L2_2.AvatarData
          L2_2 = L2_2.ProfessionType
          L3_2 = A0_2._base_type
          if L2_2 == L3_2 then
            L2_2 = A0_2._data
            L2_2 = L2_2.AvatarData
            L2_2 = L2_2.DressedSkinID
            L3_2 = A0_2._skin_id
            if L2_2 == L3_2 then
              goto lbl_36
            end
          end
        end
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2.setup_new_avatar
    L2_2(L3_2)
    ::lbl_36::
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_alive
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_clickable
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_hp
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_ultra_skill_icon
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_sp
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_leader_hint
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_show_heal_effect
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_buff
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._old_data = nil
end
L0_1.setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.AvatarData
    L1_2 = L1_2.IsHero
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.setup_new_avatar
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_ultra_skill_icon
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2._setup_sp
      L1_2(L2_2)
    end
  end
end
L0_1._refresh_hero = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
end
L0_1._refresh_name = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.ProfessionType
  A0_2._base_type = L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.DressedSkinID
  A0_2._skin_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L4_2 = A0_2._data
  L4_2 = L4_2.AvatarID
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_leader_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_portrait
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_trial
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_key_info
  L1_2(L2_2)
end
L0_1.setup_new_avatar = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_sp
  L2_2(L3_2)
end
L0_1.refresh_sp = L9_1
function L9_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.long_press_event
  L2_2.Interactable = A1_2
end
L0_1.set_long_press_interactable = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._data
  A0_2._old_data = L2_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_clickable
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_hp
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_show_heal_effect
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_alive
  L2_2(L3_2)
  A0_2._old_data = nil
end
L0_1.refresh_hp = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLeader
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_clickable = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = A0_2._data
  L4_2 = L4_2.AvatarData
  L4_2 = L4_2.AdvDefaultAvatarHeadIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_portrait = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsAlive
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_icon
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#6F6F6F"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_icon
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = "#FFFFFF"
    L2_2 = L2_2(L3_2)
    L1_2.color = L2_2
  end
end
L0_1._setup_alive = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.IsHero
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._data
    L3_2 = L3_2.AvatarData
    L3_2 = L3_2.AvatarName
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.AvatarData
    L3_2 = L3_2.Row
    L3_2 = L3_2.AvatarName
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_name = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.leader_mark
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  L2_2 = A0_2._data
  L2_2 = L2_2.IsLeader
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.member_mark
    L1_2 = L1_2.gameObject
    L1_2 = L1_2.activeSelf
    L2_2 = A0_2._data
    L2_2 = L2_2.IsLeader
    if L1_2 ~= L2_2 then
      return
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.leader_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsLeader
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.member_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsLeader
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLeader
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.leader_effect1
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.leader_effect2
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
  end
end
L0_1._setup_leader_hint = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.LeftHPRatio
  L2_2 = L1_2
  L1_2 = L1_2.ToFloat
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._old_data
  if L2_2 ~= nil then
    L2_2 = A0_2._old_data
    L2_2 = L2_2.AvatarID
    L3_2 = A0_2._data
    L3_2 = L3_2.AvatarID
    if L2_2 == L3_2 then
      L2_2 = A0_2._old_data
      L2_2 = L2_2.AvatarType
      L3_2 = A0_2._data
      L3_2 = L3_2.AvatarType
      if L2_2 == L3_2 then
        goto lbl_26
      end
    end
    A0_2._old_hp = L1_2
    return
  end
  ::lbl_26::
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.gameObject
    L2_2 = L2_2.activeInHierarchy
    if L2_2 ~= false then
      goto lbl_41
    end
  end
  L2_2 = A0_2._old_hp
  if L2_2 == nil then
    A0_2._old_hp = L1_2
  end
  do return end
  ::lbl_41::
  L2_2 = A0_2._old_hp
  if L2_2 ~= nil then
    L2_2 = A0_2._old_hp
    if L1_2 > L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.show_heal_effect
      L2_2(L3_2)
    end
  end
  A0_2._old_hp = L1_2
end
L0_1._try_show_heal_effect = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_heal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_heal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.show_heal_effect = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.LeftHPRatio
  L2_2 = L1_2
  L1_2 = L1_2.ToFloat
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_hp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_hp_danger
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.HP_RED_RATIO
  if L1_2 > L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_hp
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_hp
    L2_2.fillAmount = L1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_hp
    L2_2.bgAmount = L1_2
  else
    L2_2 = A0_2.HP_RED_RATIO
    if L1_2 <= L2_2 and 0 < L1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.img_hp_danger
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetLightWeightActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.img_hp_danger
      L2_2.fillAmount = L1_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.img_hp_danger
      L2_2.bgAmount = L1_2
    end
  end
end
L0_1._setup_hp = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.UltraSkillType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarSpecialUltraType
  L2_2 = L2_2.Normal
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal_sp_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_special_sp_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_normal_sp
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_special_sp
    L2_2(L3_2)
  end
end
L0_1._setup_sp = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_current_sp_ratio
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_maxsp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 1 <= L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_nature
  L3_2 = L2_2
  L2_2 = L2_2.IsPlaying
  L4_2 = L4_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
  else
    L2_2 = A0_2._old_sp
    if L2_2 ~= nil then
      L2_2 = A0_2._old_sp
      if L1_2 > L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._play_sp_increase
        L2_2(L3_2)
    end
    elseif 1 <= L1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_nature
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L2_1
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.img_sp_icon_ultra_on
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetAlpha
      L4_2 = L7_1
      L4_2 = L4_2 / 255
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_nature
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L3_1
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.img_sp_icon
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetAlpha
      L4_2 = L6_1
      L4_2 = L4_2 / 255
      L2_2(L3_2, L4_2)
    end
  end
  A0_2._old_sp = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.progress_sp
  L2_2.fillAmount = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.outline_progress
  L2_2.fillAmount = L1_2
end
L0_1._setup_normal_sp = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._special_sp_object
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.sync_load_prefab
    L3_2 = A0_2._data
    L3_2 = L3_2.AvatarData
    L3_2 = L3_2.UltraSkillConfig
    L3_2 = L3_2.UltraSkillResourcePath
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_special_sp_icon
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._special_sp_object = L1_2
  end
end
L0_1._setup_special_sp = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.LeftSPRatio
  L2_2 = L1_2
  L1_2 = L1_2.ToFloat
  return L1_2(L2_2)
end
L0_1.get_current_sp_ratio = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._data
  L1_2 = L1_2.AvatarRow
  L2_2 = L1_2.SkillList
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AttackType
  L3_2 = L3_2.Ultra
  L4_2 = 1
  L5_2 = 0
  L6_2 = L2_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_2[L8_2]
    L10_2 = A0_2._old_skill_id
    if L9_2 == L10_2 then
      break
    end
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.AvatarSkillExcelTable
    L9_2 = L9_2.GetData
    L10_2 = L2_2[L8_2]
    L11_2 = L4_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2.AttackType
    if L10_2 == L3_2 then
      L11_2 = A0_2
      L10_2 = A0_2._async_load_sprite_to
      L12_2 = A0_2._binder
      L12_2 = L12_2.img_sp_icon
      L13_2 = L9_2.SkillIcon
      L10_2(L11_2, L12_2, L13_2)
      L11_2 = A0_2
      L10_2 = A0_2._async_load_sprite_to
      L12_2 = A0_2._binder
      L12_2 = L12_2.img_sp_icon_ultra_on
      L13_2 = L9_2.SkillIcon
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = L2_2[L8_2]
      A0_2._old_skill_id = L10_2
      break
    end
  end
  L5_2 = A0_2._old_data
  if L5_2 then
    L5_2 = A0_2._old_data
    L5_2 = L5_2.AvatarRow
    L5_2 = L5_2.DamageType
    L6_2 = L1_2.DamageType
    if L5_2 == L6_2 then
      return
    end
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.DamageTypeExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L1_2.DamageType
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.progress_sp
  L7_2 = G
  L7_2 = L7_2.UIColorUtils
  L7_2 = L7_2.GetColorWithAlpha
  L8_2 = L5_2.UnfullColor
  L9_2 = A0_2._binder
  L9_2 = L9_2.progress_sp
  L9_2 = L9_2.color
  L9_2 = L9_2.a
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.color = L7_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.outline_progress
  L7_2 = G
  L7_2 = L7_2.UIColorUtils
  L7_2 = L7_2.GetColorWithAlpha
  L8_2 = L5_2.Color
  L9_2 = A0_2._binder
  L9_2 = L9_2.img_maxsp
  L9_2 = L9_2.color
  L9_2 = L9_2.a
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.color = L7_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_maxsp
  L7_2 = G
  L7_2 = L7_2.UIColorUtils
  L7_2 = L7_2.GetColorWithAlpha
  L8_2 = L5_2.Color
  L9_2 = A0_2._binder
  L9_2 = L9_2.img_maxsp
  L9_2 = L9_2.color
  L9_2 = L9_2.a
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.color = L7_2
end
L0_1._setup_ultra_skill_icon = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_nature
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_play_sp_increase_end
  L4_2 = L5_1
  L5_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._sp_increase_timer = L1_2
  L1_2 = A0_2._sp_increase_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._sp_increase_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._play_sp_increase = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._old_sp
  if 1 <= L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_nature
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_sp_icon_ultra_on
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetAlpha
    L3_2 = L7_1
    L3_2 = L3_2 / 255
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_nature
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_sp_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetAlpha
    L3_2 = L6_1
    L3_2 = L3_2 / 255
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_play_sp_increase_end = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._data
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_buff = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_avatar_data_by_member_data
  L2_2 = A0_2._data
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.IsTrialPlayer
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_trial_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = G
    L4_2 = L4_2.AvatarUtils
    L4_2 = L4_2.get_special_avatar_hint
    L5_2 = L1_2
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_trial_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.IsTrialPlayer
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_support_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.IsAssistAvatar
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_story_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.IsPlotTrialPlayer
  L2_2(L3_2, L4_2)
end
L0_1._setup_trial = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  L1_2 = L1_2.AvatarType
  L2_2 = CS
  L2_2 = L2_2.FKFMOOPNDPC
  L2_2 = L2_2.CLLJCANHNGL
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._data
  L2_2 = L2_2.AvatarType
  L3_2 = CS
  L3_2 = L3_2.FKFMOOPNDPC
  L3_2 = L3_2.CIDNDHIOMDK
  L2_2 = L2_2 == L3_2
  if L1_2 or L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_level_up_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAvatar
  L5_2 = A0_2._data
  L5_2 = L5_2.AvatarID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.LevelUpedBeforeData
  L6_2 = L3_2
  L5_2 = L3_2.ClearLevelUpBeforData
  L5_2(L6_2)
  if L4_2 ~= nil then
    L5_2 = L3_2.Level
    L6_2 = L4_2.LevelBefore
    if not (L5_2 <= L6_2) then
      goto lbl_49
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_level_up_hint
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  do return end
  ::lbl_49::
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_pre_level
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2.LevelBefore
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_next_level
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L3_2.Level
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_level_up_hint
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.animation_event
  L6_2 = L5_2
  L5_2 = L5_2.AddAnimationEvent
  L7_2 = "TeamMemberLevelUpHint"
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_level_up_hint
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.anim_level_up_hint
  L6_2 = L5_2
  L5_2 = L5_2.Play
  L7_2 = "TeamMemberLevelUpHint"
  L5_2(L6_2, L7_2)
end
L0_1.setup_levelup = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetIndexByAvatarID
  L4_2 = A0_2._data
  L4_2 = L4_2.AvatarID
  L2_2 = L2_2(L3_2, L4_2)
  if 0 < L2_2 then
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "Menu_SwitchAvatar%s"
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.mono_in_control_tip
    L5_2 = L4_2
    L4_2 = L4_2.SetInControlTipKey
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.mono_in_control_button
    L5_2 = L4_2
    L4_2 = L4_2.SetActionName
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_key_info = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._data
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.setup_levelup
      L1_2(L2_2)
    end
  end
end
L0_1._on_hide_loading_page = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._data
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._try_show_heal_effect
      L1_2(L2_2)
    end
  end
end
L0_1._on_refresh_character_hp = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2._btn_listener = A1_2
  A0_2._btn_on_click = A2_2
end
L0_1.bind_click_button = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.IsCanChangeLineupLeader
  L1_2 = L1_2(L2_2)
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Raid_Toast_Captain"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._btn_listener
  if L1_2 ~= nil then
    L1_2 = A0_2._btn_on_click
    if L1_2 ~= nil then
      L1_2 = A0_2._btn_on_click
      L2_2 = A0_2._btn_listener
      L3_2 = A0_2._data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.on_button_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.GetSnapShotOrSelf
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Maze.MazeBuff.TeamBuffDetailDialog"
  L4_2 = true
  L5_2 = A0_2._data
  L5_2 = L5_2.AvatarID
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.on_button_hold = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.active_time
  if 0 < L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.alpha_root
  L1_2.alpha = 0.5
  L1_2 = A0_2._binder
  L1_2 = L1_2.custom_button
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2.active_time = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.cool_node
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.on_character_switch = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.active_time
  if L2_2 < 0 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = A0_2.active_time
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.switch_cooldown
  if L2_2 >= L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.cool_node
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.alpha_root
    L2_2.alpha = 1.0
    L2_2 = A0_2._binder
    L2_2 = L2_2.custom_button
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = true
    L2_2(L3_2, L4_2)
    A0_2.active_time = -1
    L3_2 = A0_2
    L2_2 = A0_2._remove_tick
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.cool_down_progressbar
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Time
    L3_2 = L3_2.time
    L4_2 = A0_2.active_time
    L3_2 = L3_2 - L4_2
    L4_2 = A0_2.switch_cooldown
    L3_2 = L3_2 / L4_2
    L2_2.fillAmount = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.cooldown_text
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "%.1f"
    L6_2 = A0_2.switch_cooldown
    L7_2 = A0_2.active_time
    L6_2 = L6_2 + L7_2
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Time
    L7_2 = L7_2.time
    L6_2 = L6_2 - L7_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._on_tick = L9_1
function L9_1(A0_2, A1_2, A2_2)
  A0_2.callback_owner = A1_2
  A0_2.disable_callback = A2_2
end
L0_1.register_disable_callback = L9_1
return L0_1
