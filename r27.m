% 提取列的数据
light_factor = table26.light_factor;
temperature_factor = table26.temperature_factor;
humidity_factor = table26.humidity_factor;
wind_factor = table26.wind_factor;
noise_factor = table26.noise_factor;
PM10_factor = table26.PM10_factor;
PM25_factor = table26.PM25_factor;
CO2_factor = table26.CO2_factor;
CO_factor = table26.CO_factor;
TVOC_factor = table26.TVOC_factor;
flowdensity_factor = table26.flowdensity_factor;
natural_factor = table26.natural_factor;
social_factor = table26.social_factor;
employee_factor = table26.employee_factor;
technical_factor = table26.technical_factor;
skill_factor = table26.skill_factor;
basiclocation_factor = table26.basiclocation_factor;
emergencylocation_factor = table26.emergencylocation_factor;
basicalconfiguration_factor = table26.basicalconfiguration_factor;
emergencyconfiguration_factor = table26.emergencyconfiguration_factor;
repair_factor = table26.repair_factor;
qualification_factor = table26.qualification_factor;
safety_factor = table26.safety_factor;
drill_factor = table26.drill_factor;
management_factor = table26.management_factor;
plan_factor = table26.plan_factor;
inspection_factor = table26.inspection_factor;
risk_factor = table26.risk_factor;
organization_factor = table26.organization_factor;
bacteria_factor = table26.bacteria_factor;




% 调用函数计算调整列
social_factor = adjust_social_factor(social_factor);
plan_factor= adjust_plan_factor(plan_factor);
employee_factor =adjust_employee_factor (employee_factor);
PM10_factor= adjust_PM10_factor(PM10_factor);
management_factor= adjust_management_factor(management_factor);
bacteria_factor= adjust_bacteria_factor(bacteria_factor);
PM25_factor= adjust_PM25_factor (PM25_factor);
inspection_factor = adjust_inspection_factor(inspection_factor);
CO_factor= adjust_CO_factor(CO_factor);
technical_factor= adjust_technical_factor(technical_factor);
qualification_factor= adjust_qualification_factor(qualification_factor);
light_factor= adjust_light_factor(light_factor);
drill_factor= adjust_drill_factor(drill_factor);
CO2_factor = adjust_CO2_factor(CO2_factor);
risk_factor = adjust_risk_factor(risk_factor);
emergencyconfiguration_factor= adjust_emergencyconfiguration_factor(emergencyconfiguration_factor);
basiclocation_factor= adjust_basiclocation_factor(basiclocation_factor);
emergencylocation_factor= adjust_emergencylocation_factor(emergencylocation_factor);
noise_factor= adjust_noise_factor(noise_factor);
natural_factor =adjust_natural_factor (natural_factor);
TVOC_factor = adjust_TVOC_factor(TVOC_factor);
organization_factor= adjust_organization_factor(organization_factor);
skill_factor= adjust_skill_factor(skill_factor);
safety_factor= adjust_safety_factor(safety_factor);
repair_factor= adjust_repair_factor(repair_factor);
humidity_factor= adjust_humidity_factor(humidity_factor);
basicalconfiguration_factor= adjust_basicalconfiguration_factor(basicalconfiguration_factor);
flowdensity_factor= adjust_flowdensity_factor(flowdensity_factor);
temperature_factor= adjust_temperature_factor(temperature_factor);
wind_factor= wind_factor;

% 创建一个新表格
adjustedTable1 = table26;
adjustedTable1.employee_factor = employee_factor;

adjustedTable2 = table26;
adjustedTable2.safety_factor = safety_factor;

adjustedTable3 = table26;
adjustedTable3.PM25_factor = PM25_factor;

adjustedTable4 = table26;
adjustedTable4.PM10_factor = PM10_factor;

adjustedTable5 = table26;
adjustedTable5.emergencyconfiguration_factor = emergencyconfiguration_factor;

adjustedTable6 = table26;
adjustedTable6.bacteria_factor = bacteria_factor;

adjustedTable7 = table26;
adjustedTable7.drill_factor = drill_factor;

adjustedTable8 = table26;
adjustedTable8.organization_factor = organization_factor;

adjustedTable9 = table26;
adjustedTable9.qualification_factor = qualification_factor;

adjustedTable10 = table26;
adjustedTable10.technical_factor = technical_factor;

adjustedTable11 = table26;
adjustedTable11.plan_factor = plan_factor;

adjustedTable12 = table26;
adjustedTable12.CO2_factor = CO2_factor;

adjustedTable13 = table26;
adjustedTable13.repair_factor = repair_factor;

adjustedTable14 = table26;
adjustedTable14.social_factor = social_factor;

adjustedTable15 = table26;
adjustedTable15.basiclocation_factor = basiclocation_factor;

adjustedTable16 = table26;
adjustedTable16.skill_factor = skill_factor;

adjustedTable17 = table26;
adjustedTable17.temperature_factor = temperature_factor;

adjustedTable18 = table26;
adjustedTable18.natural_factor = natural_factor;

adjustedTable19 = table26;
adjustedTable19.flowdensity_factor = flowdensity_factor;

adjustedTable20 = table26;
adjustedTable20.management_factor = management_factor;

adjustedTable21 = table26;
adjustedTable21.light_factor = light_factor;

adjustedTable22 = table26;
adjustedTable22.CO_factor = CO_factor;

adjustedTable23 = table26;
adjustedTable23.basicalconfiguration_factor = basicalconfiguration_factor;

adjustedTable24 = table26;
adjustedTable24.inspection_factor = inspection_factor;

adjustedTable25 = table26;
adjustedTable25.risk_factor = risk_factor;

adjustedTable26 = table26;
adjustedTable26.noise_factor = noise_factor;

adjustedTable27 = table26;
adjustedTable27.TVOC_factor = TVOC_factor;

adjustedTable28 = table26;
adjustedTable28.wind_factor = wind_factor;

adjustedTable29 = table26;
adjustedTable29.humidity_factor = humidity_factor;

adjustedTable30 = table26;
adjustedTable30.emergencylocation_factor = emergencylocation_factor;


%放在同一表下
table27 = vertcat(adjustedTable1, adjustedTable2,adjustedTable3,adjustedTable4,adjustedTable5,adjustedTable6,adjustedTable7,adjustedTable8,adjustedTable9,adjustedTable10,adjustedTable11, adjustedTable12,adjustedTable13,adjustedTable14,adjustedTable15,adjustedTable16,adjustedTable17,adjustedTable18,adjustedTable19,adjustedTable20,adjustedTable21, adjustedTable22,adjustedTable23,adjustedTable24,adjustedTable25,adjustedTable26,adjustedTable27,adjustedTable28,adjustedTable29,adjustedTable30);



%删除重复项
[~, uniqueIndices] = unique(table27, 'rows', 'stable');
table27Unique = table27(uniqueIndices, :);

rows_table26Unique_noDup = table26{:,:};
rows_table27Unique = table27Unique{:,:};
[~, idx1] = ismember(rows_table27Unique, rows_table26Unique_noDup, 'rows');
table27 = table27Unique(~idx1, :);