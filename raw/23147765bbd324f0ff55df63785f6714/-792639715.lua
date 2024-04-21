local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritAtlasListItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
L2_1 = "AetherDivideMonsterAtlasCover_Unlock"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 ~= true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.ClearAnimationState
    L2_2(L3_2)
  end
end
L0_1.set_selected = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_click
  L1_2(L2_2)
end
L0_1.trigger_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.GetAnimationState
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_get_hint
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.length
  return L3_2
end
L0_1.get_anim_length = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_spirit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_spirit_silhouette
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_unlock = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_get_hint
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.UnSeenUnlockAnimAtlasSpiritIDs
  L2_2 = L1_2
  L1_2 = L1_2.Remove
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1.play_anim = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_btn = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._spirit_display_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._display_nodes
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.PlayToBegin
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_get_hint
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._spirit_display_data
  L1_2 = L1_2.Status
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_spirit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
  L4_2 = L4_2.Unlocked
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_spirit_silhouette
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
  L4_2 = L4_2.Unlocked
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_eff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._display_nodes = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._spirit_display_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AetherMonsterAvatarDisplayDataStatus
  L2_2 = L2_2.Unlocked
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_spirit_info
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_silhouette_info
    L2_2(L3_2)
  end
end
L0_1._setup_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AvatarName
  L1_2(L2_2, L3_2)
end
L0_1._setup_spirit_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "TalkSentenceName_8000187_Unknown"
  L1_2(L2_2, L3_2)
end
L0_1._setup_silhouette_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._spirit_display_data
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_btn_click = L3_1
return L0_1
