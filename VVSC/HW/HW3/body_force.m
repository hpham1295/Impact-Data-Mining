clear; clc;

syms X Y Z E nu C1 n real
assume(n,'integer');

% Lamé constants
lambda = E*nu / ((1+nu)*(1-2*nu));
mu     = E / (2*(1+nu));

% Manufactured displacement field
f = C1*sin(n*pi*X)*sin(n*pi*Y)*sin(n*pi*Z);

ux = f;
uy = f;
uz = f;

% Small-strain tensor
grad_u = [ diff(ux,X), diff(ux,Y), diff(ux,Z);
           diff(uy,X), diff(uy,Y), diff(uy,Z);
           diff(uz,X), diff(uz,Y), diff(uz,Z) ];

eps = simplify(0.5*(grad_u + grad_u.'));

% Stress tensor
sigma = simplify(lambda*trace(eps)*eye(3) + 2*mu*eps);

% Body force phi = -div(sigma)
phi = sym(zeros(3,1));
phi(1) = simplify(-( diff(sigma(1,1),X) + diff(sigma(1,2),Y) + diff(sigma(1,3),Z) ));
phi(2) = simplify(-( diff(sigma(2,1),X) + diff(sigma(2,2),Y) + diff(sigma(2,3),Z) ));
phi(3) = simplify(-( diff(sigma(3,1),X) + diff(sigma(3,2),Y) + diff(sigma(3,3),Z) ));

%% Substitute constants
phi_case = subs(phi, [C1, n, E, nu], [0.01, 2, 400/3, 1/3]);

%% Additional cleanup
phi_case = simplify(phi_case, 'Steps', 100);
phi_case = arrayfun(@(s) collect(s, ...
    [sin(2*pi*X), sin(2*pi*Y), sin(2*pi*Z), cos(2*pi*X), cos(2*pi*Y), cos(2*pi*Z)]), ...
    phi_case);

%% Convert to readable plain text
body_x = char(phi_case(1));
body_y = char(phi_case(2));
body_z = char(phi_case(3));

disp('body x');
disp(body_x);
disp(' ');
disp('body y');
disp(body_y);
disp(' ');
disp('body z');
disp(body_z);
