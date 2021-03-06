//
// Copyright 2010-2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
// http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

#import "AWSKinesisModel.h"
#import <AWSCore/AWSCategory.h>

NSString *const AWSKinesisErrorDomain = @"com.amazonaws.AWSKinesisErrorDomain";

@implementation AWSKinesisAddTagsToStreamInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"streamName" : @"StreamName",
             @"tags" : @"Tags",
             };
}

@end

@implementation AWSKinesisCreateStreamInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"shardCount" : @"ShardCount",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisDecreaseStreamRetentionPeriodInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"retentionPeriodHours" : @"RetentionPeriodHours",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisDeleteStreamInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisDescribeLimitsInput

@end

@implementation AWSKinesisDescribeLimitsOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"openShardCount" : @"OpenShardCount",
             @"shardLimit" : @"ShardLimit",
             };
}

@end

@implementation AWSKinesisDescribeStreamInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"exclusiveStartShardId" : @"ExclusiveStartShardId",
             @"limit" : @"Limit",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisDescribeStreamOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"streamDescription" : @"StreamDescription",
             };
}

+ (NSValueTransformer *)streamDescriptionJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSKinesisStreamDescription class]];
}

@end

@implementation AWSKinesisDescribeStreamSummaryInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisDescribeStreamSummaryOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"streamDescriptionSummary" : @"StreamDescriptionSummary",
             };
}

+ (NSValueTransformer *)streamDescriptionSummaryJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSKinesisStreamDescriptionSummary class]];
}

@end

@implementation AWSKinesisDisableEnhancedMonitoringInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"shardLevelMetrics" : @"ShardLevelMetrics",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisEnableEnhancedMonitoringInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"shardLevelMetrics" : @"ShardLevelMetrics",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisEnhancedMetrics

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"shardLevelMetrics" : @"ShardLevelMetrics",
             };
}

@end

@implementation AWSKinesisEnhancedMonitoringOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"currentShardLevelMetrics" : @"CurrentShardLevelMetrics",
             @"desiredShardLevelMetrics" : @"DesiredShardLevelMetrics",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisGetRecordsInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"limit" : @"Limit",
             @"shardIterator" : @"ShardIterator",
             };
}

@end

@implementation AWSKinesisGetRecordsOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"millisBehindLatest" : @"MillisBehindLatest",
             @"nextShardIterator" : @"NextShardIterator",
             @"records" : @"Records",
             };
}

+ (NSValueTransformer *)recordsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSKinesisRecord class]];
}

@end

@implementation AWSKinesisGetShardIteratorInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"shardId" : @"ShardId",
             @"shardIteratorType" : @"ShardIteratorType",
             @"startingSequenceNumber" : @"StartingSequenceNumber",
             @"streamName" : @"StreamName",
             @"timestamp" : @"Timestamp",
             };
}

+ (NSValueTransformer *)shardIteratorTypeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"AT_SEQUENCE_NUMBER"] == NSOrderedSame) {
            return @(AWSKinesisShardIteratorTypeAtSequenceNumber);
        }
        if ([value caseInsensitiveCompare:@"AFTER_SEQUENCE_NUMBER"] == NSOrderedSame) {
            return @(AWSKinesisShardIteratorTypeAfterSequenceNumber);
        }
        if ([value caseInsensitiveCompare:@"TRIM_HORIZON"] == NSOrderedSame) {
            return @(AWSKinesisShardIteratorTypeTrimHorizon);
        }
        if ([value caseInsensitiveCompare:@"LATEST"] == NSOrderedSame) {
            return @(AWSKinesisShardIteratorTypeLatest);
        }
        if ([value caseInsensitiveCompare:@"AT_TIMESTAMP"] == NSOrderedSame) {
            return @(AWSKinesisShardIteratorTypeAtTimestamp);
        }
        return @(AWSKinesisShardIteratorTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisShardIteratorTypeAtSequenceNumber:
                return @"AT_SEQUENCE_NUMBER";
            case AWSKinesisShardIteratorTypeAfterSequenceNumber:
                return @"AFTER_SEQUENCE_NUMBER";
            case AWSKinesisShardIteratorTypeTrimHorizon:
                return @"TRIM_HORIZON";
            case AWSKinesisShardIteratorTypeLatest:
                return @"LATEST";
            case AWSKinesisShardIteratorTypeAtTimestamp:
                return @"AT_TIMESTAMP";
            default:
                return nil;
        }
    }];
}

+ (NSValueTransformer *)timestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

@end

@implementation AWSKinesisGetShardIteratorOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"shardIterator" : @"ShardIterator",
             };
}

@end

@implementation AWSKinesisHashKeyRange

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"endingHashKey" : @"EndingHashKey",
             @"startingHashKey" : @"StartingHashKey",
             };
}

@end

@implementation AWSKinesisIncreaseStreamRetentionPeriodInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"retentionPeriodHours" : @"RetentionPeriodHours",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisListShardsInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"exclusiveStartShardId" : @"ExclusiveStartShardId",
             @"maxResults" : @"MaxResults",
             @"nextToken" : @"NextToken",
             @"streamCreationTimestamp" : @"StreamCreationTimestamp",
             @"streamName" : @"StreamName",
             };
}

+ (NSValueTransformer *)streamCreationTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

@end

@implementation AWSKinesisListShardsOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"nextToken" : @"NextToken",
             @"shards" : @"Shards",
             };
}

+ (NSValueTransformer *)shardsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSKinesisShard class]];
}

@end

@implementation AWSKinesisListStreamsInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"exclusiveStartStreamName" : @"ExclusiveStartStreamName",
             @"limit" : @"Limit",
             };
}

@end

@implementation AWSKinesisListStreamsOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"hasMoreStreams" : @"HasMoreStreams",
             @"streamNames" : @"StreamNames",
             };
}

@end

@implementation AWSKinesisListTagsForStreamInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"exclusiveStartTagKey" : @"ExclusiveStartTagKey",
             @"limit" : @"Limit",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisListTagsForStreamOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"hasMoreTags" : @"HasMoreTags",
             @"tags" : @"Tags",
             };
}

+ (NSValueTransformer *)tagsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSKinesisTag class]];
}

@end

@implementation AWSKinesisMergeShardsInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"adjacentShardToMerge" : @"AdjacentShardToMerge",
             @"shardToMerge" : @"ShardToMerge",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisPutRecordInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"data" : @"Data",
             @"explicitHashKey" : @"ExplicitHashKey",
             @"partitionKey" : @"PartitionKey",
             @"sequenceNumberForOrdering" : @"SequenceNumberForOrdering",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisPutRecordOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"encryptionType" : @"EncryptionType",
             @"sequenceNumber" : @"SequenceNumber",
             @"shardId" : @"ShardId",
             };
}

+ (NSValueTransformer *)encryptionTypeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"NONE"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeNone);
        }
        if ([value caseInsensitiveCompare:@"KMS"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeKms);
        }
        return @(AWSKinesisEncryptionTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisEncryptionTypeNone:
                return @"NONE";
            case AWSKinesisEncryptionTypeKms:
                return @"KMS";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSKinesisPutRecordsInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"records" : @"Records",
             @"streamName" : @"StreamName",
             };
}

+ (NSValueTransformer *)recordsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSKinesisPutRecordsRequestEntry class]];
}

@end

@implementation AWSKinesisPutRecordsOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"encryptionType" : @"EncryptionType",
             @"failedRecordCount" : @"FailedRecordCount",
             @"records" : @"Records",
             };
}

+ (NSValueTransformer *)encryptionTypeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"NONE"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeNone);
        }
        if ([value caseInsensitiveCompare:@"KMS"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeKms);
        }
        return @(AWSKinesisEncryptionTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisEncryptionTypeNone:
                return @"NONE";
            case AWSKinesisEncryptionTypeKms:
                return @"KMS";
            default:
                return nil;
        }
    }];
}

+ (NSValueTransformer *)recordsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSKinesisPutRecordsResultEntry class]];
}

@end

@implementation AWSKinesisPutRecordsRequestEntry

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"data" : @"Data",
             @"explicitHashKey" : @"ExplicitHashKey",
             @"partitionKey" : @"PartitionKey",
             };
}

@end

@implementation AWSKinesisPutRecordsResultEntry

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"errorCode" : @"ErrorCode",
             @"errorMessage" : @"ErrorMessage",
             @"sequenceNumber" : @"SequenceNumber",
             @"shardId" : @"ShardId",
             };
}

@end

@implementation AWSKinesisRecord

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"approximateArrivalTimestamp" : @"ApproximateArrivalTimestamp",
             @"data" : @"Data",
             @"encryptionType" : @"EncryptionType",
             @"partitionKey" : @"PartitionKey",
             @"sequenceNumber" : @"SequenceNumber",
             };
}

+ (NSValueTransformer *)approximateArrivalTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)encryptionTypeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"NONE"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeNone);
        }
        if ([value caseInsensitiveCompare:@"KMS"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeKms);
        }
        return @(AWSKinesisEncryptionTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisEncryptionTypeNone:
                return @"NONE";
            case AWSKinesisEncryptionTypeKms:
                return @"KMS";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSKinesisRemoveTagsFromStreamInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"streamName" : @"StreamName",
             @"tagKeys" : @"TagKeys",
             };
}

@end

@implementation AWSKinesisSequenceNumberRange

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"endingSequenceNumber" : @"EndingSequenceNumber",
             @"startingSequenceNumber" : @"StartingSequenceNumber",
             };
}

@end

@implementation AWSKinesisShard

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"adjacentParentShardId" : @"AdjacentParentShardId",
             @"hashKeyRange" : @"HashKeyRange",
             @"parentShardId" : @"ParentShardId",
             @"sequenceNumberRange" : @"SequenceNumberRange",
             @"shardId" : @"ShardId",
             };
}

+ (NSValueTransformer *)hashKeyRangeJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSKinesisHashKeyRange class]];
}

+ (NSValueTransformer *)sequenceNumberRangeJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSKinesisSequenceNumberRange class]];
}

@end

@implementation AWSKinesisSplitShardInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"latestStartingHashKey" : @"NewStartingHashKey",
             @"shardToSplit" : @"ShardToSplit",
             @"streamName" : @"StreamName",
             };
}

@end

@implementation AWSKinesisStartStreamEncryptionInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"encryptionType" : @"EncryptionType",
             @"keyId" : @"KeyId",
             @"streamName" : @"StreamName",
             };
}

+ (NSValueTransformer *)encryptionTypeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"NONE"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeNone);
        }
        if ([value caseInsensitiveCompare:@"KMS"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeKms);
        }
        return @(AWSKinesisEncryptionTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisEncryptionTypeNone:
                return @"NONE";
            case AWSKinesisEncryptionTypeKms:
                return @"KMS";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSKinesisStopStreamEncryptionInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"encryptionType" : @"EncryptionType",
             @"keyId" : @"KeyId",
             @"streamName" : @"StreamName",
             };
}

+ (NSValueTransformer *)encryptionTypeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"NONE"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeNone);
        }
        if ([value caseInsensitiveCompare:@"KMS"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeKms);
        }
        return @(AWSKinesisEncryptionTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisEncryptionTypeNone:
                return @"NONE";
            case AWSKinesisEncryptionTypeKms:
                return @"KMS";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSKinesisStreamDescription

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"encryptionType" : @"EncryptionType",
             @"enhancedMonitoring" : @"EnhancedMonitoring",
             @"hasMoreShards" : @"HasMoreShards",
             @"keyId" : @"KeyId",
             @"retentionPeriodHours" : @"RetentionPeriodHours",
             @"shards" : @"Shards",
             @"streamARN" : @"StreamARN",
             @"streamCreationTimestamp" : @"StreamCreationTimestamp",
             @"streamName" : @"StreamName",
             @"streamStatus" : @"StreamStatus",
             };
}

+ (NSValueTransformer *)encryptionTypeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"NONE"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeNone);
        }
        if ([value caseInsensitiveCompare:@"KMS"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeKms);
        }
        return @(AWSKinesisEncryptionTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisEncryptionTypeNone:
                return @"NONE";
            case AWSKinesisEncryptionTypeKms:
                return @"KMS";
            default:
                return nil;
        }
    }];
}

+ (NSValueTransformer *)enhancedMonitoringJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSKinesisEnhancedMetrics class]];
}

+ (NSValueTransformer *)shardsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSKinesisShard class]];
}

+ (NSValueTransformer *)streamCreationTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)streamStatusJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"CREATING"] == NSOrderedSame) {
            return @(AWSKinesisStreamStatusCreating);
        }
        if ([value caseInsensitiveCompare:@"DELETING"] == NSOrderedSame) {
            return @(AWSKinesisStreamStatusDeleting);
        }
        if ([value caseInsensitiveCompare:@"ACTIVE"] == NSOrderedSame) {
            return @(AWSKinesisStreamStatusActive);
        }
        if ([value caseInsensitiveCompare:@"UPDATING"] == NSOrderedSame) {
            return @(AWSKinesisStreamStatusUpdating);
        }
        return @(AWSKinesisStreamStatusUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisStreamStatusCreating:
                return @"CREATING";
            case AWSKinesisStreamStatusDeleting:
                return @"DELETING";
            case AWSKinesisStreamStatusActive:
                return @"ACTIVE";
            case AWSKinesisStreamStatusUpdating:
                return @"UPDATING";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSKinesisStreamDescriptionSummary

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"encryptionType" : @"EncryptionType",
             @"enhancedMonitoring" : @"EnhancedMonitoring",
             @"keyId" : @"KeyId",
             @"openShardCount" : @"OpenShardCount",
             @"retentionPeriodHours" : @"RetentionPeriodHours",
             @"streamARN" : @"StreamARN",
             @"streamCreationTimestamp" : @"StreamCreationTimestamp",
             @"streamName" : @"StreamName",
             @"streamStatus" : @"StreamStatus",
             };
}

+ (NSValueTransformer *)encryptionTypeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"NONE"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeNone);
        }
        if ([value caseInsensitiveCompare:@"KMS"] == NSOrderedSame) {
            return @(AWSKinesisEncryptionTypeKms);
        }
        return @(AWSKinesisEncryptionTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisEncryptionTypeNone:
                return @"NONE";
            case AWSKinesisEncryptionTypeKms:
                return @"KMS";
            default:
                return nil;
        }
    }];
}

+ (NSValueTransformer *)enhancedMonitoringJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSKinesisEnhancedMetrics class]];
}

+ (NSValueTransformer *)streamCreationTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)streamStatusJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"CREATING"] == NSOrderedSame) {
            return @(AWSKinesisStreamStatusCreating);
        }
        if ([value caseInsensitiveCompare:@"DELETING"] == NSOrderedSame) {
            return @(AWSKinesisStreamStatusDeleting);
        }
        if ([value caseInsensitiveCompare:@"ACTIVE"] == NSOrderedSame) {
            return @(AWSKinesisStreamStatusActive);
        }
        if ([value caseInsensitiveCompare:@"UPDATING"] == NSOrderedSame) {
            return @(AWSKinesisStreamStatusUpdating);
        }
        return @(AWSKinesisStreamStatusUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisStreamStatusCreating:
                return @"CREATING";
            case AWSKinesisStreamStatusDeleting:
                return @"DELETING";
            case AWSKinesisStreamStatusActive:
                return @"ACTIVE";
            case AWSKinesisStreamStatusUpdating:
                return @"UPDATING";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSKinesisTag

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"key" : @"Key",
             @"value" : @"Value",
             };
}

@end

@implementation AWSKinesisUpdateShardCountInput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"scalingType" : @"ScalingType",
             @"streamName" : @"StreamName",
             @"targetShardCount" : @"TargetShardCount",
             };
}

+ (NSValueTransformer *)scalingTypeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"UNIFORM_SCALING"] == NSOrderedSame) {
            return @(AWSKinesisScalingTypeUniformScaling);
        }
        return @(AWSKinesisScalingTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSKinesisScalingTypeUniformScaling:
                return @"UNIFORM_SCALING";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSKinesisUpdateShardCountOutput

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"currentShardCount" : @"CurrentShardCount",
             @"streamName" : @"StreamName",
             @"targetShardCount" : @"TargetShardCount",
             };
}

@end
