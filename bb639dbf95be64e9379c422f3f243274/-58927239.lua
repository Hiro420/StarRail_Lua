local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.BaseAvatarSelectStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.SingleAvatarSelectStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.MultipleAvatarSelectStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelect.ExpeditionMultipleAvatarSelectStrategy"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.PlayerUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "AvatarSelectStrategyBuilder"
L0_1 = L0_1(L1_1)
L1_1 = 4
function L2_1(A0_2)
  local L1_2
  L1_2 = SelectType
  L1_2 = L1_2.Multiple
  if A0_2 == L1_2 then
    L1_2 = L0_1.get_team_quick_edit_strategy
    return L1_2()
  else
    L1_2 = SelectType
    L1_2 = L1_2.RogueInit
    if A0_2 == L1_2 then
      L1_2 = L0_1.get_rogue_init_strategy
      return L1_2()
    else
      L1_2 = SelectType
      L1_2 = L1_2.RogueJoin
      if A0_2 == L1_2 then
        L1_2 = L0_1.get_rogue_join_strategy
        return L1_2()
      else
        L1_2 = SelectType
        L1_2 = L1_2.ChallengeAct
        if A0_2 == L1_2 then
          L1_2 = L0_1.get_challenge_act_team_edit_strategy
          return L1_2()
        else
          L1_2 = SelectType
          L1_2 = L1_2.Expedition
          if A0_2 == L1_2 then
            L1_2 = L0_1.get_expedition_avatar_team_strategy
            return L1_2()
          else
            L1_2 = SelectType
            L1_2 = L1_2.DisplayAvatar
            if A0_2 == L1_2 then
              L1_2 = L0_1.get_display_avatar_edit_strategy
              return L1_2()
            else
              L1_2 = SelectType
              L1_2 = L1_2.ActivityMultiple
              if A0_2 == L1_2 then
                L1_2 = L0_1.get_activity_multiple_strategy
                return L1_2()
              else
                L1_2 = L0_1.get_single_select_strategy
                return L1_2()
              end
            end
          end
        end
      end
    end
  end
end
L0_1.get_strategy = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.SingleAvatarSelectStrategy
  return L0_2(L1_2)
end
L0_1.get_single_select_strategy = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.MultipleAvatarSelectStrategy
  L0_2 = L0_2(L1_2)
  L1_2 = L1_1
  L0_2.max_selection = L1_2
  L2_2 = L0_2
  L1_2 = L0_2.add_unselect_check
  function L3_2(A0_3, A1_3)
    local L2_3
    L2_3 = A1_3.IsTrialPlayer
    L2_3 = not L2_3
    return L2_3
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPileToastMessageTextID
      L3_3 = "UITextmap_TeamEditPage_Toast_Unchange"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = L0_2
  L1_2 = L0_2.add_select_check
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = G
    L2_3 = L2_3.BaseAvatarSelectStrategy
    L2_3 = L2_3.get_first_vacancy_index
    L3_3 = A0_3
    L4_3 = L1_1
    L2_3 = L2_3(L3_3, L4_3)
    L2_3 = 0 ~= L2_3
    return L2_3
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPileToastMessageTextID
      L3_3 = "UITextmap_TeamEditPage_Toast_MaxCount"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = L0_2
  L1_2 = L0_2.add_select_check
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = G
    L2_3 = L2_3.BaseAvatarSelectStrategy
    L2_3 = L2_3.get_avatar_id_index
    L3_3 = A0_3
    L4_3 = A1_3.ID
    L5_3 = L1_1
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L2_3 = 0 ~= L2_3
    L3_3 = not L2_3
    return L3_3
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPileToastMessageTextID
      L3_3 = "UITextmap_TeamEditPage_Toast_SameAvatar"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  return L0_2
end
L0_1.get_team_quick_edit_strategy = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.MultipleAvatarSelectStrategy
  L0_2 = L0_2(L1_2)
  L1_2 = L1_1
  L0_2.max_selection = L1_2
  L2_2 = L0_2
  L1_2 = L0_2.add_select_check
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = G
    L2_3 = L2_3.BaseAvatarSelectStrategy
    L2_3 = L2_3.get_first_vacancy_index
    L3_3 = A0_3
    L4_3 = L1_1
    L2_3 = L2_3(L3_3, L4_3)
    L2_3 = 0 ~= L2_3
    return L2_3
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPileToastMessageTextID
      L3_3 = "UITextmap_TeamEditPage_Toast_MaxCount"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = L0_2
  L1_2 = L0_2.add_select_check
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = G
    L2_3 = L2_3.BaseAvatarSelectStrategy
    L2_3 = L2_3.get_avatar_id_index
    L3_3 = A0_3
    L4_3 = A1_3.ID
    L5_3 = L1_1
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L2_3 = 0 ~= L2_3
    L3_3 = not L2_3
    return L3_3
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPileToastMessageTextID
      L3_3 = "UITextmap_TeamEditPage_Toast_SameAvatar"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  return L0_2
end
L0_1.get_activity_multiple_strategy = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.MultipleAvatarSelectStrategy
  L0_2 = L0_2(L1_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.GetStartRogueAvatarMaxNumber
  L1_2 = L1_2()
  L0_2.max_selection = L1_2
  L2_2 = L0_2
  L1_2 = L0_2.add_select_check
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = G
    L2_3 = L2_3.BaseAvatarSelectStrategy
    L2_3 = L2_3.get_first_vacancy_index
    L3_3 = A0_3
    L4_3 = L0_2.max_selection
    L2_3 = L2_3(L3_3, L4_3)
    L2_3 = 0 ~= L2_3
    return L2_3
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPileToastMessageTextID
      L3_3 = "UITextmap_TeamEditPage_Toast_MaxCount"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = L0_2
  L1_2 = L0_2.add_select_check
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = G
    L2_3 = L2_3.BaseAvatarSelectStrategy
    L2_3 = L2_3.get_avatar_id_index
    L3_3 = A0_3
    L4_3 = A1_3.ID
    L5_3 = L0_2.max_selection
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L2_3 = 0 ~= L2_3
    L3_3 = not L2_3
    return L3_3
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPileToastMessageTextID
      L3_3 = "UITextmap_TeamEditPage_Toast_SameAvatar"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  return L0_2
end
L0_1.get_rogue_init_strategy = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = 1
  if A0_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.RogueModule
    L3_2 = L2_2
    L2_2 = L2_2.GetRoguePickAvatarMaxCount
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L2_2 = nil
  if L1_2 == 1 then
    L3_2 = G
    L3_2 = L3_2.new
    L4_2 = G
    L4_2 = L4_2.SingleAvatarSelectStrategy
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    L2_2.max_selection = 1
    function L3_2(A0_3, A1_3, A2_3)
      local L3_3
      L3_3 = A1_3[1]
      if L3_3 == A2_3 then
        A1_3[1] = nil
      end
      return A1_3
    end
    L2_2._do_unselect = L3_2
  else
    L3_2 = L0_1.get_rogue_init_strategy
    L3_2 = L3_2()
    L2_2 = L3_2
    L2_2.max_selection = L1_2
  end
  return L2_2
end
L0_1.get_rogue_join_strategy = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.MultipleAvatarSelectStrategy
  L0_2 = L0_2(L1_2)
  L0_2.max_selection = 4
  L2_2 = L0_2
  L1_2 = L0_2.add_select_check
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = G
    L2_3 = L2_3.BaseAvatarSelectStrategy
    L2_3 = L2_3.get_first_vacancy_index
    L3_3 = A0_3
    L4_3 = L0_2.max_selection
    L2_3 = L2_3(L3_3, L4_3)
    L2_3 = 0 ~= L2_3
    return L2_3
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPileToastMessageTextID
      L3_3 = "UITextmap_TeamEditPage_Toast_MaxCount"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  return L0_2
end
L0_1.get_challenge_act_team_edit_strategy = L2_1
function L2_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.ExpeditionMultipleAvatarSelectStrategy
  return L0_2(L1_2)
end
L0_1.get_expedition_avatar_team_strategy = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = G
  L0_2 = L0_2.new
  L1_2 = G
  L1_2 = L1_2.MultipleAvatarSelectStrategy
  L0_2 = L0_2(L1_2)
  L1_2 = G
  L1_2 = L1_2.PlayerUtils
  L1_2 = L1_2.display_avatar_max_count
  L0_2.max_selection = L1_2
  L2_2 = L0_2
  L1_2 = L0_2.add_select_check
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = G
    L2_3 = L2_3.BaseAvatarSelectStrategy
    L2_3 = L2_3.get_first_vacancy_index
    L3_3 = A0_3
    L4_3 = L0_2.max_selection
    L2_3 = L2_3(L3_3, L4_3)
    L2_3 = 0 ~= L2_3
    return L2_3
  end
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.NotifyManager
      L1_3 = L1_3.notify
      L2_3 = G
      L2_3 = L2_3.CS
      L2_3 = L2_3.NotifyType
      L2_3 = L2_3.UIPileToastMessageTextID
      L3_3 = "UIText_ShowAvatar_Max"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
  return L0_2
end
L0_1.get_display_avatar_edit_strategy = L2_1
return L0_1
