// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerinax/health.fhir.r5;

public const string PROFILE_BASE_GROUP = "http://hl7.org/fhir/StructureDefinition/Group";
public const RESOURCE_NAME_GROUP = "Group";

# FHIR Group resource record.
#
# + resourceType - The type of the resource describes
# + identifier - Business identifiers assigned to this participant by one of the applications involved. These identifiers remain constant as the resource is updated and propagates from server to server.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - Provides a specific type of resource the group includes; e.g. 'cow', 'syringe', etc.
# + quantity - A count of the number of resource instances that are part of the group.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + active - Indicates whether the record for the group is available for use or is merely being retained for historical purposes.
# + description - Explanation of what the group represents and how it is intended to be used.
# + language - The base language in which the resource is written.
# + membership - Basis for membership in the Group: * 'definitional': The Group.characteristics specified are both necessary and sufficient to determine membership. All entities that meet the criteria are considered to be members of the group, whether referenced by the group or not. If members are present, they are individuals that happen to be known as meeting the Group.characteristics. The list cannot be presumed to be complete. * 'enumerated': The Group.characteristics are necessary but not sufficient to determine membership. Membership is determined by being listed as one of the Group.member.
# + 'type - Identifies the broad classification of the kind of resources the group includes.
# + characteristic - Identifies traits whose presence r absence is shared by members of the group.
# + managingEntity - Entity responsible for defining and maintaining Group characteristics and/or registered members.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + member - Identifies the resource instances that are members of the group.
# + name - A label assigned to the group for human identification and communication.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
@r5:ResourceDefinition {
    resourceType: "Group",
    baseType: r5:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Group",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: r5:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Group.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Group.extension"
        },
        "code" : {
            name: "code",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.code"
        },
        "quantity" : {
            name: "quantity",
            dataType: r5:unsignedInt,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.quantity"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Group.modifierExtension"
        },
        "active" : {
            name: "active",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.active"
        },
        "description" : {
            name: "description",
            dataType: r5:markdown,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.description"
        },
        "language" : {
            name: "language",
            dataType: r5:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.language",
            valueSet: "http://hl7.org/fhir/ValueSet/all-languages|5.0.0"
        },
        "membership" : {
            name: "membership",
            dataType: GroupMembership,
            min: 1,
            max: 1,
            isArray: false,
            path: "Group.membership",
            valueSet: "http://hl7.org/fhir/ValueSet/group-membership-basis|5.0.0"
        },
        "type" : {
            name: "type",
            dataType: GroupType,
            min: 1,
            max: 1,
            isArray: false,
            path: "Group.type",
            valueSet: "http://hl7.org/fhir/ValueSet/group-type|5.0.0"
        },
        "characteristic" : {
            name: "characteristic",
            dataType: GroupCharacteristic,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Group.characteristic"
        },
        "managingEntity" : {
            name: "managingEntity",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.managingEntity"
        },
        "contained" : {
            name: "contained",
            dataType: r5:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Group.contained"
        },
        "meta" : {
            name: "meta",
            dataType: r5:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.meta"
        },
        "member" : {
            name: "member",
            dataType: GroupMember,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Group.member"
        },
        "name" : {
            name: "name",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.name"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r5:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.id"
        },
        "text" : {
            name: "text",
            dataType: r5:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Group.text"
        }
    },
    serializers: {
        'xml: r5:fhirResourceXMLSerializer,
        'json: r5:fhirResourceJsonSerializer
    }
}
public type Group record {|
    *r5:DomainResource;

    RESOURCE_NAME_GROUP resourceType = RESOURCE_NAME_GROUP;

    r5:Identifier[] identifier?;
    r5:Extension[] extension?;
    r5:CodeableConcept code?;
    r5:unsignedInt quantity?;
    r5:Extension[] modifierExtension?;
    boolean active?;
    r5:markdown description?;
    r5:code language?;
    GroupMembership membership;
    GroupType 'type;
    GroupCharacteristic[] characteristic?;
    r5:Reference managingEntity?;
    r5:Resource[] contained?;
    r5:Meta meta?;
    GroupMember[] member?;
    string name?;
    r5:uri implicitRules?;
    string id?;
    r5:Narrative text?;
    r5:Element ...;
|};

# FHIR GroupMember datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - The period that the member was in the group, if known.
# + inactive - A flag to indicate that the member is no longer in the group, but previously may have been a member.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + entity - A reference to the entity that is a member of the group. Must be consistent with Group.type. If the entity is another group, then the type must be the same.
@r5:DataTypeDefinition {
    name: "GroupMember",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Group.member.extension"
        },
        "period": {
            name: "period",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "The period that the member was in the group, if known.",
            path: "Group.member.period"
        },
        "inactive": {
            name: "inactive",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            description: "A flag to indicate that the member is no longer in the group, but previously may have been a member.",
            path: "Group.member.inactive"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Group.member.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Group.member.id"
        },
        "entity": {
            name: "entity",
            dataType: r5:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "A reference to the entity that is a member of the group. Must be consistent with Group.type. If the entity is another group, then the type must be the same.",
            path: "Group.member.entity"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type GroupMember record {|
    *r5:BackboneElement;

    r5:Extension[] extension?;
    r5:Period period?;
    boolean inactive?;
    r5:Extension[] modifierExtension?;
    string id?;
    r5:Reference entity;
|};

# GroupType enum
public enum GroupType {
   CODE_TYPE_CARETEAM = "careteam",
   CODE_TYPE_PRACTITIONER = "practitioner",
   CODE_TYPE_PERSON = "person",
   CODE_TYPE_ORGANIZATION = "organization",
   CODE_TYPE_SPECIMEN = "specimen",
   CODE_TYPE_ANIMAL = "animal",
   CODE_TYPE_LOCATION = "location",
   CODE_TYPE_RELATEDPERSON = "relatedperson",
   CODE_TYPE_DEVICE = "device",
   CODE_TYPE_HEALTHCARESERVICE = "healthcareservice"
}

# GroupMembership enum
public enum GroupMembership {
   CODE_MEMBERSHIP_DEFINITIONAL = "definitional",
   CODE_MEMBERSHIP_ENUMERATED = "enumerated"
}

# FHIR GroupCharacteristic datatype record.
#
# + valueCodeableConcept - The value of the trait that holds (or does not hold - see 'exclude') for members of the group.
# + valueBoolean - The value of the trait that holds (or does not hold - see 'exclude') for members of the group.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - The period over which the characteristic is tested; e.g. the patient had an operation during the month of June.
# + code - A code that identifies the kind of trait being asserted.
# + valueReference - The value of the trait that holds (or does not hold - see 'exclude') for members of the group.
# + valueRange - The value of the trait that holds (or does not hold - see 'exclude') for members of the group.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + exclude - If true, indicates the characteristic is one that is NOT held by members of the group.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + valueQuantity - The value of the trait that holds (or does not hold - see 'exclude') for members of the group.
@r5:DataTypeDefinition {
    name: "GroupCharacteristic",
    baseType: (),
    elements: {
        "valueCodeableConcept": {
            name: "valueCodeableConcept",
            dataType: r5:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The value of the trait that holds (or does not hold - see 'exclude') for members of the group.",
            path: "Group.characteristic.value[x]"
        },
        "valueBoolean": {
            name: "valueBoolean",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            description: "The value of the trait that holds (or does not hold - see 'exclude') for members of the group.",
            path: "Group.characteristic.value[x]"
        },
        "extension": {
            name: "extension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Group.characteristic.extension"
        },
        "period": {
            name: "period",
            dataType: r5:Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "The period over which the characteristic is tested; e.g. the patient had an operation during the month of June.",
            path: "Group.characteristic.period"
        },
        "code": {
            name: "code",
            dataType: r5:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "A code that identifies the kind of trait being asserted.",
            path: "Group.characteristic.code"
        },
        "valueReference": {
            name: "valueReference",
            dataType: r5:Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "The value of the trait that holds (or does not hold - see 'exclude') for members of the group.",
            path: "Group.characteristic.value[x]"
        },
        "valueRange": {
            name: "valueRange",
            dataType: r5:Range,
            min: 0,
            max: 1,
            isArray: false,
            description: "The value of the trait that holds (or does not hold - see 'exclude') for members of the group.",
            path: "Group.characteristic.value[x]"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r5:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Group.characteristic.modifierExtension"
        },
        "exclude": {
            name: "exclude",
            dataType: boolean,
            min: 1,
            max: 1,
            isArray: false,
            description: "If true, indicates the characteristic is one that is NOT held by members of the group.",
            path: "Group.characteristic.exclude"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Group.characteristic.id"
        },
        "valueQuantity": {
            name: "valueQuantity",
            dataType: r5:Quantity,
            min: 0,
            max: 1,
            isArray: false,
            description: "The value of the trait that holds (or does not hold - see 'exclude') for members of the group.",
            path: "Group.characteristic.value[x]"
        }
    },
    serializers: {
        'xml: r5:complexDataTypeXMLSerializer,
        'json: r5:complexDataTypeJsonSerializer
    }
}
public type GroupCharacteristic record {|
    *r5:BackboneElement;

    r5:CodeableConcept valueCodeableConcept;
    boolean valueBoolean;
    r5:Extension[] extension?;
    r5:Period period?;
    r5:CodeableConcept code;
    r5:Reference valueReference;
    r5:Range valueRange;
    r5:Extension[] modifierExtension?;
    boolean exclude;
    string id?;
    r5:Quantity valueQuantity;
|};

