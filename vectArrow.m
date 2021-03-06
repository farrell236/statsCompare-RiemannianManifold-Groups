% start: TODO
% % Plot a 3d vector between p0 and p1
% clearer function name ?
% Inputs description:
% Outputs description:
% end:  TODO

function vectArrow(p0,p1,col)
if max(size(p0))==3
    if max(size(p1))==3
        x0 = p0(1);
        y0 = p0(2);
        z0 = p0(3);
        x1 = p1(1);
        y1 = p1(2);
        z1 = p1(3);
%         param3d1([x0;x1],[y0;y1],list([z0;z1],col));   % Draw a line between p0 and p1
%         plot(p0,p1,col);   % Draw a line between p0 and p1
        pts = [p0'; p1'];
        plot3(pts(:,1), pts(:,2), pts(:,3),col);

        p = p1-p0;
        alpha = 0.1;  % Size of arrow head relative to the length of the vector
        bet = 0.1;  % Width of the base of the arrow head relative to the length
        
        hu = [x1-alpha*(p(1)+bet*(p(2)+eps)); x1; x1-alpha*(p(1)-bet*(p(2)+eps))];
        hv = [y1-alpha*(p(2)-bet*(p(1)+eps)); y1; y1-alpha*(p(2)+bet*(p(1)+eps))];
        hw = [z1-alpha*p(3);z1;z1-alpha*p(3)];
        
        hold on; %retains the current graphe and add something to it
%         plot3d(hu(:),hv(:),list(hw(:),col)) ; % 
        grid on;
        xlabel('x');
        ylabel('y');
        zlabel('z');
%         set(gca(),'auto_clear','on');  check what it does in scilab.
    else
        error('p0 and p1 must have the same dimension')
    end
else
    error('this function only accepts 3D vector')
end
end