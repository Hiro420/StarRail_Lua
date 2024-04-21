local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Friend.FriendBattleRecordTagPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FriendBattleRecordTagPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = "UI/Atlas/AtlasRoot/Common/Icon/IconAbyss.png"
L3_1 = "UI/Atlas/AtlasRoot/Common/Icon/IconRogueData.png"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.FriendModule
  L3_2 = L2_2
  L2_2 = L2_2.TryGetFriendBriefData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.IsShowBattleRecord
    if L3_2 then
      goto lbl_19
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_19::
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.show_shielded_icon
  L4_2 = A1_2.IsLocalPlayer
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.IsLocalPlayer
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_by_local_player
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_view
    L4_2 = A1_2.UID
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_view_by_board_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_shielded
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_shielded_icon = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.GetBattleRecordType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.IJICNOMKDKC
  L3_2 = L3_2.JCEPJPKKCFM
  if L2_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.GetBattleRecordValue
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.IJICNOMKDKC
  L4_2 = L4_2.OCNKGJFGKHA
  if L2_2 == L4_2 then
    L5_2 = A1_2
    L4_2 = A1_2.GetBattleRecordChallengeStarNum
    L4_2 = L4_2(L5_2)
    L6_2 = A0_2
    L5_2 = A0_2._setup_challenge_record
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._setup_stars
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  else
    L4_2 = CS
    L4_2 = L4_2.IJICNOMKDKC
    L4_2 = L4_2.CKPJKNKAJKB
    if L2_2 == L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._setup_rogue_record
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.DisplayRecordType
  L3_2 = CS
  L3_2 = L3_2.IJICNOMKDKC
  L3_2 = L3_2.OCNKGJFGKHA
  if L2_2 == L3_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetChallengeRecordData
    L4_2 = A1_2.UID
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = L2_2.HasRecord
      if L3_2 then
        goto lbl_23
      end
    end
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    do return end
    ::lbl_23::
    L4_2 = A0_2
    L3_2 = A0_2._setup_challenge_record
    L5_2 = L2_2.CurrentProgressCount
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_stars
    L5_2 = L2_2.ChallengeStarCount
    L3_2(L4_2, L5_2)
  else
    L2_2 = A1_2.DisplayRecordType
    L3_2 = CS
    L3_2 = L3_2.IJICNOMKDKC
    L3_2 = L3_2.CKPJKNKAJKB
    if L2_2 == L3_2 then
      L2_2 = L1_1
      L3_2 = L2_2
      L2_2 = L2_2.GetRogueRecordData
      L4_2 = A1_2.UID
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= nil then
        L3_2 = L2_2.AreaID
        if L3_2 ~= 0 then
          goto lbl_49
        end
      end
      L4_2 = A0_2
      L3_2 = A0_2.safe_set_active
      L5_2 = false
      L3_2(L4_2, L5_2)
      do return end
      ::lbl_49::
      L4_2 = A0_2
      L3_2 = A0_2._setup_rogue_record
      L5_2 = L2_2.AreaID
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.safe_set_active
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A1_2.DisplayRecord
  if L2_2 then
    L2_2 = "UI/Atlas/AtlasRoot/Common/Icon/IconHideFill.png"
    if L2_2 then
      goto lbl_63
    end
  end
  L2_2 = "UI/Atlas/AtlasRoot/Common/Icon/IconDisplay.png"
  ::lbl_63::
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_shielded
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._refresh_by_local_player = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_difficulty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_stars
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L2_1
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_record_val
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_challenge_record = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueAreaConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_difficulty
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_stars
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon
    L6_2 = L3_1
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_value
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetRomanNumberTextID
    L6_2 = L2_2.Difficulty
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_difficulty
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2.AreaProgress
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_rogue_record = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 < 10 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_value
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = "0"
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_value
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_record_val = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_active_stars
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L5_2 <= A1_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_active_stars
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_unactive_stars
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = not L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_stars = L4_1
return L0_1
