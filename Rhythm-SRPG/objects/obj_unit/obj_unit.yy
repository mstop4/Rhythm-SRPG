{
    "id": "00b3dbe6-5dd4-4270-96a8-0be5ed00a15c",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_unit",
    "eventList": [
        {
            "id": "de5b236a-4e19-4466-8831-29a8538f10df",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "00b3dbe6-5dd4-4270-96a8-0be5ed00a15c"
        },
        {
            "id": "6af02a7e-356c-4330-ab21-8edd510bc917",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 12,
            "m_owner": "00b3dbe6-5dd4-4270-96a8-0be5ed00a15c"
        },
        {
            "id": "05f0b0cd-ec33-47ab-a865-a98f8df526d8",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "00b3dbe6-5dd4-4270-96a8-0be5ed00a15c"
        },
        {
            "id": "84f626f5-dac9-484d-96bb-d1423513ebd2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "00b3dbe6-5dd4-4270-96a8-0be5ed00a15c"
        },
        {
            "id": "515e8193-d55b-4137-96f5-1556d3a4d402",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 76,
            "eventtype": 8,
            "m_owner": "00b3dbe6-5dd4-4270-96a8-0be5ed00a15c"
        },
        {
            "id": "1d6865e1-7b17-4751-9a88-f24eab55a108",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "00b3dbe6-5dd4-4270-96a8-0be5ed00a15c"
        },
        {
            "id": "c99c5c78-3813-4361-8d3a-7264667ee0d5",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 2,
            "m_owner": "00b3dbe6-5dd4-4270-96a8-0be5ed00a15c"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "a84614ba-5195-4774-b8ef-b40fb56a74ff",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "move_range",
            "varType": 1
        },
        {
            "id": "0eadd426-17a8-44c0-99f0-4f3d723e0c4f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "min_attack_range",
            "varType": 1
        },
        {
            "id": "81c80ae2-0db9-4943-9062-4979caec9a3c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "max_attack_range",
            "varType": 1
        },
        {
            "id": "815f8063-0d40-45ea-8c43-aeb062d11242",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "path_step_time",
            "varType": 1
        },
        {
            "id": "8e1a72a9-3a67-407d-8077-8a9fe6cd9f96",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "team.player",
            "varName": "my_team",
            "varType": 4
        }
    ],
    "solid": false,
    "spriteId": "5df0af78-daf8-4df8-b0f9-101bb06b7874",
    "visible": true
}