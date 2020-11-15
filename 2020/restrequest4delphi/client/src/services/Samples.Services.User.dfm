object UserService: TUserService
  OldCreateOrder = False
  Height = 150
  Width = 215
  object mtUsers: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 88
    Top = 56
    object mtUsersID: TIntegerField
      FieldName = 'ID'
    end
    object mtUsersNAME: TStringField
      FieldName = 'NAME'
      Size = 100
    end
    object mtUsersLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Size = 100
    end
    object mtUsersEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
end
