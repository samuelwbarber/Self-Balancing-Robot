[faces, vertices] = stlread('Tilt+Robot.stl');
% Define the URDF structure
urdfFile = fopen('Tilt+Robot.urdf', 'w');

fprintf(urdfFile, '<robot name="flamingo">\n');
fprintf(urdfFile, '  <link name="base_link">\n');
fprintf(urdfFile, '    <visual>\n');
fprintf(urdfFile, '      <geometry>\n');
fprintf(urdfFile, '        <mesh filename="Tilt+Robot.stl" />\n');
fprintf(urdfFile, '      </geometry>\n');
fprintf(urdfFile, '    </visual>\n');
fprintf(urdfFile, '  </link>\n');
fprintf(urdfFile, '</robot>\n');

fclose(urdfFile);
