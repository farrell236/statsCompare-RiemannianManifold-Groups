% start: TODO
% What the function does
% clearer function name ? 
% Inputs description:
% Outputs description:
% end:  TODO

% Riemannian exponential and logarithm from any point f0 (for left- and right-invariant metric)

function [f]=riemExpL(a,f0,v)
    f=grpCompose(f0, riemExpIdL(a, jL(f0)\v));  
%     left-invariance of the left Riemannian geodesics
end