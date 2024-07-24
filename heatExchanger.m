T_u = 273.15 + 12; % ambient, K
T_1 = 273.15 + 70; % water, K
T_2 = 273.15 + 48; % water, K
T_3 = 273.15 + 16; % air, K
T_4 = 273.15 + 55; % air, K

F_1 = 0.467; % kg/s
F_3 = 1.1; % kg/s
cp_air = 1.004; % kJ/kgK
cp_water = 4.19; % kJ/kgK
R = 0.287; % kJ/kgK

p_3 = 1.036; % bar
p_4 = 1.0; %bar
p_u = 1.0; % bar

%% Air side
E_3 = F_3 * (cp_air * (T_3 - T_u) - T_u * (cp_air * log(T_3/T_u) - R * log(p_3/p_u)));
E_4 = F_3 * (cp_air * (T_4 - T_u) - T_u * (cp_air * log(T_4/T_u) - R * log(p_4/p_u)));

%% Water side
E_1 = F_1 * (cp_water * (T_1 - T_u) - T_u * cp_water * log(T_1/T_u));
E_2 = F_1 * (cp_water * (T_2 - T_u) - T_u * cp_water * log(T_2/T_u));

%% Exergy loss
E_L = (E_1 - E_2) - (E_3 - E_4)
