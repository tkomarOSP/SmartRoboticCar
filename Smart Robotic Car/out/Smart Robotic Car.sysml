package  'Smart Robotic Car Project' {
    import ARCADIA::**; 
    @PackageMeta {
        type = "Project";
    } 
    @CapellaID { eid = "e720a305-db19-4853-9552-d6689e1e78a2"; } 
    enum def 'ProgressStatus' :> EnumerationPropertyType  { 
        enum 'DRAFT'; 
        enum 'TO_BE_REVIEWED'; 
        enum 'TO_BE_DISCUSSED'; 
        enum 'REWORK_NECESSARY'; 
        enum 'UNDER_REWORK'; 
        enum 'REVIEWED_OK'; 
    }  
    package  'Smart Robotic Car' {
        @PackageMeta {
            type = "SystemEngineering";
        } 
        @CapellaID { eid = "05542f80-ed51-43c6-aaf4-94b03a03769f"; } 
        package  'Operational Analysis' {
            @PackageMeta {
                type = "OperationalAnalysis";
            } 
            @CapellaID { eid = "a939ca9f-68d3-4695-aceb-11f9e0d4c319"; } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "77918243-349b-452c-8757-5534bf65c9ef"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "d468499e-523a-4709-9dc9-175643c74d39"; } 
            } 
            package  'Operational Capabilities' {
                @PackageMeta {
                    type = "OperationalCapabilityPkg";
                } 
                @CapellaID { eid = "b274a0ff-32c6-449b-8355-533725059b21"; } 
            } 
            package  'Operational Entities' {
                @PackageMeta {
                    type = "EntityPkg";
                } 
                @CapellaID { eid = "b19a8ed5-ef3d-4d36-94a0-eb2d3f110732"; } 
            } 
            package  'Operational Activities' {
                @PackageMeta {
                    type = "OperationalActivityPkg";
                } 
                @CapellaID { eid = "b6572199-1283-453b-861e-8a6406758667"; } 
                action 'Root Operational Activity' : OperationalActivity  { 
                    @CapellaID { eid = "5cea72e7-db2f-486b-984c-389e35a20031"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
            } 
            package  'Roles' {
                @PackageMeta {
                    type = "RolePkg";
                } 
                @CapellaID { eid = "d6ece21c-395c-4096-8d6e-b2f0d6382186"; } 
            } 
        } 
        package  'System Analysis' {
            @PackageMeta {
                type = "SystemAnalysis";
            } 
            @CapellaID { eid = "45a8f0c1-1dfe-4767-b4e0-9d521d72cee4"; } 
            package  'Missions' {
                @PackageMeta {
                    type = "MissionPkg";
                } 
                @CapellaID { eid = "036d9d8b-3834-4967-96aa-5da84f371df2"; } 
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "049f4c2d-801c-40c0-b5ec-129df9950755"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "2f5bb8ee-5fd9-4d38-9c1a-6fb9c8ed5af7"; } 
                attribute <'W'> 'W' : ARCADIAUnit; 
                attribute <'N-m'> 'N-m' : ARCADIAUnit; 
                attribute <'m/s^2'> 'm/s^2' : ARCADIAUnit; 
                attribute <'m/s'> 'm/s' : ARCADIAUnit; 
                package  'Predefined Types' {
                    @PackageMeta {
                        type = "DataPkg";
                    } 
                    @CapellaID { eid = "37f2fd0d-74d6-4ad6-adf9-8f07148902bb"; } 
                } 
                item 'Tactile App Input' : ExchangeItem  { 
                    @CapellaID { eid = "a553baf7-d4b7-46f8-85f1-b3376674de1f"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::FLOW; 
                    attribute :>> isFinal = false; 
                    item 'ThisRockerState' : ExchangeItemElement { 
                        @CapellaID { eid = "20a4b6e8-5f3d-41e4-8829-eb6fb93a3942"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    ref :>> ownedElements =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile App Input'.'ThisRockerState'); 
                }  
                item 'Rocker State' : ExchangeItem  { 
                    @CapellaID { eid = "de174c51-653d-4412-9a06-163956ade26a"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::SHARED_DATA; 
                    attribute :>> isFinal = false; 
                    item 'ThisRockerState' : ExchangeItemElement { 
                        @CapellaID { eid = "3b3d72e7-7775-4f0b-bed2-094d36957969"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    ref :>> ownedElements =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Rocker State'.'ThisRockerState'); 
                }  
                item 'Power' : ExchangeItem  { 
                    @CapellaID { eid = "9c1251fc-5069-4bb0-b58b-6a6ed81cb169"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::FLOW; 
                    attribute :>> isFinal = false; 
                    item 'ThisPower' : ExchangeItemElement { 
                        @CapellaID { eid = "c4eddc03-6b2d-403a-a6dd-de51a9ef308d"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    ref :>> ownedElements =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'.'ThisPower'); 
                }  
                item 'Torque' : ExchangeItem  { 
                    @CapellaID { eid = "b8e8664e-26e0-489b-9142-914553bdd161"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::FLOW; 
                    attribute :>> isFinal = false; 
                    item 'AppliedTorque' : ExchangeItemElement { 
                        @CapellaID { eid = "070e51ce-5285-48bb-8413-5f78f7570f30"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    ref :>> ownedElements =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Torque'.'AppliedTorque'); 
                }  
                item 'Realized Torque' : ExchangeItem  { 
                    @CapellaID { eid = "beb9172a-b628-4508-8258-37cd396b4445"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::FLOW; 
                    attribute :>> isFinal = false; 
                    item 'Realized Torque' : ExchangeItemElement { 
                        @CapellaID { eid = "e4ba149a-839e-4406-aed3-6e1bb602b57f"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    ref :>> ownedElements =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Realized Torque'.'Realized Torque'); 
                }  
                item 'Car Dynamics' : ExchangeItem  { 
                    @CapellaID { eid = "ce103ae3-a0a9-473c-9cf7-9e6a5723c224"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::FLOW; 
                    attribute :>> isFinal = false; 
                    item 'X_v' : ExchangeItemElement { 
                        @CapellaID { eid = "104dec21-fe14-4221-8fb9-62d68a6ba6bf"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    item 'Y_v' : ExchangeItemElement { 
                        @CapellaID { eid = "0d00463e-f0bd-4d37-8783-a90727eb7240"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    item 'Z_v' : ExchangeItemElement { 
                        @CapellaID { eid = "a4f6f138-1dd0-4ffa-aee5-d5d52f8947dd"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    item 'X_a' : ExchangeItemElement { 
                        @CapellaID { eid = "938ccf52-a656-418e-a5d2-0a09f1902d80"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    item 'Y_a' : ExchangeItemElement { 
                        @CapellaID { eid = "36903999-f858-46a8-a485-f82af1025f1c"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    item 'Z_a' : ExchangeItemElement { 
                        @CapellaID { eid = "cd4a83b6-8c65-4946-a6ad-6f055a860787"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    ref :>> ownedElements =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'.'X_v',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'.'Y_v',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'.'Z_v',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'.'X_a',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'.'Y_a',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'.'Z_a'); 
                }  
                item 'Tactile Button Input' : ExchangeItem  { 
                    @CapellaID { eid = "c29112b3-d3f4-4705-b29e-0757e11f8721"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::FLOW; 
                    attribute :>> isFinal = false; 
                    item 'Forward' : ExchangeItemElement { 
                        @CapellaID { eid = "72cddf84-e019-4645-bbfa-e5a6bbaeb576"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    item 'Back' : ExchangeItemElement { 
                        @CapellaID { eid = "ba29a1ff-3bd1-4a62-8fb1-7d0e57dc037a"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    item 'Stop' : ExchangeItemElement { 
                        @CapellaID { eid = "b9bfafaf-0138-482b-8942-9648674e8a6c"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    item 'Left' : ExchangeItemElement { 
                        @CapellaID { eid = "2676c80f-f26a-44e3-94e9-8dc95bbbe1eb"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    item 'Right' : ExchangeItemElement { 
                        @CapellaID { eid = "93d2c48d-da59-45ab-8c47-d17a6a64d0db"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    ref :>> ownedElements =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'.'Forward',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'.'Back',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'.'Stop',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'.'Left',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'.'Right'); 
                }  
                item 'Button Message' : ExchangeItem  { 
                    @CapellaID { eid = "2c9b1210-0dfb-4798-8cd5-152428e46217"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::EVENT; 
                    attribute :>> isFinal = false; 
                    item 'ThisButton' : ExchangeItemElement { 
                        @CapellaID { eid = "1f85c907-e04b-4fb3-8e2b-11fce0bfb4c8"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    ref :>> ownedElements =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Button Message'.'ThisButton'); 
                }  
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityPkg";
                } 
                @CapellaID { eid = "af007421-9056-4130-a75f-4f51df7e2008"; } 
                use case 'Operate with a Remote' : Capability { 
                    @CapellaID { eid = "d38855b6-6255-4faf-9033-8224b5040fa4"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                    ref action '7126b713-977a-4118-9685-fa8a5fd165a2' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'IR Remote Control;'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Forward'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Turn left'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Turn Right'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Backward'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Stop'; 
                }  
                use case 'Forward' : Capability { 
                    @CapellaID { eid = "34b47117-d6b4-4467-a332-d71b8fb9c9d9"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                    ref action '0e1ff105-71b1-432c-9bf7-6467db0afd14' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'; 
                }  
                use case 'Turn left' : Capability { 
                    @CapellaID { eid = "70603fc1-389c-41a4-9b74-4aafee3d2544"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                    ref action '4377a847-c916-41a2-9c13-f1df8d837a8e' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'; 
                }  
                use case 'Backward' : Capability { 
                    @CapellaID { eid = "49ee47f0-9661-4cba-bebc-11f32a9f66d6"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                    ref action 'fe307e16-05ea-4a44-a07f-0e63028ab850' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'; 
                }  
                use case 'Turn Right' : Capability { 
                    @CapellaID { eid = "c5e5dccd-f94f-4af5-b48a-b096607ae9cb"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                    ref action 'bdccce28-ca16-4dc3-8d0b-24654b3a0c84' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'; 
                }  
                use case 'Line Tracking Mode' : Capability { 
                    @CapellaID { eid = "c409c678-486e-47f8-8c75-f4e13fa59d71"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Stop' : Capability { 
                    @CapellaID { eid = "fe22dcc9-c47c-40a1-accf-63daa9059a55"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                    ref action 'c3b5967b-c26f-4044-b387-c69591302388' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'; 
                }  
                use case 'Obstracle Aviodance Mode' : Capability { 
                    @CapellaID { eid = "a941a1a6-59f5-477a-83b1-3883c981a23e"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Auto Follow Mode' : Capability { 
                    @CapellaID { eid = "0c15bbdb-e005-4cf5-9212-a3e110fb40a5"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                }  
                use case 'Set Automated Modes with Remore' : Capability { 
                    @CapellaID { eid = "5e9d76c9-a376-4e89-b53d-6de91e771bda"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Line Tracking Mode'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Obstracle Aviodance Mode'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Auto Follow Mode'; 
                }  
                use case 'Set Parameters with Remote' : Capability { 
                    @CapellaID { eid = "7a9e4906-3404-494f-a314-8e1809d686e8"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Restore Defaults'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Increase Threshold'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Increase Speed'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Restore Default Speed'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Reduce Speed'; 
                }  
                use case 'Restore Defaults' : Capability { 
                    @CapellaID { eid = "7a5f4bce-ef81-41d3-b0fb-505c35ea14b7"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Increase Threshold' : Capability { 
                    @CapellaID { eid = "22dae741-b376-4caa-a3d7-32325d528b7d"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Increase Speed' : Capability { 
                    @CapellaID { eid = "c667172e-d65a-4b50-81d9-dde4cc6806d2"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Restore Default Speed' : Capability { 
                    @CapellaID { eid = "ad77bddc-67ea-4e49-b4b9-a74123b35900"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Reduce Speed' : Capability { 
                    @CapellaID { eid = "2d00ee03-6dd1-4fa5-93cf-d7ff086768ba"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Install App' : Capability { 
                    @CapellaID { eid = "66f115e4-1292-4b03-98b3-0a6f37ffe450"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Select App ' : Capability { 
                    @CapellaID { eid = "d74eb60a-44fa-440b-8be4-8b5a6f10b50d"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Programming' : Capability { 
                    @CapellaID { eid = "4afc545c-0611-4247-8a0e-aefade3d215c"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Ap Control' : Capability { 
                    @CapellaID { eid = "5c8b6d82-e425-4f57-bad6-a89409bbfcb2"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                     
                }  
                use case 'Rocker Remote' : Capability { 
                    @CapellaID { eid = "6a1a6a24-15cb-4d1b-9b5e-201130038451"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                    ref action 'cd0355f3-61ea-4774-a115-3f7e3c0e33cc' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'App Rocker Remote Control'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Forward'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Turn left'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Turn Right'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Backward'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Stop'; 
                }  
                use case 'Control Modes' : Capability { 
                    @CapellaID { eid = "24a9c729-edef-494a-bb36-82e7ec011603"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Line Tracking Mode'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Obstracle Aviodance Mode'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Auto Follow Mode'; 
                    include 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Capabilities'::'Standbye'; 
                }  
                use case 'Standbye' : Capability { 
                    @CapellaID { eid = "230a86cf-9694-43c9-9d97-7b03d10b0f67"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'DIY' : Capability { 
                    @CapellaID { eid = "fbd92ab9-8afe-4a14-ba05-f7bc433f9ecc"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Camera Control' : Capability { 
                    @CapellaID { eid = "f0811d6e-ca38-4dd4-90b7-f7dc690da5f2"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Camera Resolution' : Capability { 
                    @CapellaID { eid = "574dbb4b-a868-447c-baaf-82bf4afa6b24"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                }  
                use case 'Select App Model' : Capability { 
                    @CapellaID { eid = "176b8045-28a3-40da-b79e-729d850665bc"; } 
                    actor 'Smart Robotic Car System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'; 
                     
                }  
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "SystemComponentPkg";
                } 
                @CapellaID { eid = "1412d08a-78f1-47d5-b7fa-f529b25e0d68"; } 
                constraint 'eac7dca9-2eb1-46ed-8e97-3f92daaa32fc' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "eac7dca9-2eb1-46ed-8e97-3f92daaa32fc"; }
                    
                } 
                interface 'fd6c8689-217c-47a4-bc03-94bdf242f82d' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 2'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 2' { 
                    @CapellaID { eid = "fd6c8689-217c-47a4-bc03-94bdf242f82d"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "O-SRC"; 
                    attribute :>> isOriented = false; 
                    allocation '2abc3c41-5deb-4ec1-8434-6c3fe76a61d4' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'e90c8b53-8596-4da3-b291-ad49fbdb3015'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'fd6c8689-217c-47a4-bc03-94bdf242f82d'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'fd6c8689-217c-47a4-bc03-94bdf242f82d'.'2abc3c41-5deb-4ec1-8434-6c3fe76a61d4'); 
                }  
                interface 'dc3c5253-1c46-4e28-a7ac-ecec4c3e5729' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 4'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'CP 2' { 
                    @CapellaID { eid = "dc3c5253-1c46-4e28-a7ac-ecec4c3e5729"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "SRC-E"; 
                    attribute :>> isOriented = false; 
                    allocation '180e3f9b-7016-4a1d-b7b3-9b8d0626866f' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'b03a367b-cc7a-4d8f-a33e-5e96692a48fa'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'dc3c5253-1c46-4e28-a7ac-ecec4c3e5729'; 
                    allocation '87bc69ca-1d44-47fd-a159-8ab722600fc7' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'791a7632-d6ac-4d8e-887d-3b10bf34f37b'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'dc3c5253-1c46-4e28-a7ac-ecec4c3e5729'; 
                    allocation 'ba812a66-f6b2-4bf6-9c76-b4cc38a47335' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'2f633e71-772e-443c-86f9-d14ac5739e72'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'dc3c5253-1c46-4e28-a7ac-ecec4c3e5729'; 
                    allocation '6c02fe65-e35d-46ae-b56f-ebb3c84548e6' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'d5183491-d279-4ae4-bc43-2af2ded749fe'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'dc3c5253-1c46-4e28-a7ac-ecec4c3e5729'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'dc3c5253-1c46-4e28-a7ac-ecec4c3e5729'.'180e3f9b-7016-4a1d-b7b3-9b8d0626866f',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'dc3c5253-1c46-4e28-a7ac-ecec4c3e5729'.'87bc69ca-1d44-47fd-a159-8ab722600fc7',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'dc3c5253-1c46-4e28-a7ac-ecec4c3e5729'.'ba812a66-f6b2-4bf6-9c76-b4cc38a47335',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'dc3c5253-1c46-4e28-a7ac-ecec4c3e5729'.'6c02fe65-e35d-46ae-b56f-ebb3c84548e6'); 
                }  
                interface '92b9742a-ca90-4a85-beff-ad0a0092b05a' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 6'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 4' { 
                    @CapellaID { eid = "92b9742a-ca90-4a85-beff-ad0a0092b05a"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "SRCS-O"; 
                    attribute :>> isOriented = false; 
                    allocation 'b86d2ba3-172b-4776-a640-d002b073bd68' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'b5cbd49d-791f-401c-bdc7-d3d7cf90de62'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'92b9742a-ca90-4a85-beff-ad0a0092b05a'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'92b9742a-ca90-4a85-beff-ad0a0092b05a'.'b86d2ba3-172b-4776-a640-d002b073bd68'); 
                }  
                interface 'e100c584-7280-41f8-9ef0-0b3ed114ef3e' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 6'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 8' { 
                    @CapellaID { eid = "e100c584-7280-41f8-9ef0-0b3ed114ef3e"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "O-SRCS-Remote"; 
                    attribute :>> isOriented = false; 
                    allocation 'b04a1325-470a-4c0a-a9fa-1d8fc700024b' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'cacc5436-8512-427e-93c1-5b1ff0401776'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'e100c584-7280-41f8-9ef0-0b3ed114ef3e'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'e100c584-7280-41f8-9ef0-0b3ed114ef3e'.'b04a1325-470a-4c0a-a9fa-1d8fc700024b'); 
                }  
                interface '039a651b-3d72-4016-9f79-ef84044b0c1a' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'PP 1'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 1' {
                    @CapellaID { eid = "039a651b-3d72-4016-9f79-ef84044b0c1a"; } 
                    attribute :>> interfaceName = "T-App Inputs"; 
                     
                }  
                interface 'd81ed2c2-c74d-41b4-b030-a8fa715ff779' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 3'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'PP 1' {
                    @CapellaID { eid = "d81ed2c2-c74d-41b4-b030-a8fa715ff779"; } 
                    attribute :>> interfaceName = "M-Wheel Forces"; 
                     
                }  
                interface '2c7d2724-e366-40a9-9596-af5ca9d555f8' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'PP 3'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 5' {
                    @CapellaID { eid = "2c7d2724-e366-40a9-9596-af5ca9d555f8"; } 
                    attribute :>> interfaceName = "V-Observation"; 
                     
                }  
                interface 'f282033f-22ee-47b5-b5de-1bc29af1f4db' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'PP 5'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 7' {
                    @CapellaID { eid = "f282033f-22ee-47b5-b5de-1bc29af1f4db"; } 
                    attribute :>> interfaceName = "T- Button Presses"; 
                     
                }  
                part 'Smart Robotic Car System' : SystemComponent { 
                    @CapellaID { eid = "0f9b8eca-bbd2-48c8-aeae-82a9c1d1c5ef"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    allocation 'bd0106b8-b6a6-404d-aa74-672569e97fdd' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Rocker Input'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Rocker Input' ; 
                    allocation 'e864e16f-7f8f-4b27-b520-75b7aa875a2a' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process Rocker Command'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process Rocker Command' ; 
                    allocation '7d820798-2e6a-4029-8f78-9f1888c4332d' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Drive Left Wheels'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Drive Left Wheels' ; 
                    allocation 'd43887fa-3f73-42c5-87d7-886faf8ef0df' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Driver Right Wheels'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Driver Right Wheels' ; 
                    allocation '2eb4fb1b-84fb-462a-9831-62ebbeff3421' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car' ; 
                    allocation '34d3d048-59fd-4127-9fc0-6dcb5daea620' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Manual Operation Button'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Manual Operation Button' ; 
                    allocation '72035e5b-98ea-41e5-a84b-6cb90a3d57b8' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process IR Remote Command'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process IR Remote Command' ; 
                    state 'System State Machine' : StateMachine  { 
                        @CapellaID { eid = "145483ab-f45d-4ca2-a6a7-977ac604741c"; } 
                        attribute :>> isControlOperator = false; 
                    }  
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "ea158669-de54-4ea6-9311-a448f34dd164"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '4bae2781-16d5-4ca1-942e-ba76006746c3' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 2'; 
                        ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 1'.'4bae2781-16d5-4ca1-942e-ba76006746c3'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "5b212f1f-6990-4810-aec1-740af218e1f4"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '4fc1b1cd-e0bf-4e52-9884-eae1a6018faa' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Rocker Input'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 2'.'4fc1b1cd-e0bf-4e52-9884-eae1a6018faa'); 
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "e2673869-3c7f-4767-adc8-433d456be6e1"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation 'e826a40c-fda1-4f44-a2a2-7a5f5448562d' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 3'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 4'; 
                        ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 3'.'e826a40c-fda1-4f44-a2a2-7a5f5448562d'); 
                    }  
                    port 'CP 4' : ComponentPort { 
                        @CapellaID { eid = "8317f48d-fcdb-4523-b664-ae4d1ba12a99"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '5eac14d7-9d4b-4663-a675-702c4bc085ca' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Driver Right Wheels'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 4'; 
                        ref allocation '13e0a47a-a5ef-4c6a-8c4d-888e3c6e9c51' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Drive Left Wheels'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 4'; 
                        ref allocation 'b6747e49-d3c9-43e4-b128-bbaa28122a8f' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 4'; 
                        ref allocation '08c6d5ba-8814-4598-b677-5ebb6db0565f' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'.'FIP 2'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 4'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 4'.'5eac14d7-9d4b-4663-a675-702c4bc085ca',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 4'.'13e0a47a-a5ef-4c6a-8c4d-888e3c6e9c51',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 4'.'b6747e49-d3c9-43e4-b128-bbaa28122a8f',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 4'.'08c6d5ba-8814-4598-b677-5ebb6db0565f'); 
                    }  
                    port 'PP 5' : PhysicalPort { 
                        @CapellaID { eid = "fec853ad-35d9-4e6c-b4f5-966e736c986d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation 'ba4fcac7-503b-476a-b6ed-4df29711605b' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 5'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 6'; 
                        ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 5'.'ba4fcac7-503b-476a-b6ed-4df29711605b'); 
                    }  
                    port 'CP 6' : ComponentPort { 
                        @CapellaID { eid = "c1a1c2b7-9ab6-4798-991d-f9038d1fd36f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '1bd5ecd9-9677-4e6e-a71c-30b2bdf76251' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 6'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 6'.'1bd5ecd9-9677-4e6e-a71c-30b2bdf76251'); 
                    }  
                    port 'PP 7' : PhysicalPort { 
                        @CapellaID { eid = "7dd7afa5-922e-477b-9519-8785c2542346"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '77204335-5c63-41a2-bf66-f90f7756da08' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 7'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 8'; 
                        ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'PP 7'.'77204335-5c63-41a2-bf66-f90f7756da08'); 
                    }  
                    port 'CP 8' : ComponentPort { 
                        @CapellaID { eid = "ffeacab1-7a62-49c8-b444-cb9d3f8f0db6"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '51fe922a-8773-44ca-830e-be0e7d29deff' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Manual Operation Button'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 8'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'CP 8'.'51fe922a-8773-44ca-830e-be0e7d29deff'); 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'bd0106b8-b6a6-404d-aa74-672569e97fdd',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'e864e16f-7f8f-4b27-b520-75b7aa875a2a',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'7d820798-2e6a-4029-8f78-9f1888c4332d',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'d43887fa-3f73-42c5-87d7-886faf8ef0df',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'2eb4fb1b-84fb-462a-9831-62ebbeff3421',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'34d3d048-59fd-4127-9fc0-6dcb5daea620',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'72035e5b-98ea-41e5-a84b-6cb90a3d57b8'); 
                    ref :>> ownedStateMachines =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Smart Robotic Car System'.'System State Machine'); 
                }  
                part 'Operator' : SystemComponent { 
                    @CapellaID { eid = "a95aa665-e046-4978-b5cb-81d336b5082f"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
                    allocation '20092301-51ef-4168-b272-cdf7456e3ec8' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Rocker'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Rocker' ; 
                    allocation 'ed23f5f0-13a9-4c2d-a397-71ee26239de5' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Observe Vehicle '
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Observe Vehicle ' ; 
                    allocation '6a99e66a-4d77-4790-a647-1f30e572b742' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Direction Stop Buttons'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Direction Stop Buttons' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "2a7a16c7-027f-4b98-b784-08a467fd625d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '33fd4212-1134-45d6-87ee-56592821ab66' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'PP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 2'; 
                        ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'PP 1'.'33fd4212-1134-45d6-87ee-56592821ab66'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "a84999cc-60d2-49ff-9c81-648b6f597a36"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '58522863-3c9f-472e-9897-d1d7539446b7' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Rocker'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 2'.'58522863-3c9f-472e-9897-d1d7539446b7'); 
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "b3b980ff-20b5-4cff-b2cb-059eba102b37"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '66b34f39-946c-4e49-bf3c-e600526c6c3c' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'PP 3'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 4'; 
                        ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'PP 3'.'66b34f39-946c-4e49-bf3c-e600526c6c3c'); 
                    }  
                    port 'CP 4' : ComponentPort { 
                        @CapellaID { eid = "4e1e11a3-f629-4475-834d-0735b19b3077"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'f1c7bd2a-6e86-494b-ab62-2ea716c085ab' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Observe Vehicle '.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 4'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 4'.'f1c7bd2a-6e86-494b-ab62-2ea716c085ab'); 
                    }  
                    port 'PP 5' : PhysicalPort { 
                        @CapellaID { eid = "7165bc92-d694-46fa-a5f7-3f64bbde374e"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '5dccee19-895d-4548-934d-8d937c49cf6c' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'PP 5'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 6'; 
                        ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'PP 5'.'5dccee19-895d-4548-934d-8d937c49cf6c'); 
                    }  
                    port 'CP 6' : ComponentPort { 
                        @CapellaID { eid = "d38ff021-e41c-4294-93e0-0ee5c2f9d5f2"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'a94874d9-61c6-4043-8119-064f3eecaafc' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Direction Stop Buttons'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 6'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'CP 6'.'a94874d9-61c6-4043-8119-064f3eecaafc'); 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'20092301-51ef-4168-b272-cdf7456e3ec8',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'ed23f5f0-13a9-4c2d-a397-71ee26239de5',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Operator'.'6a99e66a-4d77-4790-a647-1f30e572b742'); 
                }  
                part 'Environment' : SystemComponent { 
                    @CapellaID { eid = "60e07163-55d6-4c95-a045-ed0f9da967cf"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    allocation '6db072c5-c758-4652-8a71-42840857e003' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Left Wheel Resistance'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Left Wheel Resistance' ; 
                    allocation '282387f1-1aa4-47cd-8076-795acbf504b0' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Right Wheel Resistance'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Right Wheel Resistance' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "f86c908f-7af0-4763-acd5-6b66bf630e60"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '8698885b-a08d-46ad-8f6f-7e28a1d337fc' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'PP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'CP 2'; 
                        ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'PP 1'.'8698885b-a08d-46ad-8f6f-7e28a1d337fc'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "6b1c0e3c-bc53-4056-89a0-ca0ec1108135"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '1a7fbb52-36a2-45a6-8e92-96c4a9e5d8a9' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Right Wheel Resistance'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'CP 2'; 
                        ref allocation '4042caab-264f-4254-83fc-489faa24657c' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Left Wheel Resistance'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'CP 2'; 
                        ref allocation '40c53a76-97c6-4857-a764-bf40eb319e04' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Right Wheel Resistance'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'CP 2'; 
                        ref allocation '60bd0a29-4f09-4fb4-8fbf-8e4495ed2880' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Left Wheel Resistance'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'CP 2'.'1a7fbb52-36a2-45a6-8e92-96c4a9e5d8a9',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'CP 2'.'4042caab-264f-4254-83fc-489faa24657c',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'CP 2'.'40c53a76-97c6-4857-a764-bf40eb319e04',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'CP 2'.'60bd0a29-4f09-4fb4-8fbf-8e4495ed2880'); 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'6db072c5-c758-4652-8a71-42840857e003',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Structure'::'Environment'.'282387f1-1aa4-47cd-8076-795acbf504b0'); 
                }  
            } 
            package  'System Functions' {
                @PackageMeta {
                    type = "SystemFunctionPkg";
                } 
                @CapellaID { eid = "a2a8a52f-fc13-4d21-9a8a-62fa0d4892fe"; } 
                action 'Root System Function' : SystemFunction  { 
                    @CapellaID { eid = "1ec1b6fc-bb11-4be6-922f-6dbd23c6de90"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    action 'App Rocker Remote Control' : FunctionalChain  { 
                        @CapellaID { eid = "f7f7e799-f44a-4abb-83f7-4bbff4400209"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        connection 'a074b32a-4fd0-4cda-ae8b-8fb5a35bfe92' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'App Rocker Remote Control'.'eadb2481-47f0-47dc-af4d-b0d66f4857ce'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'App Rocker Remote Control'.'8e867f77-e0fb-4723-a924-09504f3d8450' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'e90c8b53-8596-4da3-b291-ad49fbdb3015';

                            } 
                        ref action '8e867f77-e0fb-4723-a924-09504f3d8450' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Rocker Input'; 
                        ref action 'eadb2481-47f0-47dc-af4d-b0d66f4857ce' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Rocker'; 
                        connection 'b7be9afe-07f7-48d4-b02c-370e55a0652b' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'App Rocker Remote Control'.'8e867f77-e0fb-4723-a924-09504f3d8450'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'App Rocker Remote Control'.'8d10e746-7307-442c-a82e-db1e1cc3d4df' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'8f9eaa7b-b2e3-4c1e-835d-1a4035c34680';

                            } 
                        ref action '8d10e746-7307-442c-a82e-db1e1cc3d4df' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process Rocker Command'; 
                        ref action '04d4e253-cb6e-4b6d-9902-641c9e41f575' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'; 
                        connection 'f0e0d17e-2307-44b5-a665-134983695ad1' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'App Rocker Remote Control'.'8d10e746-7307-442c-a82e-db1e1cc3d4df'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'53b5b42b-db6b-47be-b5c0-4fa982aa726f' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'194714cd-3dd0-478e-a04f-c8b0cb6dc9c7';

                            } 
                        connection 'd07f46d1-02dc-4a76-a57d-c0a5dc5aa955' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'App Rocker Remote Control'.'8d10e746-7307-442c-a82e-db1e1cc3d4df'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'642541b9-d350-4a27-94ce-91dac1db8641' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'4cea9a0a-b03b-4e6f-beb1-75d3659f5df3';

                            } 
                    }  
                    action 'IR Remote Control;' : FunctionalChain  { 
                        @CapellaID { eid = "2acf1ea8-a1b6-4057-9245-901f4a394061"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        connection 'a70814ef-4278-479f-8afd-bf1d7283bb07' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'IR Remote Control;'.'00865378-4d0f-4a5e-81ba-9bcc29bf645c'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'IR Remote Control;'.'e04cf9eb-ece0-4078-a124-499af2fd9b36' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'cacc5436-8512-427e-93c1-5b1ff0401776';

                            } 
                        ref action 'e04cf9eb-ece0-4078-a124-499af2fd9b36' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Manual Operation Button'; 
                        ref action '00865378-4d0f-4a5e-81ba-9bcc29bf645c' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Direction Stop Buttons'; 
                        ref action '8bfc269f-fa24-4d38-9a09-f14f57259890' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'; 
                        ref action '3f711bf1-d560-407b-8171-4d4295a01ef4' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process IR Remote Command'; 
                        connection 'ca997cd6-70e7-40f1-adb6-bdc936bde722' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'IR Remote Control;'.'e04cf9eb-ece0-4078-a124-499af2fd9b36'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'IR Remote Control;'.'3f711bf1-d560-407b-8171-4d4295a01ef4' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'4849209b-4e74-4cad-a1c8-a0d4986e7017';

                            } 
                        connection 'ab159b08-1c06-4421-8885-58417ab99b7d' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'IR Remote Control;'.'3f711bf1-d560-407b-8171-4d4295a01ef4'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'642541b9-d350-4a27-94ce-91dac1db8641' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'e61674e8-1ffc-4a95-bed8-46ce0a3b2480';

                            } 
                        connection '1b128003-5eb3-4ea0-9ef5-20bcf74c0ff9' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'IR Remote Control;'.'3f711bf1-d560-407b-8171-4d4295a01ef4'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'53b5b42b-db6b-47be-b5c0-4fa982aa726f' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'9f757ecd-1757-48c4-a3fb-d083e8f11787';

                            } 
                    }  
                    action 'Deliver Drive Command' : FunctionalChain  { 
                        @CapellaID { eid = "f7366b2f-4a91-4101-abb4-07937679d02c"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '53b5b42b-db6b-47be-b5c0-4fa982aa726f' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Drive Left Wheels'; 
                        ref action '642541b9-d350-4a27-94ce-91dac1db8641' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Driver Right Wheels'; 
                        connection 'c3aeab8c-296c-438b-80a7-d73657534132' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'53b5b42b-db6b-47be-b5c0-4fa982aa726f'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'18fa7cf7-1558-4bc6-bce2-3d47156411ff' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'791a7632-d6ac-4d8e-887d-3b10bf34f37b';

                            } 
                        ref action '18fa7cf7-1558-4bc6-bce2-3d47156411ff' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Left Wheel Resistance'; 
                        connection '1d2aac4f-85a5-4a05-8f34-14661fbec659' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'642541b9-d350-4a27-94ce-91dac1db8641'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'e2cda26a-ba2f-4e1d-a621-30065aa6efc8' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'b03a367b-cc7a-4d8f-a33e-5e96692a48fa';

                            } 
                        ref action 'e2cda26a-ba2f-4e1d-a621-30065aa6efc8' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Right Wheel Resistance'; 
                        connection '33a725a4-0af4-469c-814f-eb0e1dd5ad29' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'18fa7cf7-1558-4bc6-bce2-3d47156411ff'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'deca70cf-3315-44ca-9cf0-6b09b03052ee' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'d5183491-d279-4ae4-bc43-2af2ded749fe';

                            } 
                        ref action 'deca70cf-3315-44ca-9cf0-6b09b03052ee' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'; 
                        connection 'f33880ba-202f-4080-ba79-8c501228e9e8' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'e2cda26a-ba2f-4e1d-a621-30065aa6efc8'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'deca70cf-3315-44ca-9cf0-6b09b03052ee' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'2f633e71-772e-443c-86f9-d14ac5739e72';

                            } 
                        connection '9acf479b-e10c-4673-8479-f04b8e0b78cd' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'deca70cf-3315-44ca-9cf0-6b09b03052ee'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Deliver Drive Command'.'2fd77d41-e3fd-4987-96a6-6bb6a9bcaf05' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'b5cbd49d-791f-401c-bdc7-d3d7cf90de62';

                            } 
                        ref action '2fd77d41-e3fd-4987-96a6-6bb6a9bcaf05' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Observe Vehicle '; 
                    }  
                    action 'Interact with Rocker' : SystemFunction  { 
                        @CapellaID { eid = "3578fd3a-f761-43ec-a951-d961e51ba981"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "a7d3548a-c2df-4462-b9e2-cdc1f5ec49e4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile App Input'); 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Rocker'.'FOP 1'); 
                    }  
                    action 'Recieve Rocker Input' : SystemFunction  { 
                        @CapellaID { eid = "97a1f925-b758-415e-905e-1017fa7bd396"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "1e0960f1-dbf6-4b60-be77-cccee9634dc7"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Rocker State'); 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "740992b0-1e55-4032-9a53-3daee297c709"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile App Input'); 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Rocker Input'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Rocker Input'.'FIP 1'); 
                    }  
                    action 'Process Rocker Command' : SystemFunction  { 
                        @CapellaID { eid = "10ddfa27-04e8-48c0-a9f5-b3b923ed2801"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "9fa3fc83-380d-4da6-92be-384795a37447"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "9f058590-ef04-439f-bb5b-4e99c5292657"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "4eaed06b-f46c-4f74-b602-bf88c9f9bd8f"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Rocker State'); 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process Rocker Command'.'FOP 1',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process Rocker Command'.'FOP 2'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process Rocker Command'.'FIP 1'); 
                    }  
                    action 'Drive Left Wheels' : SystemFunction  { 
                        @CapellaID { eid = "e3777634-ca3b-47d0-91a8-5fef59d83c28"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "70fd6b76-d66a-466c-b103-39afb55be3ad"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "dc926192-af5e-4c32-af8d-a3c82d1e2980"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Drive Left Wheels'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Drive Left Wheels'.'FIP 1'); 
                    }  
                    action 'Driver Right Wheels' : SystemFunction  { 
                        @CapellaID { eid = "df66f1a5-731f-4192-8c30-cd41e689e00a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "c7d3a2e6-b35b-4899-96ad-00976c76b207"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "d1b60fd6-3a93-417e-82aa-e5b0418aac98"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Driver Right Wheels'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Driver Right Wheels'.'FIP 1'); 
                    }  
                    action 'Provide Left Wheel Resistance' : SystemFunction  { 
                        @CapellaID { eid = "2fcfc597-9ea6-40df-998d-8453d3471637"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "5ece90c4-a0a9-426b-88bf-b11da9eaa3f9"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "4a9bef0b-da6a-4cae-810d-67bbe4970e07"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Left Wheel Resistance'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Left Wheel Resistance'.'FIP 1'); 
                    }  
                    action 'Provide Right Wheel Resistance' : SystemFunction  { 
                        @CapellaID { eid = "950dc08e-d081-4a7a-895a-da2cc7ba5344"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "cf542ce4-3600-45f3-accd-77e4c5ac1163"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "f4647c6c-7e44-46f3-bd7e-a9d45270f76b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Right Wheel Resistance'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Right Wheel Resistance'.'FIP 1'); 
                    }  
                    action 'Move Car' : SystemFunction  { 
                        @CapellaID { eid = "29bf85e6-eca7-4096-bf03-c489c91082bf"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "cb490705-c674-438a-89ff-9db4491d5aa9"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'); 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "ddcc739b-c2ad-4cab-bedc-cc5a2bfd0693"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "b901aff3-9b4f-47b2-bbe6-ade69aeb9724"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'.'FIP 1',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'.'FIP 2'); 
                    }  
                    action 'Observe Vehicle ' : SystemFunction  { 
                        @CapellaID { eid = "e8f0207c-21a2-4360-a9d2-a2058a33c1a3"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "fc817ecb-544b-4234-aea5-32d37912d965"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'); 
                        }  
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Observe Vehicle '.'FIP 1'); 
                    }  
                    action 'Interact with Direction Stop Buttons' : SystemFunction  { 
                        @CapellaID { eid = "c3920977-c956-4861-b7af-231d18483944"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "210cfbd7-1001-4dab-a39a-ddfd62802396"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'); 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Direction Stop Buttons'.'FOP 1'); 
                    }  
                    action 'Recieve Manual Operation Button' : SystemFunction  { 
                        @CapellaID { eid = "ad892c24-277c-4229-9270-2d15b316b5bc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "5690b902-fa21-4be8-8ff0-d7d1acc3a18b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Button Message'); 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "31b2f0dc-ee94-4373-80e5-8fe194f0f023"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'); 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Manual Operation Button'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Manual Operation Button'.'FIP 1'); 
                    }  
                    action 'Process IR Remote Command' : SystemFunction  { 
                        @CapellaID { eid = "c4d28ab5-4af7-46f2-b07c-29b5612fd421"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "0fe242f5-3119-4d21-bece-c8290a21f3a4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "5d71150e-09fb-44f2-a40e-ca4d6a742624"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "7148008a-7210-4834-8eb3-b0e01b3f6b44"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Button Message'); 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process IR Remote Command'.'FOP 1',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process IR Remote Command'.'FOP 2'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process IR Remote Command'.'FIP 1'); 
                    }  
                    interface 'e90c8b53-8596-4da3-b291-ad49fbdb3015' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Rocker'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Rocker Input'.'FIP 1' { 
                        @CapellaID { eid = "e90c8b53-8596-4da3-b291-ad49fbdb3015"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Tactile Rocker Input"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile App Input'); 
                    }  
                    interface '8f9eaa7b-b2e3-4c1e-835d-1a4035c34680' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Rocker Input'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process Rocker Command'.'FIP 1' { 
                        @CapellaID { eid = "8f9eaa7b-b2e3-4c1e-835d-1a4035c34680"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "App Rocker Cmds"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Rocker State'); 
                    }  
                    interface '194714cd-3dd0-478e-a04f-c8b0cb6dc9c7' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process Rocker Command'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Drive Left Wheels'.'FIP 1' { 
                        @CapellaID { eid = "194714cd-3dd0-478e-a04f-c8b0cb6dc9c7"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Power"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                    }  
                    interface '4cea9a0a-b03b-4e6f-beb1-75d3659f5df3' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process Rocker Command'.'FOP 2'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Driver Right Wheels'.'FIP 1' { 
                        @CapellaID { eid = "4cea9a0a-b03b-4e6f-beb1-75d3659f5df3"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Power"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                    }  
                    interface '791a7632-d6ac-4d8e-887d-3b10bf34f37b' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Drive Left Wheels'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Left Wheel Resistance'.'FIP 1' { 
                        @CapellaID { eid = "791a7632-d6ac-4d8e-887d-3b10bf34f37b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Torgue"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Torque'); 
                    }  
                    interface 'b03a367b-cc7a-4d8f-a33e-5e96692a48fa' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Driver Right Wheels'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Right Wheel Resistance'.'FIP 1' { 
                        @CapellaID { eid = "b03a367b-cc7a-4d8f-a33e-5e96692a48fa"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Torque"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Torque'); 
                    }  
                    interface '2f633e71-772e-443c-86f9-d14ac5739e72' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Right Wheel Resistance'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'.'FIP 1' { 
                        @CapellaID { eid = "2f633e71-772e-443c-86f9-d14ac5739e72"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Realized Right Wheel Torquw"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Realized Torque'); 
                    }  
                    interface 'd5183491-d279-4ae4-bc43-2af2ded749fe' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Left Wheel Resistance'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'.'FIP 2' { 
                        @CapellaID { eid = "d5183491-d279-4ae4-bc43-2af2ded749fe"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Realized Left Wheel Torque"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Realized Torque'); 
                    }  
                    interface 'b5cbd49d-791f-401c-bdc7-d3d7cf90de62' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Observe Vehicle '.'FIP 1' { 
                        @CapellaID { eid = "b5cbd49d-791f-401c-bdc7-d3d7cf90de62"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Car Dynamic"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'); 
                    }  
                    interface '9f757ecd-1757-48c4-a3fb-d083e8f11787' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process IR Remote Command'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Drive Left Wheels'.'FIP 1' { 
                        @CapellaID { eid = "9f757ecd-1757-48c4-a3fb-d083e8f11787"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "FunctionalExchange 10"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                    }  
                    interface 'e61674e8-1ffc-4a95-bed8-46ce0a3b2480' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process IR Remote Command'.'FOP 2'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Driver Right Wheels'.'FIP 1' { 
                        @CapellaID { eid = "e61674e8-1ffc-4a95-bed8-46ce0a3b2480"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "FunctionalExchange 11"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                    }  
                    interface '4849209b-4e74-4cad-a1c8-a0d4986e7017' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Manual Operation Button'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process IR Remote Command'.'FIP 1' { 
                        @CapellaID { eid = "4849209b-4e74-4cad-a1c8-a0d4986e7017"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "IR Signals"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Button Message'); 
                    }  
                    interface 'cacc5436-8512-427e-93c1-5b1ff0401776' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Direction Stop Buttons'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Manual Operation Button'.'FIP 1' { 
                        @CapellaID { eid = "cacc5436-8512-427e-93c1-5b1ff0401776"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Button Presses"; 
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'); 
                    }  
                     
                    ref :>> ownedFunctions =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Rocker',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Rocker Input',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process Rocker Command',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Drive Left Wheels',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Driver Right Wheels',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Left Wheel Resistance',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Right Wheel Resistance',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Move Car',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Observe Vehicle ',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Interact with Direction Stop Buttons',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Recieve Manual Operation Button',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'Process IR Remote Command'); 
                    ref :>> ownedFunctionalExchanges =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'e90c8b53-8596-4da3-b291-ad49fbdb3015',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'8f9eaa7b-b2e3-4c1e-835d-1a4035c34680',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'194714cd-3dd0-478e-a04f-c8b0cb6dc9c7',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'4cea9a0a-b03b-4e6f-beb1-75d3659f5df3',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'791a7632-d6ac-4d8e-887d-3b10bf34f37b',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'b03a367b-cc7a-4d8f-a33e-5e96692a48fa',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'2f633e71-772e-443c-86f9-d14ac5739e72',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'d5183491-d279-4ae4-bc43-2af2ded749fe',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'b5cbd49d-791f-401c-bdc7-d3d7cf90de62',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'9f757ecd-1757-48c4-a3fb-d083e8f11787',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'e61674e8-1ffc-4a95-bed8-46ce0a3b2480',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'4849209b-4e74-4cad-a1c8-a0d4986e7017',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'System Functions'::'Root System Function'.'cacc5436-8512-427e-93c1-5b1ff0401776'); 
                }  
            } 
        } 
        package  'Logical Architecture' {
            @PackageMeta {
                type = "LogicalArchitecture";
            } 
            @CapellaID { eid = "d4959566-1705-473a-bcfe-47fc0d297456"; } 
            package  'Structure' {
                @PackageMeta {
                    type = "LogicalComponentPkg";
                } 
                @CapellaID { eid = "bf436b1c-a704-4b51-9ce1-637a73b23c13"; } 
                interface 'd2a52c36-555f-423d-8c7c-60afa12e3826' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'CP 2'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 2' { 
                    @CapellaID { eid = "d2a52c36-555f-423d-8c7c-60afa12e3826"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "O-SRC"; 
                    attribute :>> isOriented = false; 
                    allocation '06ef74d9-4cbe-4f16-89ca-ab7fe71e3cb8' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'721678bc-6116-4557-b3ce-a95ee1bf089a'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'d2a52c36-555f-423d-8c7c-60afa12e3826'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'d2a52c36-555f-423d-8c7c-60afa12e3826'.'06ef74d9-4cbe-4f16-89ca-ab7fe71e3cb8'); 
                     
                }  
                interface '921d6a5a-97ad-4a5a-a51e-2625bc130eae' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 4'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'CP 2' { 
                    @CapellaID { eid = "921d6a5a-97ad-4a5a-a51e-2625bc130eae"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "SRC-E"; 
                    attribute :>> isOriented = false; 
                    allocation 'fb16d56f-d8df-47d0-8395-c25e1d01a3ec' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'9fe7db97-7598-4ca5-9f43-725688bdc04c'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'921d6a5a-97ad-4a5a-a51e-2625bc130eae'; 
                    allocation '7990d966-ce89-423a-b112-4db5d0029fdc' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'b27750af-4dce-4d69-8499-a79a5a64af02'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'921d6a5a-97ad-4a5a-a51e-2625bc130eae'; 
                    allocation '3e40eb14-1244-4c1f-a670-1c4fcd58eba4' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'6dfa87f6-136a-4da1-ad54-b7f51533cc30'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'921d6a5a-97ad-4a5a-a51e-2625bc130eae'; 
                    allocation 'c5752247-3456-40f1-be13-84de0da82b48' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'41dda91e-7cbc-4e42-b125-0f59b5d89f18'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'921d6a5a-97ad-4a5a-a51e-2625bc130eae'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'921d6a5a-97ad-4a5a-a51e-2625bc130eae'.'fb16d56f-d8df-47d0-8395-c25e1d01a3ec',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'921d6a5a-97ad-4a5a-a51e-2625bc130eae'.'7990d966-ce89-423a-b112-4db5d0029fdc',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'921d6a5a-97ad-4a5a-a51e-2625bc130eae'.'3e40eb14-1244-4c1f-a670-1c4fcd58eba4',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'921d6a5a-97ad-4a5a-a51e-2625bc130eae'.'c5752247-3456-40f1-be13-84de0da82b48'); 
                     
                }  
                interface '952af489-ee9d-4095-a161-b296e5523d17' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 6'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'CP 4' { 
                    @CapellaID { eid = "952af489-ee9d-4095-a161-b296e5523d17"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "SRCS-O"; 
                    attribute :>> isOriented = false; 
                    allocation 'b237a540-de47-41dd-86fe-7d8f42806a69' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'26347e70-56f6-4670-a2a7-6ab1edc54296'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'952af489-ee9d-4095-a161-b296e5523d17'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'952af489-ee9d-4095-a161-b296e5523d17'.'b237a540-de47-41dd-86fe-7d8f42806a69'); 
                     
                }  
                interface '9ecab3f0-3584-40df-a029-4fc34b5ffc23' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'CP 6'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 8' { 
                    @CapellaID { eid = "9ecab3f0-3584-40df-a029-4fc34b5ffc23"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "O-SRCS-Remote"; 
                    attribute :>> isOriented = false; 
                    allocation '611f6467-9b82-4893-905d-807d536f5b38' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'63be5c88-b726-47e6-97e7-b76904033445'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'9ecab3f0-3584-40df-a029-4fc34b5ffc23'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'9ecab3f0-3584-40df-a029-4fc34b5ffc23'.'611f6467-9b82-4893-905d-807d536f5b38'); 
                     
                }  
                interface '8b8c274b-0e00-4b6b-b4b6-982d3ac53370' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'PP 1'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'PP 1' {
                    @CapellaID { eid = "8b8c274b-0e00-4b6b-b4b6-982d3ac53370"; } 
                    attribute :>> interfaceName = "T-App Inputs"; 
                     
                     
                }  
                interface 'f659faf9-c674-47a7-a9dc-8f2947a52639' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'PP 3'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'PP 1' {
                    @CapellaID { eid = "f659faf9-c674-47a7-a9dc-8f2947a52639"; } 
                    attribute :>> interfaceName = "M-Wheel Forces"; 
                     
                     
                }  
                interface '5f7ca666-c58b-4ca6-b0a9-94b5492eaecd' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'PP 3'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'PP 5' {
                    @CapellaID { eid = "5f7ca666-c58b-4ca6-b0a9-94b5492eaecd"; } 
                    attribute :>> interfaceName = "V-Observation"; 
                     
                     
                }  
                interface '41480c20-6053-4118-8e67-c60d5095c6eb' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'PP 5'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'PP 7' {
                    @CapellaID { eid = "41480c20-6053-4118-8e67-c60d5095c6eb"; } 
                    attribute :>> interfaceName = "T- Button Presses"; 
                     
                     
                }  
                part 'Logical System' : LogicalComponent { 
                    @CapellaID { eid = "56deb524-4118-4f4c-a69f-317d753e0290"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "10e21207-9750-49a8-ac4f-fe3771401413"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "b1e5ee29-cf1d-4d7e-b1ce-539db3234cd4"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'f376d03b-78cc-42bd-9e3d-0b91ea5bb29d' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Rocker Input'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 2'.'f376d03b-78cc-42bd-9e3d-0b91ea5bb29d'); 
                         
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "2afd8cb3-ca68-49d7-b108-1a4035d9aadd"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 4' : ComponentPort { 
                        @CapellaID { eid = "63e12847-c240-48ad-9a11-e3117d266a81"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '96ce883f-a654-4910-83e6-3c84e882fe9f' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Driver Right Wheels'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 4'; 
                        ref allocation 'a1e7d191-f65b-4543-ad6a-9e0c675d0ffe' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Drive Left Wheels'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 4'; 
                        ref allocation '9496e46f-13f8-4997-8329-555481ba483b' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 4'; 
                        ref allocation '5f5b3172-4270-4355-bb17-0ad2ab7c0498' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car'.'FIP 2'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 4'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 4'.'96ce883f-a654-4910-83e6-3c84e882fe9f',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 4'.'a1e7d191-f65b-4543-ad6a-9e0c675d0ffe',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 4'.'9496e46f-13f8-4997-8329-555481ba483b',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 4'.'5f5b3172-4270-4355-bb17-0ad2ab7c0498'); 
                         
                    }  
                    port 'PP 5' : PhysicalPort { 
                        @CapellaID { eid = "14120876-b7d5-46a7-ba46-b859d7ae23bc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 6' : ComponentPort { 
                        @CapellaID { eid = "e6f86024-289d-4d34-9109-d590c65b3eed"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '23925130-8a0c-49ab-9341-d095bd1868f7' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 6'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 6'.'23925130-8a0c-49ab-9341-d095bd1868f7'); 
                         
                    }  
                    port 'PP 7' : PhysicalPort { 
                        @CapellaID { eid = "e2efa8dd-a974-4c1a-be42-ed0ff4b966d9"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 8' : ComponentPort { 
                        @CapellaID { eid = "da370f6b-19b3-4f54-8583-416811bbfb0c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '2d374ba7-e558-4d58-8c68-1201b1ea7bcf' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Manual Operation Button'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 8'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'.'CP 8'.'2d374ba7-e558-4d58-8c68-1201b1ea7bcf'); 
                         
                    }  
                     
                     
                }  
                part 'Operator' : LogicalComponent { 
                    @CapellaID { eid = "20d72b01-8391-4276-bb49-1efe2769e6c9"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation '3013494b-179a-4895-9855-b78eb513f5ca' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Rocker'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Rocker' ; 
                    allocation '3e68cbb2-f102-4ab2-b605-17036907be73' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Observe Vehicle '
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Observe Vehicle ' ; 
                    allocation '288a69c5-e924-4e95-a2be-b7231ce280e4' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Direction Stop Buttons'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Direction Stop Buttons' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "2ae1da22-58bb-4f2a-9625-a1bdf21779d5"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "6a6a88f6-84c7-4cc5-a683-d2e1be815964"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '8c7b3561-8740-4ec1-a6d8-436465cb3d1b' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Rocker'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'CP 2'.'8c7b3561-8740-4ec1-a6d8-436465cb3d1b'); 
                         
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "6c473c0f-7c39-4e49-b2bb-619cedc7174e"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 4' : ComponentPort { 
                        @CapellaID { eid = "3417e4ff-a9e0-4fcf-8f09-c562aabb9fe9"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'f0512be9-c10c-4176-ae7b-46f526d2e817' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Observe Vehicle '.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'CP 4'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'CP 4'.'f0512be9-c10c-4176-ae7b-46f526d2e817'); 
                         
                    }  
                    port 'PP 5' : PhysicalPort { 
                        @CapellaID { eid = "d2f44fc0-d8a0-4055-9c17-c1b51ddf4a06"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 6' : ComponentPort { 
                        @CapellaID { eid = "8571a0d1-f849-481c-8197-81bd7c2de9c0"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'bb0fec03-bb7c-419e-84d9-1b229694409f' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Direction Stop Buttons'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'CP 6'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'CP 6'.'bb0fec03-bb7c-419e-84d9-1b229694409f'); 
                         
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'3013494b-179a-4895-9855-b78eb513f5ca',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'3e68cbb2-f102-4ab2-b605-17036907be73',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'.'288a69c5-e924-4e95-a2be-b7231ce280e4'); 
                     
                }  
                part 'Environment' : LogicalComponent { 
                    @CapellaID { eid = "8f5e6042-5024-4cd0-aaa8-b56709f46cca"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    allocation 'a44bbec1-4a1a-4053-b80b-e9636ed4c756' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Left Wheel Resistance'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Left Wheel Resistance' ; 
                    allocation '6ae4aa61-09cf-4914-93d5-0d7fbfb30116' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Right Wheel Resistance'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Right Wheel Resistance' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "eed055dc-8ad8-4dc5-be33-0216b4bc824e"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "b8a78572-6b49-4f32-90eb-01da74163ea4"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'f362d1c8-8b19-4d27-8bf0-4407a58208f5' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Right Wheel Resistance'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'CP 2'; 
                        ref allocation '7ee60971-a305-430e-910e-fc5f7f86722e' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Left Wheel Resistance'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'CP 2'; 
                        ref allocation 'cf565708-8286-406b-b90b-8d7f6fdf38e5' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Right Wheel Resistance'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'CP 2'; 
                        ref allocation '4ebfc067-e0bc-47d9-84e4-323191d9079e' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Left Wheel Resistance'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'CP 2'.'f362d1c8-8b19-4d27-8bf0-4407a58208f5',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'CP 2'.'7ee60971-a305-430e-910e-fc5f7f86722e',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'CP 2'.'cf565708-8286-406b-b90b-8d7f6fdf38e5',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'CP 2'.'4ebfc067-e0bc-47d9-84e4-323191d9079e'); 
                         
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'a44bbec1-4a1a-4053-b80b-e9636ed4c756',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Environment'.'6ae4aa61-09cf-4914-93d5-0d7fbfb30116'); 
                     
                }  
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "661777b9-229c-4bf3-8db4-955df00eff83"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "dcdb398d-fac9-4ea4-99c0-62db5bf64c14"; } 
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "85cb57c5-0665-47a5-bc14-0b1213f5a2f5"; } 
                use case 'Operate with a Remote' : CapabilityRealization { 
                    @CapellaID { eid = "c05c07c6-6112-4d9c-8388-1f22167d01f0"; } 
                    ref action '990de6a7-7f0b-40ab-a38a-beec1a97bced' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'IR Remote Control;'; 
                    actor 'Logical System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'; 
                     
                     
                }  
                use case 'Forward' : CapabilityRealization { 
                    @CapellaID { eid = "0d6ad6b6-1c13-4e1c-a66d-2577575fde5b"; } 
                    ref action 'c6e7c51d-2b9f-45b6-9b27-e31b979b5fca' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'; 
                    actor 'Logical System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'; 
                     
                     
                }  
                use case 'Turn left' : CapabilityRealization { 
                    @CapellaID { eid = "cd48936d-54b3-4716-9878-56b6ec2977a5"; } 
                    ref action '95e7e9e3-9ba9-41b2-8e21-460f162e9325' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'; 
                    actor 'Logical System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'; 
                     
                     
                }  
                use case 'Backward' : CapabilityRealization { 
                    @CapellaID { eid = "67f4550d-3509-4dd2-989d-29872e7cc34d"; } 
                    ref action 'ad24f450-39a3-4ca1-81cb-ce3fa16715d3' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'; 
                    actor 'Logical System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'; 
                     
                     
                }  
                use case 'Turn Right' : CapabilityRealization { 
                    @CapellaID { eid = "b8b561ba-6de5-4010-bc70-8a4f63c41099"; } 
                    ref action 'b9089924-0f16-4b5f-86df-17c07f287fd9' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'; 
                    actor 'Logical System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'; 
                     
                     
                }  
                use case 'Rocker Remote' : CapabilityRealization { 
                    @CapellaID { eid = "b33e53e2-1e3d-4d04-87d7-b517a1a34122"; } 
                    ref action '734b09f5-c480-4cf8-a145-3ae9d071087a' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'App Rocker Remote Control'; 
                    actor 'Logical System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'; 
                     
                     
                }  
                use case 'Stop' : CapabilityRealization { 
                    @CapellaID { eid = "1a24def7-434c-489b-9ac9-e91e2004b531"; } 
                    ref action 'bd6107cd-1a23-4d02-a214-d8fa8d81fff7' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'; 
                    actor 'Logical System' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Logical System'; 
                    actor 'Operator' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Structure'::'Operator'; 
                     
                     
                }  
            } 
            package  'Logical Functions' {
                @PackageMeta {
                    type = "LogicalFunctionPkg";
                } 
                @CapellaID { eid = "a2e3052c-a611-4c45-9e8f-de38f66ea544"; } 
                action 'Root Logical Function' : LogicalFunction  { 
                    @CapellaID { eid = "e9e96839-dac8-4dee-9022-0d4c8576c127"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    action 'App Rocker Remote Control' : FunctionalChain  { 
                        @CapellaID { eid = "27092907-1801-48ff-8dd7-83303de78b57"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        connection '01c88d82-5bab-44f8-80a4-e360538ed5b9' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'App Rocker Remote Control'.'c328fa56-ef7a-47f5-857d-dd618c2de70d'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'App Rocker Remote Control'.'d6614d17-ebb3-46ec-831f-a02e872a014d' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'721678bc-6116-4557-b3ce-a95ee1bf089a';

                            } 
                        ref action 'd6614d17-ebb3-46ec-831f-a02e872a014d' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Rocker Input'; 
                        ref action 'c328fa56-ef7a-47f5-857d-dd618c2de70d' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Rocker'; 
                        connection 'db47c843-9fde-4c76-be08-e2e0166976bd' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'App Rocker Remote Control'.'d6614d17-ebb3-46ec-831f-a02e872a014d'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'App Rocker Remote Control'.'5c2673a5-5a4a-493a-8c91-ae91ad7883dc' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'9a055a7f-e024-4055-8e7f-61af9d5a9a21';

                            } 
                        ref action '5c2673a5-5a4a-493a-8c91-ae91ad7883dc' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process Rocker Command'; 
                        ref action 'd4814e69-3574-4a43-8298-2a0e80f6e219' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'; 
                        connection '6915c1ac-a444-4719-8856-e6a094a7d94a' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'App Rocker Remote Control'.'5c2673a5-5a4a-493a-8c91-ae91ad7883dc'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'810ca40a-c536-40ef-b840-1e8a8e9bced0' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'9a9dda2c-3ab8-433b-888d-9f22b3b55e20';

                            } 
                        connection 'f06673b6-3365-430c-b17d-8a7e88e6db56' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'App Rocker Remote Control'.'5c2673a5-5a4a-493a-8c91-ae91ad7883dc'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'6a0fa414-94d7-4b27-9d8b-382fd3fca550' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'e86988af-f7c6-4a97-bbcb-2bb7e40d5e1d';

                            } 
                         
                    }  
                    action 'IR Remote Control;' : FunctionalChain  { 
                        @CapellaID { eid = "84d12016-1272-42ac-b7db-cf58f7553ea0"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        connection 'b2679ed9-cb22-4369-8ca2-a8ae7f91ab0a' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'IR Remote Control;'.'b650d904-a5c8-4917-8113-8d6ec5fbdb83'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'IR Remote Control;'.'7c2fe0f4-acbb-4695-b3ea-178a9daa55f8' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'63be5c88-b726-47e6-97e7-b76904033445';

                            } 
                        ref action '7c2fe0f4-acbb-4695-b3ea-178a9daa55f8' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Manual Operation Button'; 
                        ref action 'b650d904-a5c8-4917-8113-8d6ec5fbdb83' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Direction Stop Buttons'; 
                        ref action 'dde34862-49ae-4e0e-8e3d-dbd6d37dc9d6' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'; 
                        ref action '9746b239-e5a0-4f48-9a5b-8f86d751b0e0' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process IR Remote Command'; 
                        connection '094a4d0e-940f-4a44-8a62-65644b9b219d' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'IR Remote Control;'.'7c2fe0f4-acbb-4695-b3ea-178a9daa55f8'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'IR Remote Control;'.'9746b239-e5a0-4f48-9a5b-8f86d751b0e0' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'cc43c838-ea90-4ce9-87cb-2066e840b5ac';

                            } 
                        connection '20785e79-2bea-4af0-ba69-8a9c56421179' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'IR Remote Control;'.'9746b239-e5a0-4f48-9a5b-8f86d751b0e0'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'6a0fa414-94d7-4b27-9d8b-382fd3fca550' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'0ae5c0bf-ca42-4def-a994-fe860b9e244c';

                            } 
                        connection 'cad57eb2-de33-4378-b9b8-95158def4735' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'IR Remote Control;'.'9746b239-e5a0-4f48-9a5b-8f86d751b0e0'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'810ca40a-c536-40ef-b840-1e8a8e9bced0' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'585c9b93-a095-4a04-9a47-12b962b5a4b1';

                            } 
                         
                    }  
                    action 'Deliver Drive Command' : FunctionalChain  { 
                        @CapellaID { eid = "1e7620b2-a1c4-4a16-9b42-23b338b3c011"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '810ca40a-c536-40ef-b840-1e8a8e9bced0' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Drive Left Wheels'; 
                        ref action '6a0fa414-94d7-4b27-9d8b-382fd3fca550' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Driver Right Wheels'; 
                        connection 'eca965e7-5bb2-4652-b303-76b3538ecc75' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'810ca40a-c536-40ef-b840-1e8a8e9bced0'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'65a22c63-753e-4cd8-a420-ba12c6397ffc' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'b27750af-4dce-4d69-8499-a79a5a64af02';

                            } 
                        ref action '65a22c63-753e-4cd8-a420-ba12c6397ffc' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Left Wheel Resistance'; 
                        connection '53999b9d-f0cd-4a11-a43c-01e37e2dc51c' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'6a0fa414-94d7-4b27-9d8b-382fd3fca550'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'0c300139-54a7-4c02-bcc6-c4cab15310ab' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'9fe7db97-7598-4ca5-9f43-725688bdc04c';

                            } 
                        ref action '0c300139-54a7-4c02-bcc6-c4cab15310ab' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Right Wheel Resistance'; 
                        connection 'fd217766-3c96-44e3-91ee-a4466ce58de8' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'65a22c63-753e-4cd8-a420-ba12c6397ffc'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'dbd20f49-56ee-45fc-8e94-c7d27af103a8' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'41dda91e-7cbc-4e42-b125-0f59b5d89f18';

                            } 
                        ref action 'dbd20f49-56ee-45fc-8e94-c7d27af103a8' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car'; 
                        connection '997dd306-32da-4ac9-a791-885a673909ec' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'0c300139-54a7-4c02-bcc6-c4cab15310ab'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'dbd20f49-56ee-45fc-8e94-c7d27af103a8' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'6dfa87f6-136a-4da1-ad54-b7f51533cc30';

                            } 
                        connection 'f0e2ae85-1742-4814-b474-52335ce2db6c' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'dbd20f49-56ee-45fc-8e94-c7d27af103a8'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Deliver Drive Command'.'b4b6848f-cf49-4e8a-9e68-65598a228048' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'26347e70-56f6-4670-a2a7-6ab1edc54296';

                            } 
                        ref action 'b4b6848f-cf49-4e8a-9e68-65598a228048' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Observe Vehicle '; 
                         
                    }  
                    action 'Interact with Rocker' : LogicalFunction  { 
                        @CapellaID { eid = "87f41ace-70a6-4b45-b17b-608fe541169e"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "0a74ec9e-e857-4d5f-bf16-a707ff89b6c9"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile App Input'); 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Rocker'.'FOP 1'); 
                    }  
                    action 'Recieve Rocker Input' : LogicalFunction  { 
                        @CapellaID { eid = "b549d18d-4cef-415a-9fbd-b63f17951c82"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "788deca0-e0e6-4797-a10f-a3f8f594008d"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Rocker State'); 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "eeb10614-31fd-45ff-b9fb-02e67d5dfcb8"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile App Input'); 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Rocker Input'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Rocker Input'.'FIP 1'); 
                    }  
                    action 'Process Rocker Command' : LogicalFunction  { 
                        @CapellaID { eid = "b258ebe0-c40b-42e4-892f-6294da78727f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "eae9577b-2ebe-4eb3-a2fd-ba03813bf92d"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                             
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "b877374f-83b8-4668-99ff-f4ce040dca66"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "89a8d3ea-b2ac-45c7-a12a-841dd14ce506"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Rocker State'); 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process Rocker Command'.'FOP 1',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process Rocker Command'.'FOP 2'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process Rocker Command'.'FIP 1'); 
                    }  
                    action 'Drive Left Wheels' : LogicalFunction  { 
                        @CapellaID { eid = "c01d536d-3225-4516-9da7-3c41612e8a7d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "51e5c67b-17b8-4d0a-add5-060fd56315df"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "73776510-d90a-497b-ba2e-c7eb9e088c53"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Drive Left Wheels'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Drive Left Wheels'.'FIP 1'); 
                    }  
                    action 'Driver Right Wheels' : LogicalFunction  { 
                        @CapellaID { eid = "2e843fd4-8df2-446c-b7db-01c827d858bc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "31adb065-9301-4aec-a5d7-8794b6aa4f49"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "e4785dcf-f719-4884-ba1a-56e97f12a640"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Driver Right Wheels'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Driver Right Wheels'.'FIP 1'); 
                    }  
                    action 'Provide Left Wheel Resistance' : LogicalFunction  { 
                        @CapellaID { eid = "8e93290e-1cbb-48c5-a4d0-66e8b324086a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "17e308a6-6c79-40ff-93e2-baddf3996570"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "18707621-1411-4c0f-9e6e-941891509f39"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Left Wheel Resistance'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Left Wheel Resistance'.'FIP 1'); 
                    }  
                    action 'Provide Right Wheel Resistance' : LogicalFunction  { 
                        @CapellaID { eid = "720f8b1b-cf1a-4363-b234-2233d5c094c1"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "279e7f4b-76de-4eb9-8877-ecc69636f5ef"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "89cfd051-c6aa-45e0-8bcd-2a12c2c82bc7"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Right Wheel Resistance'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Right Wheel Resistance'.'FIP 1'); 
                    }  
                    action 'Move Car' : LogicalFunction  { 
                        @CapellaID { eid = "bcfd42d6-e2c2-498b-914a-f992fcf5233f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "f3703d9e-8179-4f13-b867-45d7a3e4f285"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'); 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "7a11de3c-8837-49de-94d5-4417b98b04ae"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "b6a47b62-030e-4fef-b748-8d7d008f271b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car'.'FIP 1',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car'.'FIP 2'); 
                    }  
                    action 'Observe Vehicle ' : LogicalFunction  { 
                        @CapellaID { eid = "dd3ada02-9d20-4314-b419-35d37516bd0e"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "30b66d7c-a84d-4a0e-ac4d-89ec5f74634c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'); 
                             
                        }  
                         
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Observe Vehicle '.'FIP 1'); 
                    }  
                    action 'Interact with Direction Stop Buttons' : LogicalFunction  { 
                        @CapellaID { eid = "aa3d8c58-4d4c-489a-ab2c-fbe5e9bfd8ae"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "158cce49-55d2-4176-a3d2-4315a5306384"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'); 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Direction Stop Buttons'.'FOP 1'); 
                    }  
                    action 'Recieve Manual Operation Button' : LogicalFunction  { 
                        @CapellaID { eid = "3e43f37e-be89-4a7e-8869-1c59f1e82d29"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "f6efbad0-11ca-4a98-89fc-605ee6381709"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Button Message'); 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "5a608f0f-8335-404d-a74b-2354e5435781"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'); 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Manual Operation Button'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Manual Operation Button'.'FIP 1'); 
                    }  
                    action 'Process IR Remote Command' : LogicalFunction  { 
                        @CapellaID { eid = "a8a978ee-be78-4c77-8b9e-324931871e79"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "b11a429c-9cae-4b8c-9a1e-3ff7cf8e02f1"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                             
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "14e10198-9543-4ce7-a526-0706d029fd01"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "3104bd05-b3bc-413e-baf9-82a75785f672"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Button Message'); 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process IR Remote Command'.'FOP 1',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process IR Remote Command'.'FOP 2'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process IR Remote Command'.'FIP 1'); 
                    }  
                    interface '721678bc-6116-4557-b3ce-a95ee1bf089a' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Rocker'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Rocker Input'.'FIP 1' { 
                        @CapellaID { eid = "721678bc-6116-4557-b3ce-a95ee1bf089a"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Tactile Rocker Input"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile App Input'); 
                    }  
                    interface '9a055a7f-e024-4055-8e7f-61af9d5a9a21' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Rocker Input'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process Rocker Command'.'FIP 1' { 
                        @CapellaID { eid = "9a055a7f-e024-4055-8e7f-61af9d5a9a21"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "App Rocker Cmds"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Rocker State'); 
                    }  
                    interface '9a9dda2c-3ab8-433b-888d-9f22b3b55e20' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process Rocker Command'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Drive Left Wheels'.'FIP 1' { 
                        @CapellaID { eid = "9a9dda2c-3ab8-433b-888d-9f22b3b55e20"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Power"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                    }  
                    interface 'e86988af-f7c6-4a97-bbcb-2bb7e40d5e1d' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process Rocker Command'.'FOP 2'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Driver Right Wheels'.'FIP 1' { 
                        @CapellaID { eid = "e86988af-f7c6-4a97-bbcb-2bb7e40d5e1d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Power"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                    }  
                    interface 'b27750af-4dce-4d69-8499-a79a5a64af02' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Drive Left Wheels'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Left Wheel Resistance'.'FIP 1' { 
                        @CapellaID { eid = "b27750af-4dce-4d69-8499-a79a5a64af02"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Torgue"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Torque'); 
                    }  
                    interface '9fe7db97-7598-4ca5-9f43-725688bdc04c' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Driver Right Wheels'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Right Wheel Resistance'.'FIP 1' { 
                        @CapellaID { eid = "9fe7db97-7598-4ca5-9f43-725688bdc04c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Torque"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Torque'); 
                    }  
                    interface '6dfa87f6-136a-4da1-ad54-b7f51533cc30' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Right Wheel Resistance'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car'.'FIP 1' { 
                        @CapellaID { eid = "6dfa87f6-136a-4da1-ad54-b7f51533cc30"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Realized Right Wheel Torquw"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Realized Torque'); 
                    }  
                    interface '41dda91e-7cbc-4e42-b125-0f59b5d89f18' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Left Wheel Resistance'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car'.'FIP 2' { 
                        @CapellaID { eid = "41dda91e-7cbc-4e42-b125-0f59b5d89f18"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Realized Left Wheel Torque"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Realized Torque'); 
                    }  
                    interface '26347e70-56f6-4670-a2a7-6ab1edc54296' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Observe Vehicle '.'FIP 1' { 
                        @CapellaID { eid = "26347e70-56f6-4670-a2a7-6ab1edc54296"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Car Dynamic"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'); 
                    }  
                    interface '585c9b93-a095-4a04-9a47-12b962b5a4b1' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process IR Remote Command'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Drive Left Wheels'.'FIP 1' { 
                        @CapellaID { eid = "585c9b93-a095-4a04-9a47-12b962b5a4b1"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "FunctionalExchange 10"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                    }  
                    interface '0ae5c0bf-ca42-4def-a994-fe860b9e244c' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process IR Remote Command'.'FOP 2'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Driver Right Wheels'.'FIP 1' { 
                        @CapellaID { eid = "0ae5c0bf-ca42-4def-a994-fe860b9e244c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "FunctionalExchange 11"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Power'); 
                    }  
                    interface 'cc43c838-ea90-4ce9-87cb-2066e840b5ac' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Manual Operation Button'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process IR Remote Command'.'FIP 1' { 
                        @CapellaID { eid = "cc43c838-ea90-4ce9-87cb-2066e840b5ac"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "IR Signals"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Button Message'); 
                    }  
                    interface '63be5c88-b726-47e6-97e7-b76904033445' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Direction Stop Buttons'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Manual Operation Button'.'FIP 1' { 
                        @CapellaID { eid = "63be5c88-b726-47e6-97e7-b76904033445"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Button Presses"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'); 
                    }  
                     
                    ref :>> ownedFunctions =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Rocker',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Rocker Input',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process Rocker Command',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Drive Left Wheels',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Driver Right Wheels',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Left Wheel Resistance',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Right Wheel Resistance',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Move Car',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Observe Vehicle ',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Interact with Direction Stop Buttons',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Recieve Manual Operation Button',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Process IR Remote Command'); 
                     
                    ref :>> ownedFunctionalExchanges =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'721678bc-6116-4557-b3ce-a95ee1bf089a',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'9a055a7f-e024-4055-8e7f-61af9d5a9a21',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'9a9dda2c-3ab8-433b-888d-9f22b3b55e20',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'e86988af-f7c6-4a97-bbcb-2bb7e40d5e1d',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'b27750af-4dce-4d69-8499-a79a5a64af02',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'9fe7db97-7598-4ca5-9f43-725688bdc04c',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'6dfa87f6-136a-4da1-ad54-b7f51533cc30',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'41dda91e-7cbc-4e42-b125-0f59b5d89f18',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'26347e70-56f6-4670-a2a7-6ab1edc54296',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'585c9b93-a095-4a04-9a47-12b962b5a4b1',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'0ae5c0bf-ca42-4def-a994-fe860b9e244c',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'cc43c838-ea90-4ce9-87cb-2066e840b5ac',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'63be5c88-b726-47e6-97e7-b76904033445'); 
                }  
            } 
        } 
        package  'Physical Architecture' {
            @PackageMeta {
                type = "PhysicalArchitecture";
            } 
            @CapellaID { eid = "3fa90187-9d06-4cd7-a73e-aff6131ec526"; } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "832e37a2-03f0-46a5-a521-e3c61a08cc18"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "7fa30ce6-4385-46f9-bc57-c3569df08b81"; } 
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "1e61e6ce-36c4-4d44-9c89-1c3aed505bd4"; } 
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "PhysicalComponentPkg";
                } 
                @CapellaID { eid = "4f261705-6729-4b65-8aa9-6fc4ecb76ff7"; } 
                part 'Physical System' : PhysicalComponent { 
                    @CapellaID { eid = "afb60b66-e2b4-4bee-a387-410f64a24854"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::UNSET; 
                    part 'Camera Module' : PhysicalComponent { 
                        doc /*
                        <p>Generated by OpenAI model text-davinci-003</p>

                        <p>The <strong>Camera Module</strong> is an essential tool for photographers and videographers alike. It allows users to capture high-quality images and videos at resolutions up to 1080p. The module is capable of recording in both standard and RAW formats, and is equipped with an adjustable aperture and automatic exposure settings. With its low-light sensitivity, the Camera Module is the perfect tool for capturing stunning photos and videos in any condition.</p>

                        <p>Its lightweight and compact design make it easy to transport, and its user-friendly interface makes it simple to operate. The Camera Module is compatible with a range of lenses, and its adjustable settings allow users to customize their shots to their preferences.</p>

                        <p>References:</p>

                        <ul>
                        	<li>B&amp;H Photo Video. (n.d.). Camera Modules. Retrieved October 15, 2020, from https://www.bhphotovideo.com/c/buy/Camera-Modules/ci/30480/N/4294556890</li>
                        	<li>Redshark News. (2019, August 28). Camera Module: A Comprehensive Guide. Retrieved October 15, 2020, from https://www.</li>
                        </ul>

                        */ 
                        @CapellaID { eid = "bc270856-cbf5-4aa2-a517-7388965298aa"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        part 'Camera' : PhysicalComponent { 
                            @CapellaID { eid = "413dc732-7ee3-48d0-afe1-adeae756e2e1"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "7be45c28-12b3-4043-bd12-2aeaa1a8671a"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '1b797ce8-a3bb-4f27-889a-63de87a4e696' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'.'PP 1'
                                    to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 2'; 
                                ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'.'PP 1'.'1b797ce8-a3bb-4f27-889a-63de87a4e696'); 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "44c031fd-e7e8-45a1-bcfe-770cd912d72d"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '53dde800-9421-4687-b6e6-08574caf0d2e' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'.'PP 2'
                                    to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 3'; 
                                ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'.'PP 2'.'53dde800-9421-4687-b6e6-08574caf0d2e'); 
                            }  
                            port 'PP 3' : PhysicalPort { 
                                @CapellaID { eid = "9d900516-a7d8-406c-9033-95ce2ad8f6cd"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '9768e5d3-2bb0-4f6f-b829-7682bfb878f6' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'.'PP 3'
                                    to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 1'; 
                                ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'.'PP 3'.'9768e5d3-2bb0-4f6f-b829-7682bfb878f6'); 
                            }  
                            allocation '0913034b-2b0b-4916-bb64-d3e378e3f1aa' : PartDeploymentLink
                                allocate deployed ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'
                                to deploying ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "c56d7ad8-e9ae-4c3b-a867-a97574a0462b"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 3' : PhysicalPort { 
                            @CapellaID { eid = "466f9360-107e-4d2d-baa6-7cacad3d6c98"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        interface '0b16942b-c04a-4b8f-8b75-a8bb55e49238' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'.'PP 1'
                            to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'PP 2' {
                            @CapellaID { eid = "0b16942b-c04a-4b8f-8b75-a8bb55e49238"; } 
                            attribute :>> interfaceName = "M CM to C"; 
                        }  
                        ref :>> ownedPhysicalComponents =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'); 
                        ref :>> ownedPhysicalLinks =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'0b16942b-c04a-4b8f-8b75-a8bb55e49238'); 
                    }  
                    part 'Ultra Sonic Sensor Module' : PhysicalComponent { 
                        @CapellaID { eid = "cb98d9e6-cdb0-4366-a2c5-fecf9374c847"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        part 'Ultra Sonic Sensor' : PhysicalComponent { 
                            doc /*
                            <p>Generated by OpenAI model text-davinci-003</p>

                            <p>An Ultrasonic Sensor is an electronic device that measures the distance between itself and an object using sound waves. Ultrasonic Sensors are used in a variety of applications, including robotics, security systems, medical imaging, and industrial automation. The device emits ultrasonic pulses and measures the time it takes for the sound waves to travel to and from the object. This information is then used to calculate the distance between the sensor and the object. Ultrasonic Sensors are accurate, reliable, and easy to install and use.</p>

                            <p><b>References:</b></p>

                            <p>1. <a href="https://www.maxbotix.com/Ultrasonic_Sensors.htm" target="_blank">Maxbotix, Inc., &quot;Ultrasonic Sensors&quot;</a></p>

                            <p>2. <a href="https://www.futurlec.com/Ultrasonic_Sensors.shtml" target="_blank">Futurlec Electronic Components, &quot;Ultrasonic Sensors&quot;</a></p>

                            */ 
                            @CapellaID { eid = "28221e6f-e47c-47e9-b749-e44edc42dd99"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "e530d5ba-2046-42a3-a361-5c5a96159166"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '7ce6fff5-9d04-4c53-9cae-e009b540080c' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'Ultra Sonic Sensor'.'PP 1'
                                    to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 3'; 
                                ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'Ultra Sonic Sensor'.'PP 1'.'7ce6fff5-9d04-4c53-9cae-e009b540080c'); 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "ab3555fb-6874-4f98-8735-2a58b87ee926"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 3' : PhysicalPort { 
                                @CapellaID { eid = "954c37b0-34f3-444d-b282-464f3c065238"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '6a6eb854-aa76-4b6f-957d-62a0dda113e4' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'Ultra Sonic Sensor'.'PP 3'
                                    to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 2'; 
                                ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'Ultra Sonic Sensor'.'PP 3'.'6a6eb854-aa76-4b6f-957d-62a0dda113e4'); 
                            }  
                            allocation '6f2bcfa8-a84a-40a4-a19f-71a63de31fb5' : PartDeploymentLink
                                allocate deployed ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'Ultra Sonic Sensor'
                                to deploying ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "9b9cc54f-baba-4923-9256-60cfc0e33b2d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 3' : PhysicalPort { 
                            @CapellaID { eid = "16ac1f8e-1b3c-41a7-9bf3-d52954dc0fd2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 4' : PhysicalPort { 
                            @CapellaID { eid = "994929e8-af28-4b86-a589-8d429f2c25d8"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        interface '8edf617e-df7f-4316-974d-2c88959e69b4' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'Ultra Sonic Sensor'.'PP 2'
                            to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'PP 3' {
                            @CapellaID { eid = "8edf617e-df7f-4316-974d-2c88959e69b4"; } 
                            attribute :>> interfaceName = "M-USSM to USS"; 
                        }  
                        ref :>> ownedPhysicalComponents =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'Ultra Sonic Sensor'); 
                        ref :>> ownedPhysicalLinks =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'8edf617e-df7f-4316-974d-2c88959e69b4'); 
                    }  
                    part 'Servo' : PhysicalComponent { 
                        doc /*
                        <p>Generated by OpenAI model text-davinci-003</p>

                        <p>A servo is a type of motor used in robotics and automation systems to provide precise control over the angular position of a mechanical arm, wheel, or other device. It consists of a motor, a gearbox, and a control board that can be programmed to move the motor in a specific direction and to a certain angle. Servos can be used for a variety of applications, such as controlling the movement of a robotic arm, a robotic wheel, or for controlling the movement of an industrial machine or even a model airplane. <p>

                        <p>References: <p>

                        <ul>
                        <li>Robotics, by John Baillie, ISBN: 978-1-118-46381-2</li>
                        <li>Introduction to Robotics, by John Craig, ISBN: 978-1-118-81531-3</li>
                        <li>Robotics: Control, Sensing, Vision, and Intelligence, by K. S. Fu, R. C. Gonzalez, and C. S. G. Lee, ISBN: 978-0-07-035346-2</li>
                        </ul>
                        */ 
                        @CapellaID { eid = "60274737-55d8-4fc2-b49c-64da66ed3624"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "fb96e634-ce04-4b05-8011-c1fa5c257c5d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '603a86a4-0b47-4140-86fe-60e0da01e493' : ComponentPortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'PP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 2'; 
                            ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'PP 1'.'603a86a4-0b47-4140-86fe-60e0da01e493'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "d865a0e4-fb15-4997-b652-3a4baa782be2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 3' : PhysicalPort { 
                            @CapellaID { eid = "43c2e07a-ed75-4095-99f3-13ef4966ee2f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'a4e10e64-47cf-4ca2-89dd-d3aeed2a3999' : ComponentPortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'PP 3'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 3'; 
                            ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'PP 3'.'a4e10e64-47cf-4ca2-89dd-d3aeed2a3999'); 
                        }  
                        allocation 'a9979379-9259-4d43-9f3e-69d78cde7c28' : PartDeploymentLink
                            allocate deployed ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'
                            to deploying ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'; 
                    }  
                    part 'Dead Plate' : PhysicalComponent { 
                        @CapellaID { eid = "cf17ba62-2258-4cde-a284-ff0031a50002"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "1916d947-64c3-4332-8e13-7d9a3bdc5724"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "ee0352cb-d4a2-4bf1-a36e-841e96fb9959"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Bottom Plate' : PhysicalComponent { 
                        @CapellaID { eid = "9abc0f04-525d-4f8a-b3ed-15d5eeb5fae6"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "26d369da-4325-469f-8277-8b9bafe9cb0d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'IO Board' : PhysicalComponent { 
                        doc /*
                        <p>Generated by OpenAI model text-davinci-003</p>

                        <p>An <b>IO Board</b> is an electronic device that provides an interface between a computer and other external devices. It is typically used in industrial automation systems and robotics applications, as well as in medical, automotive, and consumer electronics. It enables the computer to send and receive data from external devices, such as sensors, motors, and other controllers. It also provides the capability to control these external devices. IO Boards come in a variety of sizes, with different numbers of ports and types of connectors, and offer various levels of communication protocols. </p>

                        <p>References:<br>
                        1. <a href="https://www.omron.com/ecb/products/io/">OMRON - IO Boards</a><br>
                        2. <a href="https://www.ni.com/en-us/products/io-boards.html">NI - IO Boards</a><br>
                        3. <a href="https://www.omron.com/ecb/articles/io-boards/">OMRON - IO Boards: What Are They and How Do They Work?</a><br>
                        </p>
                        */ 
                        @CapellaID { eid = "cae30b17-b036-4778-87b1-ebf7b30b1a91"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "b36060b1-a2cb-44bd-ad09-559b54904907"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "b0982c34-e673-482e-941a-83c46c4e5d5d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 3' : PhysicalPort { 
                            @CapellaID { eid = "0f3c26b7-ec49-4341-8cba-5226f906d3f6"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 4' : PhysicalPort { 
                            @CapellaID { eid = "be2a5ce8-58ef-4c7a-8eed-13758e029b8b"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Controller Board' : PhysicalComponent { 
                        doc /*
                        <p>Generated by OpenAI model text-davinci-003</p>

                        <p>A Controller Board is an electronic device that provides a variety of functions for controlling and operating a system. It can be used in a variety of applications, such as robotics, automation, industrial control systems, and more. It typically consists of a processor, memory, and input/output (I/O) devices, such as analog-to-digital converters, digital-to-analog converters, and digital and analog I/O ports. Additionally, it may also have additional components, such as timers, relays, and switches. The board is programmed with a particular set of instructions to perform the desired tasks.</p>

                        <p>References:<br>
                        1. <a href="https://www.newark.com/what-is-a-controller-board/">What is a Controller Board?</a><br>
                        2. <a href="https://www.techopedia.com/definition/30784/controller-board">Controller Board</a><br>
                        3. <a href="https://www.omnicalculator.com/electronics/controller-board">What is a Controller Board?</a></p>
                        */ 
                        @CapellaID { eid = "37f88b0b-f396-4ce6-82af-bb042f82d925"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "905a3f2b-6e57-4ea8-98fb-6d7b9b48848b"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'd5a36e57-ea73-4333-86e5-aff71a6ef4bc' : ComponentPortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller Board'.'PP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 2'; 
                            ref allocation '51150530-6474-4ea4-bbb0-c4e1d4ade248' : ComponentPortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller Board'.'PP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 3'; 
                            ref allocation '8525b355-95cb-4265-8e17-58c0de24010b' : ComponentPortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller Board'.'PP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 1'; 
                            ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller Board'.'PP 1'.'d5a36e57-ea73-4333-86e5-aff71a6ef4bc',
                            'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller Board'.'PP 1'.'51150530-6474-4ea4-bbb0-c4e1d4ade248',
                            'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller Board'.'PP 1'.'8525b355-95cb-4265-8e17-58c0de24010b'); 
                        }  
                        allocation '7e84479a-031c-4aaf-ba85-555b05b77e92' : PartDeploymentLink
                            allocate deployed ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller Board'
                            to deploying ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'; 
                    }  
                    part 'Camera' : PhysicalComponent { 
                        @CapellaID { eid = "65931400-12bc-426c-aed4-8b4e84258c0a"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '4625b593-2d59-4baf-96a1-ae9178c513cf' : ComponentFunctionalAllocation
                            allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tranform Light to Signals'
                            to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera';
                        perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tranform Light to Signals' ; 
                        allocation '449532d0-8043-42d8-b955-c868027da564' : ComponentFunctionalAllocation
                            allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position'
                            to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera';
                        perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position' ; 
                        port 'CP 1' : ComponentPort { 
                            @CapellaID { eid = "0782292f-e030-4bcd-a48a-0841760750e7"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation 'a1e938e7-ac11-400b-8eb1-93065e452c5a' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tranform Light to Signals'.'FIP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 1'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 1'.'a1e938e7-ac11-400b-8eb1-93065e452c5a'); 
                        }  
                        port 'CP 2' : ComponentPort { 
                            @CapellaID { eid = "d0d92c80-dce6-4077-9e05-8a2e7d20c620"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '036d67f1-1823-414e-93a3-20a37328ba11' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position'.'FIP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 2'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 2'.'036d67f1-1823-414e-93a3-20a37328ba11'); 
                        }  
                        port 'CP 3' : ComponentPort { 
                            @CapellaID { eid = "df47a122-9686-40e6-8839-6721f1e99c8a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '1095e81f-4320-45db-90e4-4295676522f1' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tranform Light to Signals'.'FOP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 3'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 3'.'1095e81f-4320-45db-90e4-4295676522f1'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'4625b593-2d59-4baf-96a1-ae9178c513cf',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'449532d0-8043-42d8-b955-c868027da564'); 
                    }  
                    part 'Ultra Sonic Sensor' : PhysicalComponent { 
                        doc /*


                        <table>
                          <thead>
                            <tr>
                              <th>Function</th>
                              <th>Summary</th>
                              <th>Inputs</th>
                              <th>Outputs</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>Distance Measurement</td>
                              <td>Measures the distance between the sensor and an object</td>
                              <td>Trigger and Echo Signals</td>
                              <td>Distance in cm</td>
                            </tr>
                            <tr>
                              <td>Speed Measurement</td>
                              <td>Measures the speed of an object</td>
                              <td>Trigger and Echo Signals</td>
                              <td>Speed in cm/s</td>
                            </tr>
                            <tr>
                              <td>Presence Detection</td>
                              <td>Detects the presence of an object</td>
                              <td>Trigger and Echo Signals</td>
                              <td>Boolean Value (true/false)</td>

                        */ 
                        @CapellaID { eid = "24bda714-5010-4380-a9b7-4161a4b08367"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '35014dd0-4000-4ab2-a015-8f71aab715d1' : ComponentFunctionalAllocation
                            allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send Ping'
                            to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor';
                        perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send Ping' ; 
                        allocation '865137be-c5a2-40c7-840e-04da3c3633e0' : ComponentFunctionalAllocation
                            allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Reflection'
                            to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor';
                        perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Reflection' ; 
                        allocation '62b8cb39-dac8-4ac0-8829-97b00a7e3934' : ComponentFunctionalAllocation
                            allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position'
                            to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor';
                        perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position' ; 
                        port 'CP 1' : ComponentPort { 
                            @CapellaID { eid = "86f42618-a588-44ef-a70a-5797a15706e3"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '54c0bd6a-48d7-4343-a84f-80750220e8e2' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position'.'FIP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 1'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 1'.'54c0bd6a-48d7-4343-a84f-80750220e8e2'); 
                        }  
                        port 'CP 2' : ComponentPort { 
                            @CapellaID { eid = "e09c2f38-cc8a-4328-a943-264cebb36fcf"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '4b236341-c5e2-4f6a-8886-c55962d2442b' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Reflection'.'FIP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 2'; 
                            ref allocation 'a61e846a-d67b-426f-80bc-44b0c58758fc' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send Ping'.'FOP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 2'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 2'.'4b236341-c5e2-4f6a-8886-c55962d2442b',
                            'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 2'.'a61e846a-d67b-426f-80bc-44b0c58758fc'); 
                        }  
                        port 'CP 3' : ComponentPort { 
                            @CapellaID { eid = "d685088f-7554-4ce1-80a6-3b059c30f871"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '037b0ca5-a8f8-4ab7-a9fa-be1c0b5b4aca' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send Ping'.'FIP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 3'; 
                            ref allocation 'b8d9728f-9166-4a05-92d9-8497a29981a1' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Reflection'.'FOP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 3'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 3'.'037b0ca5-a8f8-4ab7-a9fa-be1c0b5b4aca',
                            'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 3'.'b8d9728f-9166-4a05-92d9-8497a29981a1'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'35014dd0-4000-4ab2-a015-8f71aab715d1',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'865137be-c5a2-40c7-840e-04da3c3633e0',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'62b8cb39-dac8-4ac0-8829-97b00a7e3934'); 
                    }  
                    part 'Servo' : PhysicalComponent { 
                        @CapellaID { eid = "59b8e3b8-10cc-41ec-b317-dc5ef2b2498c"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '176ba4c7-16e2-44f4-a1f3-8835a91200e0' : ComponentFunctionalAllocation
                            allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position '
                            to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo';
                        perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position ' ; 
                        port 'CP 1' : ComponentPort { 
                            @CapellaID { eid = "4958f8ce-071e-4ced-b454-aee40f691acc"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation 'b2e380af-8926-464e-b332-f20d3f3d0d3f' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position '.'FOP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 1'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 1'.'b2e380af-8926-464e-b332-f20d3f3d0d3f'); 
                        }  
                        port 'CP 2' : ComponentPort { 
                            @CapellaID { eid = "b7799a28-b2ef-4b54-b75f-90048a052e7a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '5df98009-59dd-44f4-abcc-0e571e92e85f' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position '.'FOP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 2'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 2'.'5df98009-59dd-44f4-abcc-0e571e92e85f'); 
                        }  
                        port 'CP 3' : ComponentPort { 
                            @CapellaID { eid = "19d2bfbc-8240-4187-a878-88aa31836433"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '0af8b701-392b-4578-9266-1c8f5b535394' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position '.'FIP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 3'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 3'.'0af8b701-392b-4578-9266-1c8f5b535394'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'176ba4c7-16e2-44f4-a1f3-8835a91200e0'); 
                    }  
                    part 'Controller' : PhysicalComponent { 
                        @CapellaID { eid = "bdd3e41c-2ae7-4f53-bb2d-938385c03225"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '5f87103b-bee0-43b6-883b-7667c8a26b7b' : ComponentFunctionalAllocation
                            allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Video Signal'
                            to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller';
                        perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Video Signal' ; 
                        allocation '955623d4-28a4-4b21-9bd3-789230f33be3' : ComponentFunctionalAllocation
                            allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance'
                            to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller';
                        perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance' ; 
                        allocation 'b601d278-5000-4e74-ad6c-a08734630491' : ComponentFunctionalAllocation
                            allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Set Position '
                            to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller';
                        perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Set Position ' ; 
                        port 'CP 1' : ComponentPort { 
                            @CapellaID { eid = "08e32ba0-05ba-4360-9457-53d80aef9a7e"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '41ff89fa-399f-49dd-88c6-8564d1e321d4' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Video Signal'.'FIP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 1'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 1'.'41ff89fa-399f-49dd-88c6-8564d1e321d4'); 
                        }  
                        port 'CP 2' : ComponentPort { 
                            @CapellaID { eid = "2ecabb2c-2cc1-4c81-9c8a-5d37ef0aeb6e"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '15bfdb88-3a8f-413d-abb9-be7182de1ba0' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance'.'FOP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 2'; 
                            ref allocation 'a8c02e7c-48b8-4759-a026-3b2eb6d73e4e' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance'.'FIP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 2'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 2'.'15bfdb88-3a8f-413d-abb9-be7182de1ba0',
                            'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 2'.'a8c02e7c-48b8-4759-a026-3b2eb6d73e4e'); 
                        }  
                        port 'CP 3' : ComponentPort { 
                            @CapellaID { eid = "35ca209e-f942-41d5-988d-a731352c3534"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '1f562d33-9b06-4f17-ad83-8dba7e700b12' : PortAllocation
                                allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Set Position '.'FOP 1'
                                to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 3'; 
                            ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 3'.'1f562d33-9b06-4f17-ad83-8dba7e700b12'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'5f87103b-bee0-43b6-883b-7667c8a26b7b',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'955623d4-28a4-4b21-9bd3-789230f33be3',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'b601d278-5000-4e74-ad6c-a08734630491'); 
                    }  
                    part 'Smart Card Shield' : PhysicalComponent { 
                        @CapellaID { eid = "20c95950-2cfe-4cfd-ab74-fb80d1b35fff"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        part 'IR' : PhysicalComponent { 
                            @CapellaID { eid = "b9f1d238-f623-403d-8c3e-0993ae27e01d"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "4f302b3e-a5b3-4212-bfb2-d8dd7cca8879"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        part 'Status Indicator Light' : PhysicalComponent { 
                            @CapellaID { eid = "33d5fdbb-06ec-48be-b227-4ecd328bb34d"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "3be9df7b-1c8e-42c7-a782-1286e5911f49"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        part 'Reset' : PhysicalComponent { 
                            @CapellaID { eid = "c15d08be-8878-4be0-a438-9a61b9e1057d"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "bc7c0663-edcc-41fa-a6c8-22be1b25554b"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        part 'Mode Button' : PhysicalComponent { 
                            @CapellaID { eid = "cc0ce9e5-e269-4181-9dda-1d16ef524fde"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "8b829172-1118-4c6a-b290-f7eba0ebcf99"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        part 'Upload-cam Swtching Button' : PhysicalComponent { 
                            @CapellaID { eid = "0d26b50f-e6c8-44f9-bb4c-f3a7eb4a404b"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "26cb6ec9-ba9b-442f-a4b0-4560f619248b"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        part 'Infradedd Reciever' : PhysicalComponent { 
                            @CapellaID { eid = "3f2bbfc6-a929-4756-bd1b-e342dda9bade"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "eefe9adb-e80b-428f-94eb-b0e45ea83885"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        port 'USB Port' : PhysicalPort { 
                            @CapellaID { eid = "afb5cb68-50ff-4de3-816d-11419faae904"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        ref :>> ownedPhysicalComponents =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Smart Card Shield'.'IR',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Smart Card Shield'.'Status Indicator Light',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Smart Card Shield'.'Reset',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Smart Card Shield'.'Mode Button',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Smart Card Shield'.'Upload-cam Swtching Button',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Smart Card Shield'.'Infradedd Reciever'); 
                    }  
                    part 'IR Remote' : PhysicalComponent { 
                        @CapellaID { eid = "d7c6a5fb-abe7-4994-9741-b2698790a598"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                    }  
                    interface '7443b17f-8ff9-487f-84e2-92c04b4ca0b0' : ComponentExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 1'
                        to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 1' { 
                        @CapellaID { eid = "7443b17f-8ff9-487f-84e2-92c04b4ca0b0"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Servo to USS"; 
                        attribute :>> isOriented = false; 
                        allocation 'ed244139-de85-4a83-8964-4bffb02136c7' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'07b8c685-c0ab-4dca-9ff3-7211a732f502'
                            to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'7443b17f-8ff9-487f-84e2-92c04b4ca0b0'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'7443b17f-8ff9-487f-84e2-92c04b4ca0b0'.'ed244139-de85-4a83-8964-4bffb02136c7'); 
                    }  
                    interface 'ab7b339b-060a-4bb7-8c9c-9358ca76d159' : ComponentExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 2'
                        to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 2' { 
                        @CapellaID { eid = "ab7b339b-060a-4bb7-8c9c-9358ca76d159"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Servo - Cam"; 
                        attribute :>> isOriented = false; 
                        allocation '97da47a9-b3ae-4085-ae27-31da97811f0b' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'01e59c94-7afd-470c-ab41-41081326f560'
                            to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'ab7b339b-060a-4bb7-8c9c-9358ca76d159'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'ab7b339b-060a-4bb7-8c9c-9358ca76d159'.'97da47a9-b3ae-4085-ae27-31da97811f0b'); 
                    }  
                    interface 'af732d40-53a2-4729-9519-0945a109336b' : ComponentExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 3'
                        to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 1' { 
                        @CapellaID { eid = "af732d40-53a2-4729-9519-0945a109336b"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Cam to Contr"; 
                        attribute :>> isOriented = false; 
                        allocation '96242866-41a5-4cf0-896a-365c25dc2fd6' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f5ad5c71-a772-4fa5-9701-5c9bc38cf155'
                            to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'af732d40-53a2-4729-9519-0945a109336b'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'af732d40-53a2-4729-9519-0945a109336b'.'96242866-41a5-4cf0-896a-365c25dc2fd6'); 
                    }  
                    interface '364f140d-6ede-49fa-98d5-4cfe5cfa699d' : ComponentExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 3'
                        to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 2' { 
                        @CapellaID { eid = "364f140d-6ede-49fa-98d5-4cfe5cfa699d"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "USS to Contr"; 
                        attribute :>> isOriented = false; 
                        allocation '0e5fcc71-adcb-44ec-8b34-fb4b1582995b' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5a80077d-e971-4b28-8c2b-a6886a9d7c86'
                            to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'364f140d-6ede-49fa-98d5-4cfe5cfa699d'; 
                        allocation 'e4a9af05-a137-41e0-92dd-9181e39b7370' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8b074f8f-8a02-4acf-8c59-f91feed6858a'
                            to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'364f140d-6ede-49fa-98d5-4cfe5cfa699d'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'364f140d-6ede-49fa-98d5-4cfe5cfa699d'.'0e5fcc71-adcb-44ec-8b34-fb4b1582995b',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'364f140d-6ede-49fa-98d5-4cfe5cfa699d'.'e4a9af05-a137-41e0-92dd-9181e39b7370'); 
                    }  
                    interface '931888b1-a46a-4762-8c75-6a38aaf2b24b' : ComponentExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'CP 3'
                        to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller'.'CP 3' { 
                        @CapellaID { eid = "931888b1-a46a-4762-8c75-6a38aaf2b24b"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Servo to Contr"; 
                        attribute :>> isOriented = false; 
                        allocation '828fc84d-0cc4-497a-b37d-43103e7cdf52' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5e666f00-51d5-40f9-b53d-1a49318fd8c5'
                            to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'931888b1-a46a-4762-8c75-6a38aaf2b24b'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'931888b1-a46a-4762-8c75-6a38aaf2b24b'.'828fc84d-0cc4-497a-b37d-43103e7cdf52'); 
                    }  
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "30282813-d75f-4e6a-aa60-df729dc00455"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "b9efade8-ed80-41b7-a715-45fbfbaa0a44"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'd34a6ca3-41a0-4f42-aa24-c033871e839a' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recieve Rocker Input'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 2'.'d34a6ca3-41a0-4f42-aa24-c033871e839a'); 
                         
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "e238f6fc-638e-4749-8aaf-fa490cd78804"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 4' : ComponentPort { 
                        @CapellaID { eid = "8ad5ae45-ed5e-4b99-a0ec-f7d56590ac86"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '55d098f4-3d16-457b-a500-b356bd116403' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Driver Right Wheels'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 4'; 
                        ref allocation '2ba112ed-85fe-4491-8180-354793e729be' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Drive Left Wheels'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 4'; 
                        ref allocation '3bab1402-b420-47eb-ab9c-f896f305a048' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Move Car'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 4'; 
                        ref allocation '6d1b668c-0f1a-4a5d-a0ca-fb4e199b63f6' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Move Car'.'FIP 2'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 4'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 4'.'55d098f4-3d16-457b-a500-b356bd116403',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 4'.'2ba112ed-85fe-4491-8180-354793e729be',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 4'.'3bab1402-b420-47eb-ab9c-f896f305a048',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 4'.'6d1b668c-0f1a-4a5d-a0ca-fb4e199b63f6'); 
                         
                    }  
                    port 'PP 5' : PhysicalPort { 
                        @CapellaID { eid = "c9ab805c-7b6b-4af0-b26f-70b70c730475"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 6' : ComponentPort { 
                        @CapellaID { eid = "fdb395aa-8fc7-4354-bc2b-0087bc4a830b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '5b83b50f-a8bd-4a82-b0cc-786ee04bd857' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Move Car'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 6'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 6'.'5b83b50f-a8bd-4a82-b0cc-786ee04bd857'); 
                         
                    }  
                    port 'PP 7' : PhysicalPort { 
                        @CapellaID { eid = "ae57c4f9-e725-434c-80d6-333b6137abf1"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 8' : ComponentPort { 
                        @CapellaID { eid = "cce8808a-c6af-4e0f-87cd-64fe9ca02e63"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'bf58b69d-72cd-48bd-a804-13df9b6f5695' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recieve Manual Operation Button'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 8'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 8'.'bf58b69d-72cd-48bd-a804-13df9b6f5695'); 
                         
                    }  
                    interface '7a33e420-8963-4d45-8a3f-afb175762f28' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'PP 3'
                        to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'PP 2' {
                        @CapellaID { eid = "7a33e420-8963-4d45-8a3f-afb175762f28"; } 
                        attribute :>> interfaceName = "M-CM to USSM"; 
                        attribute 'StringPropertyValue 1' : StringPropertyValue  { 
                            @CapellaID { eid = "08ad5de5-1348-46f8-8c83-4f9559fb3fe1"; } 
                        }  
                        ref :>> ownedPropertyValues =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'7a33e420-8963-4d45-8a3f-afb175762f28'.'StringPropertyValue 1'); 
                        ref :>> appliedPropertyValues =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'7a33e420-8963-4d45-8a3f-afb175762f28'.'StringPropertyValue 1'); 
                    }  
                    interface '5b76399e-770f-4114-8555-5b07efa28d55' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'Ultra Sonic Sensor'.'PP 1'
                        to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'IO Board'.'PP 1' {
                        doc /*
                        <p>This physical link is represented in red in the following diagrams.</p>

                        <p>&nbsp;</p>

                        */ 
                        @CapellaID { eid = "5b76399e-770f-4114-8555-5b07efa28d55"; } 
                        attribute :>> interfaceName = "E- USS to IOB"; 
                    }  
                    interface 'cfae80b4-69a8-44b2-8e18-40f488a17292' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'.'PP 2'
                        to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'IO Board'.'PP 2' {
                        doc /*
                        <p>The highlight in red oval is this respective interface.</p>

                        <p><img height="584" src="Smart Robotic Car/Images/wiringdiagram_camera.png" style="width: 453px; height: 305px;" width="991" /></p>

                        */ 
                        @CapellaID { eid = "cfae80b4-69a8-44b2-8e18-40f488a17292"; } 
                        attribute :>> interfaceName = "E-Camera to IOB"; 
                    }  
                    interface '1ca65559-bcfe-4b00-aa3b-b0a3c390574b' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'PP 4'
                        to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'PP 1' {
                        @CapellaID { eid = "1ca65559-bcfe-4b00-aa3b-b0a3c390574b"; } 
                        attribute :>> interfaceName = "M-USSM-Servo"; 
                    }  
                    interface '252dffbe-e6ef-46ce-a1ee-3222e7564357' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'PP 2'
                        to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Dead Plate'.'PP 1' {
                        @CapellaID { eid = "252dffbe-e6ef-46ce-a1ee-3222e7564357"; } 
                        attribute :>> interfaceName = "M-Servo to DP"; 
                    }  
                    interface 'cabc69a3-f60f-42fa-bc46-21457ec852f3' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Dead Plate'.'PP 2'
                        to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Bottom Plate'.'PP 1' {
                        @CapellaID { eid = "cabc69a3-f60f-42fa-bc46-21457ec852f3"; } 
                        attribute :>> interfaceName = "M-DP to BP"; 
                    }  
                    interface 'bd451ee4-8ff6-4a91-b7ac-e5ef07435048' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'IO Board'.'PP 3'
                        to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller Board'.'PP 1' {
                        @CapellaID { eid = "bd451ee4-8ff6-4a91-b7ac-e5ef07435048"; } 
                        attribute :>> interfaceName = "M E-IOB-CB"; 
                    }  
                    interface '774996cc-5b45-4a8e-89a8-6a8ab1a964e6' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'IO Board'.'PP 4'
                        to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo'.'PP 3' {
                        doc /*
                        <p>The interface is captured in diagram below.</p>

                        <p><img src="Smart Robotic Car/Images/wiringdiagram_servo.png" /></p>

                        */ 
                        @CapellaID { eid = "774996cc-5b45-4a8e-89a8-6a8ab1a964e6"; } 
                        attribute :>> interfaceName = "E-Servo-IOB"; 
                    }  
                    ref :>> ownedPhysicalComponents =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Dead Plate',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Bottom Plate',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'IO Board',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller Board',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Servo',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Controller',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Smart Card Shield',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'IR Remote'); 
                     
                    ref :>> ownedComponentExchanges =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'7443b17f-8ff9-487f-84e2-92c04b4ca0b0',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'ab7b339b-060a-4bb7-8c9c-9358ca76d159',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'af732d40-53a2-4729-9519-0945a109336b',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'364f140d-6ede-49fa-98d5-4cfe5cfa699d',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'931888b1-a46a-4762-8c75-6a38aaf2b24b'); 
                     
                     
                    ref :>> ownedPhysicalLinks =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'7a33e420-8963-4d45-8a3f-afb175762f28',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'5b76399e-770f-4114-8555-5b07efa28d55',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'cfae80b4-69a8-44b2-8e18-40f488a17292',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'1ca65559-bcfe-4b00-aa3b-b0a3c390574b',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'252dffbe-e6ef-46ce-a1ee-3222e7564357',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'cabc69a3-f60f-42fa-bc46-21457ec852f3',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'bd451ee4-8ff6-4a91-b7ac-e5ef07435048',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'774996cc-5b45-4a8e-89a8-6a8ab1a964e6'); 
                }  
                part 'Environment' : PhysicalComponent { 
                    @CapellaID { eid = "06b518f4-fa55-407d-ab20-a4f6b47410e1"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation 'a2a70eb0-437f-478f-9d37-ca0bf2333178' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "c7e5a40e-3022-4160-abe9-735125572478"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '6843ed47-92c1-4176-b752-500a2b7f5829' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'PP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 3'; 
                        ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'PP 1'.'6843ed47-92c1-4176-b752-500a2b7f5829'); 
                    }  
                    port 'PP 2' : PhysicalPort { 
                        @CapellaID { eid = "3fa509be-288a-4d6b-9fc4-577e9eae8a9a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '3fef9957-6926-4bf1-adde-9aa1d69c98c1' : ComponentPortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'PP 2'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 4'; 
                        ref :>> ownedComponentPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'PP 2'.'3fef9957-6926-4bf1-adde-9aa1d69c98c1'); 
                    }  
                    port 'CP 3' : ComponentPort { 
                        @CapellaID { eid = "dcfe9957-dc77-4005-966d-c9828646a04d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '9085f418-3f08-49bc-9010-10b890c8342a' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 3'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 3'.'9085f418-3f08-49bc-9010-10b890c8342a'); 
                    }  
                    port 'CP 4' : ComponentPort { 
                        @CapellaID { eid = "4bd5bca1-f7cb-4527-bac1-0d2fc819808d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'a5c9220a-c202-49b0-ab79-a9a6cb1918f3' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'.'FOP 2'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 4'; 
                        ref allocation '1eb98094-2096-430d-8cf8-4a93f54a8859' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 4'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 4'.'a5c9220a-c202-49b0-ab79-a9a6cb1918f3',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 4'.'1eb98094-2096-430d-8cf8-4a93f54a8859'); 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'a2a70eb0-437f-478f-9d37-ca0bf2333178'); 
                }  
                part 'Operator' : PhysicalComponent { 
                    @CapellaID { eid = "46a2faa6-3677-4148-bd6d-78e8f4693fec"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation '359cab95-ad92-4459-973a-6c241da89090' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Rocker'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Rocker' ; 
                    allocation '2eefe7b7-f3ee-4cfc-a788-e1ac7c78ed8b' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Observe Vehicle '
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Observe Vehicle ' ; 
                    allocation '269e838c-7ef9-449f-81ab-cb956756271d' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Direction Stop Buttons'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Direction Stop Buttons' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "ae34f570-9bee-4902-ae45-b2ec166217c0"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "1ed27944-4a09-4dac-bacc-02cca79aa589"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '69b1e1ab-690a-4c92-9cd0-6ebc1c31c74c' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Rocker'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'CP 2'.'69b1e1ab-690a-4c92-9cd0-6ebc1c31c74c'); 
                         
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "2bac474e-125c-45d2-b3b3-153e2ccf1b35"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 4' : ComponentPort { 
                        @CapellaID { eid = "6181d308-160b-45c6-b1e3-ebe189b76b77"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'fddfdf5f-25e5-47b4-a168-4f7741c603c4' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Observe Vehicle '.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'CP 4'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'CP 4'.'fddfdf5f-25e5-47b4-a168-4f7741c603c4'); 
                         
                    }  
                    port 'PP 5' : PhysicalPort { 
                        @CapellaID { eid = "b2c375b9-5d84-4660-ad31-1e587d231675"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 6' : ComponentPort { 
                        @CapellaID { eid = "83e7d605-9d89-4395-9e10-400f1889c87a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'cf16d07f-0e1f-4eb3-bafb-3a8000e9911f' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Direction Stop Buttons'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'CP 6'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'CP 6'.'cf16d07f-0e1f-4eb3-bafb-3a8000e9911f'); 
                         
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'359cab95-ad92-4459-973a-6c241da89090',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'2eefe7b7-f3ee-4cfc-a788-e1ac7c78ed8b',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'269e838c-7ef9-449f-81ab-cb956756271d'); 
                     
                }  
                part 'Environment' : PhysicalComponent { 
                    @CapellaID { eid = "9e0d8426-4143-4782-b01e-5a5ec9acfcf6"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation '7135cad0-ba1a-411e-bba4-a8d00f43c056' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Left Wheel Resistance'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Left Wheel Resistance' ; 
                    allocation '08742657-1fa9-469d-9b82-fc4606ec517c' : ComponentFunctionalAllocation
                        allocate function ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Right Wheel Resistance'
                        to component ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment';
                    perform 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Right Wheel Resistance' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "47285e08-896a-4ef6-92bd-5b44df05afd4"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "37ef0fc1-f075-4c18-9ab6-103ace53f91b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'ff6e54a7-c343-437b-a07a-1264fe4c9d74' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Right Wheel Resistance'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 2'; 
                        ref allocation '556b5cb0-7849-42ee-b970-32f22eb216fe' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Left Wheel Resistance'.'FIP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 2'; 
                        ref allocation '5d646324-a5fe-46a2-871a-78c6c24c64a9' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Right Wheel Resistance'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 2'; 
                        ref allocation '1bfc8989-edab-4495-8d26-51e4220cac14' : PortAllocation
                            allocate allocatedPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Left Wheel Resistance'.'FOP 1'
                            to allocatingPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 2'.'ff6e54a7-c343-437b-a07a-1264fe4c9d74',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 2'.'556b5cb0-7849-42ee-b970-32f22eb216fe',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 2'.'5d646324-a5fe-46a2-871a-78c6c24c64a9',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 2'.'1bfc8989-edab-4495-8d26-51e4220cac14'); 
                         
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'7135cad0-ba1a-411e-bba4-a8d00f43c056',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'08742657-1fa9-469d-9b82-fc4606ec517c'); 
                     
                }  
                constraint 'c4126002-206d-452f-a856-c5da8416e689' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "c4126002-206d-452f-a856-c5da8416e689"; }
                    
                } 
                constraint 'e0f2d1e4-94b8-43d5-b68a-b95496910ad9' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "e0f2d1e4-94b8-43d5-b68a-b95496910ad9"; }
                    
                } 
                constraint '9786d71d-2885-4810-b103-830236301577' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "9786d71d-2885-4810-b103-830236301577"; }
                    
                } 
                interface '4ab5636f-8b20-4eb5-9b1c-c85cabee66a6' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 3'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera'.'CP 1' { 
                    @CapellaID { eid = "4ab5636f-8b20-4eb5-9b1c-c85cabee66a6"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "E-Cam"; 
                    attribute :>> isOriented = false; 
                    allocation '40e71e23-c1c5-4a45-88e2-f55f9aff0350' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'bd30468b-16c6-4d57-b6b3-95a4547463da'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'4ab5636f-8b20-4eb5-9b1c-c85cabee66a6'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'4ab5636f-8b20-4eb5-9b1c-c85cabee66a6'.'40e71e23-c1c5-4a45-88e2-f55f9aff0350'); 
                }  
                interface '2be543b9-a708-4473-9e58-9475aedcb196' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 4'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor'.'CP 2' { 
                    @CapellaID { eid = "2be543b9-a708-4473-9e58-9475aedcb196"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "E-USS"; 
                    attribute :>> isOriented = false; 
                    allocation '013f2be5-8b33-4c69-8f7a-21f928e747a8' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'805d5794-55e2-4a64-a705-e97efb6db00f'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'2be543b9-a708-4473-9e58-9475aedcb196'; 
                    allocation '24a1eb29-c2b2-4c3d-8ace-b4518d3a9e28' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5a3df89a-3eb8-45be-bfe9-065b08b160dc'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'2be543b9-a708-4473-9e58-9475aedcb196'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'2be543b9-a708-4473-9e58-9475aedcb196'.'013f2be5-8b33-4c69-8f7a-21f928e747a8',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'2be543b9-a708-4473-9e58-9475aedcb196'.'24a1eb29-c2b2-4c3d-8ace-b4518d3a9e28'); 
                }  
                interface '596632c5-0d5a-4520-b887-9edc4f75ec2f' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'CP 2'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 2' { 
                    @CapellaID { eid = "596632c5-0d5a-4520-b887-9edc4f75ec2f"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "O-SRC"; 
                    attribute :>> isOriented = false; 
                    allocation '3189eae7-c9e7-4ba2-b49b-b23c45fe0fe8' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f2d4a288-c9b2-44c3-abae-955f3163ab7d'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'596632c5-0d5a-4520-b887-9edc4f75ec2f'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'596632c5-0d5a-4520-b887-9edc4f75ec2f'.'3189eae7-c9e7-4ba2-b49b-b23c45fe0fe8'); 
                     
                }  
                interface '1fdc2c2b-f72c-485f-ad88-8656579b0e58' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 4'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'CP 2' { 
                    @CapellaID { eid = "1fdc2c2b-f72c-485f-ad88-8656579b0e58"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "SRC-E"; 
                    attribute :>> isOriented = false; 
                    allocation 'fd6d7d23-5e32-416c-89dd-07661c66a96e' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'4f7f3198-871e-489c-bf0b-42bd09414bc0'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'1fdc2c2b-f72c-485f-ad88-8656579b0e58'; 
                    allocation '93edc6f6-a555-4561-b5c3-e2cbb3aeb2df' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'23fc4912-a6d1-4397-91df-9775b739ee1c'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'1fdc2c2b-f72c-485f-ad88-8656579b0e58'; 
                    allocation 'e51ace64-1b68-43eb-80cd-5fc5d335e5fc' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'81e07990-e18b-45a2-a60f-9348e0cf894f'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'1fdc2c2b-f72c-485f-ad88-8656579b0e58'; 
                    allocation '287ac2a6-5c14-4571-aa11-9f5c546c0069' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'dfb5c22e-3ff0-4d0f-9f71-b6e1a5c24567'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'1fdc2c2b-f72c-485f-ad88-8656579b0e58'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'1fdc2c2b-f72c-485f-ad88-8656579b0e58'.'fd6d7d23-5e32-416c-89dd-07661c66a96e',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'1fdc2c2b-f72c-485f-ad88-8656579b0e58'.'93edc6f6-a555-4561-b5c3-e2cbb3aeb2df',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'1fdc2c2b-f72c-485f-ad88-8656579b0e58'.'e51ace64-1b68-43eb-80cd-5fc5d335e5fc',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'1fdc2c2b-f72c-485f-ad88-8656579b0e58'.'287ac2a6-5c14-4571-aa11-9f5c546c0069'); 
                     
                }  
                interface '574fb122-39f6-4d60-a2b1-5b9282981474' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 6'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'CP 4' { 
                    @CapellaID { eid = "574fb122-39f6-4d60-a2b1-5b9282981474"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "SRCS-O"; 
                    attribute :>> isOriented = false; 
                    allocation '55e8509f-af20-409f-83ff-6688bc65757d' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'1e30b3b8-eb65-4be7-9203-fa70698a952d'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'574fb122-39f6-4d60-a2b1-5b9282981474'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'574fb122-39f6-4d60-a2b1-5b9282981474'.'55e8509f-af20-409f-83ff-6688bc65757d'); 
                     
                }  
                interface '9ec1bbce-a860-4e99-91e6-116a2358ecb4' : ComponentExchange 
                    connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'CP 6'
                    to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'CP 8' { 
                    @CapellaID { eid = "9ec1bbce-a860-4e99-91e6-116a2358ecb4"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "O-SRCS-Remote"; 
                    attribute :>> isOriented = false; 
                    allocation '82924de5-3ea8-4aa4-abc1-7bbed40c2147' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'ffcd2917-6ec1-40ed-8715-dc9b40368b6e'
                        to componentExchange ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'9ec1bbce-a860-4e99-91e6-116a2358ecb4'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'9ec1bbce-a860-4e99-91e6-116a2358ecb4'.'82924de5-3ea8-4aa4-abc1-7bbed40c2147'); 
                     
                }  
                interface 'cab1343d-f223-48fc-9421-38850fb7fee8' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Camera Module'.'Camera'.'PP 3'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'PP 1' {
                    @CapellaID { eid = "cab1343d-f223-48fc-9421-38850fb7fee8"; } 
                    attribute :>> interfaceName = "V-EnV to C"; 
                     
                }  
                interface 'd9a472f9-03c8-436f-b966-92f5a06e9e59' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'Ultra Sonic Sensor Module'.'Ultra Sonic Sensor'.'PP 3'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'PP 2' {
                    @CapellaID { eid = "d9a472f9-03c8-436f-b966-92f5a06e9e59"; } 
                    attribute :>> interfaceName = "A-Env-USS"; 
                     
                }  
                interface '7a8b8763-bc14-4d05-b073-9661cab76a2a' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'PP 1'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'PP 1' {
                    @CapellaID { eid = "7a8b8763-bc14-4d05-b073-9661cab76a2a"; } 
                    attribute :>> interfaceName = "T-App Inputs"; 
                     
                     
                }  
                interface 'bd572392-692d-42e8-9984-a3a58b7d8728' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'PP 3'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Environment'.'PP 1' {
                    @CapellaID { eid = "bd572392-692d-42e8-9984-a3a58b7d8728"; } 
                    attribute :>> interfaceName = "M-Wheel Forces"; 
                     
                     
                }  
                interface '5e8e13d4-b223-4390-aa83-38df5ed33968' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'PP 3'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'PP 5' {
                    @CapellaID { eid = "5e8e13d4-b223-4390-aa83-38df5ed33968"; } 
                    attribute :>> interfaceName = "V-Observation"; 
                     
                     
                }  
                interface 'ca7d29fd-f301-4190-927d-619a344bb31c' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Operator'.'PP 5'
                    to targetPhysicalPort ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Structure'::'Physical System'.'PP 7' {
                    @CapellaID { eid = "ca7d29fd-f301-4190-927d-619a344bb31c"; } 
                    attribute :>> interfaceName = "T- Button Presses"; 
                     
                     
                }  
            } 
            package  'Physical Functions' {
                @PackageMeta {
                    type = "PhysicalFunctionPkg";
                } 
                @CapellaID { eid = "42a2e2b4-4d19-4102-9192-e1ac58c752cb"; } 
                action 'Root Physical Function' : PhysicalFunction  { 
                    @CapellaID { eid = "fdc5dfc5-c5cb-4d6b-954a-914de5728296"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    action 'Recevie Video' : FunctionalChain  { 
                        @CapellaID { eid = "49c9b832-0cd6-44be-9fa0-7a5050c34251"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        connection '363bc79b-ead0-4a73-a9f6-8d4262f885ac' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recevie Video'.'41fd6a76-c7b4-497b-b2ec-01d99daeeb91'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recevie Video'.'f61f6de0-2c6b-4898-874d-f82400b13b71' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'bd30468b-16c6-4d57-b6b3-95a4547463da';

                            } 
                        ref action 'f61f6de0-2c6b-4898-874d-f82400b13b71' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tranform Light to Signals'; 
                        ref action '41fd6a76-c7b4-497b-b2ec-01d99daeeb91' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'; 
                        connection 'e0182b12-a260-4fc8-a45c-de394a9190f8' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recevie Video'.'f61f6de0-2c6b-4898-874d-f82400b13b71'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recevie Video'.'366d1d34-d9bc-4e4f-845f-cd0facbda6c5' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f5ad5c71-a772-4fa5-9701-5c9bc38cf155';

                            } 
                        ref action '366d1d34-d9bc-4e4f-845f-cd0facbda6c5' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Video Signal'; 
                    }  
                    action 'Sense Distance' : FunctionalChain  { 
                        @CapellaID { eid = "254a9365-948e-4c4e-abd6-312249a2253b"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        connection '47262e14-e23e-4826-97cd-b1e477bb37e3' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Sense Distance'.'1cbd42f6-5b31-441b-957d-f74933dec5b4'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Sense Distance'.'dbb7b4ab-ee6d-4c9c-bf64-2d3a62bf7833' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5a80077d-e971-4b28-8c2b-a6886a9d7c86';

                            } 
                        ref action 'dbb7b4ab-ee6d-4c9c-bf64-2d3a62bf7833' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send Ping'; 
                        ref action '1cbd42f6-5b31-441b-957d-f74933dec5b4' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance'; 
                        connection 'da2a6dab-cb9e-4886-aac0-ad0aae926b87' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Sense Distance'.'dbb7b4ab-ee6d-4c9c-bf64-2d3a62bf7833'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Sense Distance'.'088544e2-0fdc-4db6-b2b6-f673164901c0' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5a3df89a-3eb8-45be-bfe9-065b08b160dc';

                            } 
                        ref action '088544e2-0fdc-4db6-b2b6-f673164901c0' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'; 
                        ref action '04188ad8-e406-448e-802b-f63fe2a2bb05' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Reflection'; 
                        connection '1b9fc749-bf82-4525-a1e7-17e676cae0ec' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Sense Distance'.'088544e2-0fdc-4db6-b2b6-f673164901c0'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Sense Distance'.'04188ad8-e406-448e-802b-f63fe2a2bb05' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'805d5794-55e2-4a64-a705-e97efb6db00f';

                            } 
                        ref action 'fe11da57-1b4c-466d-95e3-346ebcc6afe8' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance'; 
                        connection '1baa1165-1a8b-46d0-83f6-5a29b807d867' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Sense Distance'.'04188ad8-e406-448e-802b-f63fe2a2bb05'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Sense Distance'.'fe11da57-1b4c-466d-95e3-346ebcc6afe8' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8b074f8f-8a02-4acf-8c59-f91feed6858a';

                            } 
                    }  
                    action 'Rotate Camera and USS' : FunctionalChain  { 
                        @CapellaID { eid = "835025f4-0763-4e1e-bfb3-2c91f00abd7c"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        connection '9f1c1b22-afa7-4d1d-8621-f34a64eec3cd' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Rotate Camera and USS'.'420fea21-ae78-4838-88af-d5541d0c1d1b'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Rotate Camera and USS'.'341696a3-a71f-4a33-ba42-3f17c2e4806d' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5e666f00-51d5-40f9-b53d-1a49318fd8c5';

                            } 
                        ref action '341696a3-a71f-4a33-ba42-3f17c2e4806d' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position '; 
                        ref action '420fea21-ae78-4838-88af-d5541d0c1d1b' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Set Position '; 
                        ref action '204eabf0-a666-472c-85cb-ff37710d40c2' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position'; 
                        connection '3a57c462-06da-4aac-bf9b-1b8bf4c0023e' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Rotate Camera and USS'.'341696a3-a71f-4a33-ba42-3f17c2e4806d'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Rotate Camera and USS'.'204eabf0-a666-472c-85cb-ff37710d40c2' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'07b8c685-c0ab-4dca-9ff3-7211a732f502';

                            } 
                        ref action '4960d22f-2695-451e-82c7-81479d8057f2' = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position'; 
                        connection '29668cdb-5185-401b-a920-0eeb0c93d38c' : FunctionalChainInvolvementLink 
                            connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Rotate Camera and USS'.'341696a3-a71f-4a33-ba42-3f17c2e4806d'
                            to  target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Rotate Camera and USS'.'4960d22f-2695-451e-82c7-81479d8057f2' {

                                ref :>> involved = 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'01e59c94-7afd-470c-ab41-41081326f560';

                            } 
                    }  
                    action 'Provide Obstacles' : PhysicalFunction  { 
                        @CapellaID { eid = "6460343c-c945-44d7-9b9b-06b80f7842c2"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "703070cd-8019-4569-883e-236ee30c5c2b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "f072fcad-90b2-4054-9e2d-62057b9e28d2"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "24bae6a4-9bda-4494-b4c8-3c61820660c6"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'.'FOP 1',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'.'FOP 2'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'.'FIP 1'); 
                    }  
                    action 'Tranform Light to Signals' : PhysicalFunction  { 
                        @CapellaID { eid = "a99fccf5-06a7-4525-8e6d-e75574c9583b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "39330746-1a3c-4bd2-bd40-791b6d03dfab"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "0f606d1d-12cc-48c0-a745-97d9bafe2e0f"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tranform Light to Signals'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tranform Light to Signals'.'FIP 1'); 
                    }  
                    action 'Send Ping' : PhysicalFunction  { 
                        @CapellaID { eid = "5b34c754-abca-475e-8e55-bab100501968"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "40df1e98-9818-4a94-b67e-841c67d5027c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "a2532d41-f428-4fc7-8c14-2fac87338d24"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send Ping'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send Ping'.'FIP 1'); 
                    }  
                    action 'Receive Reflection' : PhysicalFunction  { 
                        @CapellaID { eid = "82e157f5-fe51-47ee-9bba-ce73f92bc9af"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "aad74bff-9295-422a-b941-b6dcb09c16ae"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "b7f77711-3cf6-40bb-9f24-81566791b09c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Reflection'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Reflection'.'FIP 1'); 
                    }  
                    action 'Position ' : PhysicalFunction  { 
                        @CapellaID { eid = "23288537-f27a-49f4-bbfe-235a4b8008c2"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "97f4f604-70f5-48b7-8c93-088a03b0d773"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "0fb560d4-655f-4623-8c9c-008ef127a434"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position '.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position '.'FIP 1'); 
                    }  
                    action 'Receive Position' : PhysicalFunction  { 
                        @CapellaID { eid = "ae26eda0-f750-41ef-bf5e-0e7bcb6e1041"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "b648ceea-c911-45ed-91e7-bb6ce625355b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position'.'FIP 1'); 
                    }  
                    action 'Receive Position' : PhysicalFunction  { 
                        @CapellaID { eid = "251b35af-f4f3-4b07-b9d8-2d8f3ab1fe6f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "3cbf2b7c-366d-41e4-8f99-a8a25e6e3ccb"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position'.'FIP 1'); 
                    }  
                    action 'Receive Video Signal' : PhysicalFunction  { 
                        @CapellaID { eid = "221f264c-9c38-4ddc-b4d9-b05cde38f9ef"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "661c5f0c-d193-4e89-b217-022bf35bf9dd"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Video Signal'.'FIP 1'); 
                    }  
                    action 'Determine Distance' : PhysicalFunction  { 
                        @CapellaID { eid = "439b54c3-abee-4c47-b3db-9bff0a817dc5"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "3be7fd89-78af-4fa3-ab83-1e90e5c02eb7"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "bc6b6196-50c1-47db-b1ff-6028ceb93d3f"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance'.'FIP 1'); 
                    }  
                    action 'Set Position ' : PhysicalFunction  { 
                        @CapellaID { eid = "516e090e-0e1f-4fb7-a310-2c39e28eeadc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "b27d1dda-1abe-47ba-a12c-8d7bccddb576"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Set Position '.'FOP 1'); 
                    }  
                    action 'Interact with Rocker' : PhysicalFunction  { 
                        @CapellaID { eid = "d80b353f-241a-43f0-8b73-887e8014680e"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "985feee9-ea43-468f-bd47-3026e9df1a8c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile App Input'); 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Rocker'.'FOP 1'); 
                    }  
                    action 'Recieve Rocker Input' : PhysicalFunction  { 
                        @CapellaID { eid = "fb387245-bc02-45e1-885b-474cbdbafe83"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "43c63669-3c55-49b6-add4-17fa9d952cb8"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile App Input'); 
                             
                        }  
                         
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recieve Rocker Input'.'FIP 1'); 
                    }  
                    action 'Drive Left Wheels' : PhysicalFunction  { 
                        @CapellaID { eid = "a8e922d8-3c24-422d-ab9f-5e7affe04a3f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "bb9e6230-8956-410d-bf0d-4a8015d9385a"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Drive Left Wheels'.'FOP 1'); 
                    }  
                    action 'Driver Right Wheels' : PhysicalFunction  { 
                        @CapellaID { eid = "51a30eb5-9c56-4279-9f04-963ac3411925"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "9fc08b9f-ea22-4336-853b-dc7b39ebed61"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Driver Right Wheels'.'FOP 1'); 
                    }  
                    action 'Provide Left Wheel Resistance' : PhysicalFunction  { 
                        @CapellaID { eid = "b79c2519-44ea-4eec-8d2f-2700b827c624"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "b7d57bf6-5f83-453d-ad03-a2751489e745"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "a9abb995-81bf-4104-9015-5efc868d7792"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Left Wheel Resistance'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Left Wheel Resistance'.'FIP 1'); 
                    }  
                    action 'Provide Right Wheel Resistance' : PhysicalFunction  { 
                        @CapellaID { eid = "86784fa5-dbdf-434c-85f3-ce217c889363"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "9ebed12c-cb02-4b5e-88a4-aa861a88dcde"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "c1b3ffd7-60b0-4ce8-a1ed-008f48265c45"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Right Wheel Resistance'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Right Wheel Resistance'.'FIP 1'); 
                    }  
                    action 'Move Car' : PhysicalFunction  { 
                        @CapellaID { eid = "0a9e0607-6113-421d-8eca-0286075d9462"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "dfcd8c89-ecfe-4515-8f4a-8eac17323598"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'); 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "c531e243-425b-48b8-9843-7b0a9eb170e1"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "cfccad50-6bbb-42ba-af43-ac4a8999107e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Move Car'.'FOP 1'); 
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Move Car'.'FIP 1',
                        'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Move Car'.'FIP 2'); 
                    }  
                    action 'Observe Vehicle ' : PhysicalFunction  { 
                        @CapellaID { eid = "f745ba11-387e-42d3-bf1c-b9e5b2775eee"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "ed186dec-0cc8-4fd8-b72a-6d4d11debed1"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'); 
                             
                        }  
                         
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Observe Vehicle '.'FIP 1'); 
                    }  
                    action 'Interact with Direction Stop Buttons' : PhysicalFunction  { 
                        @CapellaID { eid = "22abe04d-51fa-439e-bd8f-cf9cf0d8ab18"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "11b3092b-8e1d-460d-b030-d91c8b836696"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'); 
                             
                        }  
                         
                        ref :>> outputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Direction Stop Buttons'.'FOP 1'); 
                    }  
                    action 'Recieve Manual Operation Button' : PhysicalFunction  { 
                        @CapellaID { eid = "d2768e8e-5869-4a63-ac57-59bd2f78a756"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "1433accb-6025-4dd7-9a93-3a84dfcab972"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'); 
                             
                        }  
                         
                        ref :>> inputs =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recieve Manual Operation Button'.'FIP 1'); 
                    }  
                    interface 'bd30468b-16c6-4d57-b6b3-95a4547463da' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tranform Light to Signals'.'FIP 1' { 
                        @CapellaID { eid = "bd30468b-16c6-4d57-b6b3-95a4547463da"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Visual Light"; 
                    }  
                    interface '5a3df89a-3eb8-45be-bfe9-065b08b160dc' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send Ping'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'.'FIP 1' { 
                        @CapellaID { eid = "5a3df89a-3eb8-45be-bfe9-065b08b160dc"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Acoustic Ping"; 
                    }  
                    interface '805d5794-55e2-4a64-a705-e97efb6db00f' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles'.'FOP 2'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Reflection'.'FIP 1' { 
                        @CapellaID { eid = "805d5794-55e2-4a64-a705-e97efb6db00f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Acoustic Reflection"; 
                    }  
                    interface '01e59c94-7afd-470c-ab41-41081326f560' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position '.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position'.'FIP 1' { 
                        @CapellaID { eid = "01e59c94-7afd-470c-ab41-41081326f560"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Position"; 
                    }  
                    interface '07b8c685-c0ab-4dca-9ff3-7211a732f502' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position '.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position'.'FIP 1' { 
                        @CapellaID { eid = "07b8c685-c0ab-4dca-9ff3-7211a732f502"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Position"; 
                    }  
                    interface 'f5ad5c71-a772-4fa5-9701-5c9bc38cf155' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tranform Light to Signals'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Video Signal'.'FIP 1' { 
                        @CapellaID { eid = "f5ad5c71-a772-4fa5-9701-5c9bc38cf155"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Video Signals"; 
                    }  
                    interface '5a80077d-e971-4b28-8c2b-a6886a9d7c86' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send Ping'.'FIP 1' { 
                        @CapellaID { eid = "5a80077d-e971-4b28-8c2b-a6886a9d7c86"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Ping Signal"; 
                    }  
                    interface '8b074f8f-8a02-4acf-8c59-f91feed6858a' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Reflection'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance'.'FIP 1' { 
                        @CapellaID { eid = "8b074f8f-8a02-4acf-8c59-f91feed6858a"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Recieve Signal"; 
                    }  
                    interface '5e666f00-51d5-40f9-b53d-1a49318fd8c5' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Set Position '.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position '.'FIP 1' { 
                        @CapellaID { eid = "5e666f00-51d5-40f9-b53d-1a49318fd8c5"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Position"; 
                    }  
                    interface 'f2d4a288-c9b2-44c3-abae-955f3163ab7d' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Rocker'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recieve Rocker Input'.'FIP 1' { 
                        @CapellaID { eid = "f2d4a288-c9b2-44c3-abae-955f3163ab7d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Tactile Rocker Input"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile App Input'); 
                    }  
                    interface '23fc4912-a6d1-4397-91df-9775b739ee1c' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Drive Left Wheels'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Left Wheel Resistance'.'FIP 1' { 
                        @CapellaID { eid = "23fc4912-a6d1-4397-91df-9775b739ee1c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Torgue"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Torque'); 
                    }  
                    interface '4f7f3198-871e-489c-bf0b-42bd09414bc0' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Driver Right Wheels'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Right Wheel Resistance'.'FIP 1' { 
                        @CapellaID { eid = "4f7f3198-871e-489c-bf0b-42bd09414bc0"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Torque"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Torque'); 
                    }  
                    interface '81e07990-e18b-45a2-a60f-9348e0cf894f' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Right Wheel Resistance'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Move Car'.'FIP 1' { 
                        @CapellaID { eid = "81e07990-e18b-45a2-a60f-9348e0cf894f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Realized Right Wheel Torquw"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Realized Torque'); 
                    }  
                    interface 'dfb5c22e-3ff0-4d0f-9f71-b6e1a5c24567' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Left Wheel Resistance'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Move Car'.'FIP 2' { 
                        @CapellaID { eid = "dfb5c22e-3ff0-4d0f-9f71-b6e1a5c24567"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Realized Left Wheel Torque"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Realized Torque'); 
                    }  
                    interface '1e30b3b8-eb65-4be7-9203-fa70698a952d' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Move Car'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Observe Vehicle '.'FIP 1' { 
                        @CapellaID { eid = "1e30b3b8-eb65-4be7-9203-fa70698a952d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Car Dynamic"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Car Dynamics'); 
                    }  
                    interface 'ffcd2917-6ec1-40ed-8715-dc9b40368b6e' : FunctionalExchange 
                        connect source ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Direction Stop Buttons'.'FOP 1'
                        to target ::> 'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recieve Manual Operation Button'.'FIP 1' { 
                        @CapellaID { eid = "ffcd2917-6ec1-40ed-8715-dc9b40368b6e"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Button Presses"; 
                         
                        ref :>> exchangedItems =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'System Analysis'::'Data'::'Tactile Button Input'); 
                    }  
                     
                    ref :>> ownedFunctions =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Obstacles',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tranform Light to Signals',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send Ping',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Reflection',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Position ',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Position',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive Video Signal',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Determine Distance',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Set Position ',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Rocker',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recieve Rocker Input',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Drive Left Wheels',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Driver Right Wheels',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Left Wheel Resistance',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Right Wheel Resistance',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Move Car',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Observe Vehicle ',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Interact with Direction Stop Buttons',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Recieve Manual Operation Button'); 
                    ref :>> ownedFunctionalExchanges =  ('Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'bd30468b-16c6-4d57-b6b3-95a4547463da',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5a3df89a-3eb8-45be-bfe9-065b08b160dc',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'805d5794-55e2-4a64-a705-e97efb6db00f',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'01e59c94-7afd-470c-ab41-41081326f560',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'07b8c685-c0ab-4dca-9ff3-7211a732f502',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f5ad5c71-a772-4fa5-9701-5c9bc38cf155',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5a80077d-e971-4b28-8c2b-a6886a9d7c86',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8b074f8f-8a02-4acf-8c59-f91feed6858a',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5e666f00-51d5-40f9-b53d-1a49318fd8c5',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f2d4a288-c9b2-44c3-abae-955f3163ab7d',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'23fc4912-a6d1-4397-91df-9775b739ee1c',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'4f7f3198-871e-489c-bf0b-42bd09414bc0',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'81e07990-e18b-45a2-a60f-9348e0cf894f',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'dfb5c22e-3ff0-4d0f-9f71-b6e1a5c24567',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'1e30b3b8-eb65-4be7-9203-fa70698a952d',
                    'Smart Robotic Car Project'::'Smart Robotic Car'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'ffcd2917-6ec1-40ed-8715-dc9b40368b6e'); 
                }  
            } 
        } 
    } 
}