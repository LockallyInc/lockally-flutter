# lockally.model.RotateApiKeyRequest

## Load the model package
```dart
import 'package:lockally/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**graceSeconds** | **int** | How long the old key keeps working. Defaults to 24 hours, which is long enough to cut over without a scramble. Capped at 30 days, because beyond that \"rotated\" stops meaning anything.  | [optional] [default to 86400]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


