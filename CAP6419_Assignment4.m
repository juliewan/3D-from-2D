%% load desired image
img_file = "imgs/shed.jpeg"
% % img_file = "imgs/shed_rotate_left.jpeg"
% % img_file = "imgs/shed_rotate_right.jpeg"
% 
% % img_file = "imgs/painting.jpg"
% % img_file = "imgs/painting_rotate_left.jpg"
% 
% % img_file = "imgs/gravesite.png"
% %img_file = "imgs/gravesite_rotate.png"
img = im2gray(imread(img_file));
% 
% w = 1.0 %mean(size(img))/2

%% ROBUST VANISHING PTS using Jacobi eigendecomposition
% figure
% imshow(img)
% [xi, yi] = getpts
% 
% M_sum = zeros(3)
% for i = 1:size(xi,1)
% M = [xi(i,:)*xi(i,:) xi(i,:)*yi(i,:) xi(i,:)*w;
%      xi(i,:)*yi(i,:) yi(i,:)*yi(i,:) yi(i,:)*w;
%      xi(i,:)*w       yi(i,:)*w       w*w       ]
% M_sum = plus(M_sum, M)
% end
% 
% [V, d, it_num, rot_num] = jacobi_eigenvalue(M_sum, 10)
% 
% v_x_ = V(:, 1)
% v_x = [-v_x_(end,1)/v_x_(1,1) -v_x_(end,1)/v_x_(2,1) w]
% 
% 
% 
% figure
% imshow(img)
% [xi, yi] = getpts
% 
% M_sum = zeros(3)
% for i = 1:size(xi,1)
% M = [xi(i,:)*xi(i,:) xi(i,:)*yi(i,:) xi(i,:)*w;
%      xi(i,:)*yi(i,:) yi(i,:)*yi(i,:) yi(i,:)*w;
%      xi(i,:)*w       yi(i,:)*w       w*w       ]
% M_sum = plus(M_sum, M)
% end
% 
% [V, d, it_num, rot_num] = jacobi_eigenvalue(M_sum, 10)
% 
% v_y_ = V(:, 1)
% v_y = [-v_y_(end,1)/v_y_(1,1) -v_y_(end,1)/v_y_(2,1) w]
% 
% 
% figure
% imshow(img)
% [xi, yi] = getpts
% 
% M_sum = zeros(3)
% for i = 1:size(xi,1)
% M = [xi(i,:)*xi(i,:) xi(i,:)*yi(i,:) xi(i,:)*w;
%      xi(i,:)*yi(i,:) yi(i,:)*yi(i,:) yi(i,:)*w;
%      xi(i,:)*w       yi(i,:)*w       w*w       ]
% M_sum = plus(M_sum, M)
% end
% 
% [V, d, it_num, rot_num] = jacobi_eigenvalue(M_sum, 10)
% 
% v_ = V(:, 1)
% v = [-v_(end,1)/v_(1,1) -v_(end,1)/v_(2,1) w]



%% select beginning and end points of 2 lines parallel to x-axis
%% (4 clicks along eastbound reference lines in "Z"-shape order)
% figure
% imshow(img)
% [xi, yi] = getpts

% x1 = xi(1,:)
% x2 = xi(2,:)
% x3 = xi(3,:)
% x4 = xi(4,:)
% 
% y1 = yi(1,:)
% y2 = yi(2,:)
% y3 = yi(3,:)
% y4 = yi(4,:)
% 
% % homogeneous representation of selected coordinates
% pt1 = [x1 y1 w]
% pt2 = [x2 y2 w]
% pt3 = [x3 y3 w]
% pt4 = [x4 y4 w]


%% GRAVESITE
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% pt1 = [135.4182 692.9868 1.0000]
% pt2 = [420.7375 770.8621 1.0000]
% pt3 = [556.3481 662.1051 1.0000]
% pt4 = [681.8886 684.2593 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% pt1 = [135.4182 690.9727  1.0000]
% pt2 = [600.6565 611.0833 1.0000]
% pt3 = [4.5070 574.8310 1.0000]
% pt4 = [430.8076 552.0055 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% pt1 = [173.9393 135.3645 1.0000]
% pt2 = [94.8458 420.6417 1.0000]
% pt3 = [263.1729 152.2648 1.0000]
% pt4 = [226.6682 438.2181 1.0000]


%% PAINTING
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% pt1 = [655.3909 670.2154 1.0000]
% pt2 = [543.3941 810.0496 1.0000]
% pt3 = [820.4730 667.6259 1.0000]
% pt4 = [848.9578 809.4023 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% pt1 = [197.9492 815.8801 1.0000]
% pt2 = [532.0561 814.1123 1.0000]
% pt3 = [176.7361 951.9977 1.0000]
% pt4 = [426.8743 949.3461 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% pt1 = [649.5645 658.5625 1.0000]
% pt2 = [645.0328 354.9410 1.0000]
% pt3 = [878.7373 653.3835 1.0000]
% pt4 = [874.8530 369.1833 1.0000]


%% SHED
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% pt1 = [545.0000 639.0000 1.0000]
% pt2 = [852.0000 603.0000 1.0000]
% pt3 = [553.0000 241.0000 1.0000]
% pt4 = [770.0000 267.0000 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% pt1 = [235.6452 481.1440 1.0000]
% pt2 = [630.8344 486.2268 1.0000]
% pt3 = [365.2571 747.9920 1.0000]
% pt4 = [605.4203 755.6162 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% pt1 = [137.8010 543.4085 1.0000]
% pt2 = [535.5315 551.0328 1.0000]
% pt3 = [128.9061 390.9240 1.0000]
% pt4 = [412.2732 398.5482 1.0000]
% 
% 
% % homogeneous vectors of the lines parallel to the x-axis,
% % from cross product of chosen end points
% l1 = cross(pt1, pt2)
% l2 = cross(pt3, pt4)
% 
% % vanishing point of x-axis
% v_x = cross(l1, l2)

% v_x = [-v_x3(1,1)/v_x3(end,1) -v_x3(2,1)/v_x3(end,1) w]


% select beginning and end points of 2 lines parallel to y-axis
% (4 clicks along westbound reference lines in "Z"-shape order)
% figure
% imshow(img)
% [xi, yi] = getpts
% 
% x1 = xi(1,:)
% x2 = xi(2,:)
% x3 = xi(3,:)
% x4 = xi(4,:)
% 
% y1 = yi(1,:)
% y2 = yi(2,:)
% y3 = yi(3,:)
% y4 = yi(4,:)
% 
% pt1 = [x1 y1 w]
% pt2 = [x2 y2 w]
% pt3 = [x3 y3 w]
% pt4 = [x4 y4 w]


%% GRAVESITE
% % 1. REFERENCE PLANE XY AND VERTICAL PT Z
% pt1 = [420.0662 772.2048 1.0000]
% pt2 = [681.2173 683.5880 1.0000]
% pt3 = [5.1783 572.8170 1.0000]
% pt4 = [660.4058 541.2640 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% pt1 = [332.7921 475.4727 1.0000]
% pt2 = [331.4494 337.8481 1.0000]
% pt3 = [557.0195 656.7344 1.0000]
% pt4 = [557.6908 597.6565 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% pt1 = [365.2508 334.1121 1.0000]
% pt2 = [521.4097 332.0841 1.0000]
% pt3 = [205.0358 556.5202 1.0000]
% pt4 = [267.2290 557.1963 1.0000]
 

%% PAINTING
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% pt1 = [678.6966 675.3944 1.0000]
% pt2 = [848.9578 672.8049 1.0000]
% pt3 = [604.2478 793.2177 1.0000]
% pt4 = [894.9218 790.6282 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% pt1 = [197.0653 820.2995 1.0000]
% pt2 = 1.0e+03 * [ 0.0654 1.0174 0.0010]
% pt3 = [524.1012 813.2284 1.0000]
% pt4 = [ 524.9851 906.0359 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% pt1 = [655.3909 659.2099 1.0000]
% pt2 = [865.1423 656.6204 1.0000]
% pt3 = [366.0117 198.2748 1.0000]
% pt4 = [880.0321 191.1536 1.0000]


%% SHED
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% pt1 = [549.0000 638.0000 1.0000]
% pt2 = [214.0000 534.0000 1.0000]
% pt3 = [655.0000 150.0000 1.0000]
% pt4 = [292.0000 256.0000 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% pt1 = [493.5983 486.2268 1.0000]
% pt2 = [458.0185 816.6100 1.0000]
% pt3 = [139.0717 371.8634 1.0000]
% pt4 = [250.8937 742.9091 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% pt1 = [202.6069 547.2206 1.0000]
% pt2 = [231.8331 849.6483 1.0000]
% pt3 = [438.9580 553.5742 1.0000]
% pt4 = [418.6267 845.8362 1.0000]

% homogeneous vectors of the lines parallel to the y-axis,
% from cross product of chosen end points
% l1 = cross(pt1, pt2)
% l2 = cross(pt3, pt4)
% 
% % vanishing point of y-axis
% v_y = cross(l1, l2)


% select beginning and end points of 2 lines parallel to z axis
% (4 clicks along vertical/height lines in "Z"-shape order)
% figure
% imshow(img)
% [xi, yi] = getpts
% 
% x1 = xi(1,:)
% x2 = xi(2,:)
% x3 = xi(3,:)
% x4 = xi(4,:)
% 
% y1 = yi(1,:)
% y2 = yi(2,:)
% y3 = yi(3,:)
% y4 = yi(4,:)
% 
% pt1 = [x1 y1 w]
% pt2 = [x2 y2 w]
% pt3 = [x3 y3 w]
% pt4 = [x4 y4 w]

%% GRAVESITE
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% pt1 = [332.7921 482.1861 1.0000]
% pt2 = [332.1207 339.1908 1.0000]
% pt3 = [681.2173 684.2593 1.0000]
% pt4 = [681.8886 603.6986 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% pt1 = [135.4182 690.3014 1.0000]
% pt2 = [420.0662 764.8201 1.0000]
% pt3 = [556.3481 652.7064 1.0000]
% pt4 = [681.8886 676.8746 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% pt1 = [243.5685 286.7913 1.0000]
% pt2 = [280.7492 575.4486 0.0010]
% pt3 = [227.3442 438.2181 1.0000]
% pt4 = [272.6371 703.2150 1.0000]


%% PAINTING
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% pt1 = [612.0164 654.6783 1.0000]
% pt2 = [608.7795 412.5579 1.0000]
% pt3 = [879.3847 654.0309 1.0000]
% pt4 = [876.1478 380.1888 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% pt1 = [197.0653 816.7639 1.0000]
% pt2 = [189.9943 212.1895 1.0000]
% pt3 = [432.1776 814.9962 1.0000]
% pt4 = [427.7582 573.6967 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% pt1 = [657.9805 667.6259 1.0000]
% pt2 = [540.8045 814.5813 0.0010]
% pt3 = [766.0930 666.3311 1.0000]
% pt4 = [744.7295 813.9339 1.0000]


%% SHED
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% pt1 = [545.0000 637.0000 1.0000]
% pt2 = [556.0000 236.0000 1.0000]
% pt3 = [129.0000 540.0000 1.0000]
% pt4 = [134.0000 378.0000 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% pt1 = [308.0754 477.3319 1.0000]
% pt2 = [330.9481 199.0476 1.0000]
% pt3 = [544.4265 478.6026 1.0000]
% pt4 = [524.0952 179.9870 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% pt1 = [431.3337 397.2775 1.0000]
% pt2 = [399.5661 115.1811 1.0000]
% pt3 = [630.8344 659.0426 1.0000]
% pt4 = [519.0124 294.3504 1.0000]

% l1 = cross(pt1, pt2)
% l2 = cross(pt3, pt4)
% 
% % (vertical) vanishing point of z-axis
% v = cross(l1, l2)

% plane vanishing line from cross product of v_x and v_y
% l = cross(v_x, v_y)
% 
% % p4 must not lie on vanishing line
% lhat = l/norm(l)


% SELECT REFERENCE DISTANCE
% two points x (bottom) and x' (top) designate a reference distance
% figure
% imshow(img)
% [xi, yi] = getpts
% 
% x1 = xi(1,:)
% x2 = xi(2,:)
% 
% y1 = yi(1,:)
% y2 = yi(2,:)
% 
% x = [x1 y1 w]
% xprime = [x2 y2 w]

%% GRAVESITE
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% Used 71.12 cm guestimate for tombstone height
% Z = 71.12
% x = [444.2344 782.9463 1.0000]
% xprime = [436.1783 635.9229 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% Used 50.8 cm guestimate for tombstone width
% Z = 50.8
% x = [418.0522 735.9525 1.0000]
% xprime = [469.0740 746.0226 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% Used 182.88 cm guestimate dist between graves
% Z = 182.88
% x = [226 437 1.0000]
% xprime = [272 703 1.0000]

%% PAINTING
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% Used 121.9 cm guestimate for man sitting height
% Z = 121.9
% x = [677.4019 666.9785 1.0000]
% xprime = [681.2862 546.5657 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% Used 63.5 cm guestimate man width
% Z = 63.5
% x = [547.0821 813.2284 1.0000]
% xprime = [546.1982 754.0084 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% Used 177.8 cm guestimate dist of desk front from wall
% Z = 177.8
% x = [712.3604 666.9785 1.0000]
% xprime = [699.4128 693.5211 1.0000]

%% SHED
% 1. REFERENCE PLANE XY AND VERTICAL PT Z
% Used 294.3 cm for top of the frame of the rightmost window from the ground
% as reference height to produce alpha
% Z = 294.3
% x = [545.0000 635.0000 1.0000]
% xprime = [550.0000 232.0000 1.0000]

% 2. REFERENCE PLANE YZ AND VERTICAL PT X
% Used 294.3-245.7760 cm guestimate for window width
% Z = 294.3-245.7760
% x = [268.6836 319.7645 1.0000]
% xprime = [264.8714 366.7806 1.0000]

% 3. REFERENCE PLANE XZ AND VERTICAL PT Y
% Used 190.5880-104.4681 cm guestimate for window width
% Z = 190.5880-104.4681
% x = [298.0000 466.0000 1.0000]
% xprime = [375.0000 468.0000 1.0000]

% alphaZ = -norm(cross(x, xprime))/(dot(lhat, x)*(norm(cross(v, xprime))))
% 
% alpha = alphaZ/Z
% 
% % p3
% alphav = mtimes(alpha, v)


% FINALLY. MEASURE A HEIGHT IN THE IMAGE !!
% select image of TOP horizontal line l_xprime by choosing any two points on it
% figure
% imshow(img)
% [xi, yi] = getpts
% 
% x1 = xi(1,:)
% x2 = xi(2,:)
% 
% y1 = yi(1,:)
% y2 = yi(2,:)
% 
% pt1 = [x1 y1 w]
% pt2 = [x2 y2 w]
% 
% l_xprime = cross(pt1, pt2)
% 
% % associated vanishing point v_h
% v_h = cross(l_xprime, l)
% 
% % l_x, image of BOTTOM line parallel to l_xprime, is specified by choosing one pt
% figure
% imshow(img)
% [xi, yi] = getpts
% 
% x1 = xi(1,:)
% 
% y1 = yi(1,:)
% 
% pt1 = [x1 y1 w]
% 
% l_x = cross(v_h, pt1)/dot(pt1, pt1) + pt1
% 
% % the corresponding x on line l_x given x' from l_xprime
% % pt2 is reintroduced from previous pts selection for l_xprime as xprime
% xprime = pt2
% x = cross(cross(xprime, v), l_x)
% 
% % height of corresponding points x, x'
% Z = norm(cross(x, xprime))/(dot(lhat, x)*(norm(cross(alphav, xprime))))

% columns of projection matrix P
% p1 = (v_x).'
% p2 = (v_y).'
% p3 = alphav.'
% p4 = lhat.'
% 
% % camera centre using Cramer's rule
% X_c = -det([p2 p3 p4])
% Y_c = det([p1 p3 p4])
% Z_c = -det([p1 p2 p4])
% W_c = det([p1 p2 p3])
% 
% C_ = [X_c Y_c Z_c W_c]
% C = [X_c/W_c Y_c/W_c Z_c/W_c]

% %% 
% %% 3D Modeling
% %%

f1 = figure
f2 = figure
f3 = figure

% GRAVESITE
beacon_height = 455.6799
pyramid_height = [171.6604 197.9355 163.6069 170.0885 168.8268]
darrah_height = 66.1535
adsit_height = 67.1124
hoyt_height = 75.2152
chaney_height = 74.1601
fisher_height = 78.1127
% ftaylor_height = 69.6374

adsit_width = 220.1613-181.2192
darrah_width = 316.2393-285.0811
pyramid_width = 498.0212-342.1192+30
beacon_width = 68.5942
width_btwn_adsit_darrah = 111.6593
width_btwn_adsit_hoyt = 113.5414
fisher_width = 52.9017
chaney_width = 33.6741
width_btwn_fisher_chaney = 106.2204
width_btwn_pyramid_tomb = 306.7253

depth_chaney_adsit = 186.9420
depth_pyra = 179.8293+30
depth_beacon_pyra = 197.8383
depth_pyra_tomb = 240.7683

bg = imread("imgs/gravesite_bg.png");
[hoyt,map,alpha_hoyt] = imread("imgs/hoyt.png");
[adsit,map,alpha_adsit] = imread("imgs/adsit.png");
[darrah,map,alpha_darrah] = imread("imgs/darrah.png");
[chaney,map,alpha_chaney] = imread("imgs/chaney.png");
[fisher,map,alpha_fisher] = imread("imgs/fisher.png");
[pyramid_mid,map,alpha_pyramid_mid] = imread("imgs/pyramid_mid.png");
[pyramid_right,map,alpha_pyramid_right] = imread("imgs/pyramid_right.png");
[pyramid_left,map,alpha_pyramid_left] = imread("imgs/pyramid_left.png");
[beacon,map,alpha_beacon] = imread("imgs/beacon.png");
grave_floor = imread("imgs/grave_floor.png");

figure(f1)
surf([-100 700; -100 700], [100 100; 100 100], [500 500; 0 0], ...
    CData = bg, FaceColor = 'texturemap', EdgeColor = 'none');
hold on
grid off
axis equal
surf([700 700; 700 700], [-800 100; -800 100], [500 500; 0 0], ...
    CData = bg, FaceColor = 'texturemap', EdgeColor = 'none');
hold on
surf([95-width_btwn_adsit_hoyt 95-width_btwn_adsit_hoyt+50.8; 95-width_btwn_adsit_hoyt 95-width_btwn_adsit_hoyt+50.8], [-depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah-width_btwn_adsit_hoyt -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah-width_btwn_adsit_hoyt; -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah-width_btwn_adsit_hoyt -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah-width_btwn_adsit_hoyt], [hoyt_height hoyt_height; 0 0],...
    CData = hoyt, FaceColor = 'texturemap', AlphaData = alpha_hoyt, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([95-width_btwn_adsit_hoyt 95-width_btwn_adsit_hoyt+darrah_width; 95-width_btwn_adsit_hoyt 95-width_btwn_adsit_hoyt+darrah_width], [-depth_beacon_pyra-depth_pyra_tomb -depth_beacon_pyra-depth_pyra_tomb; -depth_beacon_pyra-depth_pyra_tomb -depth_beacon_pyra-depth_pyra_tomb], [darrah_height darrah_height; 0 0],...
    CData = darrah, FaceColor = 'texturemap', AlphaData = alpha_darrah, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([95-width_btwn_adsit_hoyt 95-width_btwn_adsit_hoyt+adsit_width; 95-width_btwn_adsit_hoyt 95-width_btwn_adsit_hoyt+adsit_width], [-depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah; -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah], [adsit_height adsit_height; 0 0],...
    CData = adsit, FaceColor = 'texturemap', AlphaData = alpha_adsit, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([250-depth_chaney_adsit 250-depth_chaney_adsit+chaney_width; 250-depth_chaney_adsit 250-depth_chaney_adsit+chaney_width], [-depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah; -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah], [chaney_height chaney_height; 0 0],...
    CData = chaney, FaceColor = 'texturemap', AlphaData = alpha_chaney, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([250-182.88 250-182.88+fisher_width; 250-182.88 250-182.88+fisher_width], [-depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah-width_btwn_adsit_hoyt -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah-width_btwn_adsit_hoyt; -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah-width_btwn_adsit_hoyt -depth_beacon_pyra-depth_pyra_tomb-width_btwn_adsit_darrah-width_btwn_adsit_hoyt], [fisher_height fisher_height; 0 0],...
    CData = fisher, FaceColor = 'texturemap', AlphaData = alpha_fisher, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([250 250+pyramid_width; 250 250+pyramid_width], [-depth_beacon_pyra -depth_beacon_pyra; -depth_beacon_pyra -depth_beacon_pyra], [mean(pyramid_height) mean(pyramid_height); 0 0],...
    CData = pyramid_mid, FaceColor = 'texturemap', AlphaData = alpha_pyramid_mid, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([250+depth_pyra 250+depth_pyra+pyramid_width; 250+depth_pyra 250+depth_pyra+pyramid_width], [-depth_beacon_pyra -depth_beacon_pyra; -depth_beacon_pyra -depth_beacon_pyra], [mean(pyramid_height) mean(pyramid_height); 0 0],...
    CData = pyramid_right, FaceColor = 'texturemap', AlphaData = alpha_pyramid_right, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([250-depth_pyra 250-depth_pyra+pyramid_width; 250-depth_pyra 250-depth_pyra+pyramid_width], [-depth_beacon_pyra -depth_beacon_pyra; -depth_beacon_pyra -depth_beacon_pyra], [mean(pyramid_height) mean(pyramid_height); 0 0],...
    CData = pyramid_left, FaceColor = 'texturemap', AlphaData = alpha_pyramid_left, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([250 250+beacon_width; 250 250+beacon_width], [-10 -10; -10 -10], [beacon_height beacon_height; 0 0],...
    CData = beacon, FaceColor = 'texturemap', AlphaData = alpha_beacon, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([-100 700; -100 700], [100 100; -800 -800], [0 0; 0 0],...
    CData = grave_floor, FaceColor = 'texturemap', EdgeColor = 'none');
hold on
C = [-527.2848 562.8312  160.7017]
surf([C(1,1) C(1,1); 0 0], [-C(1,2) -C(1,2); 0 0], [C(1,end) C(1,end); 0 0],...    
      CData = img, FaceColor = 'texturemap', EdgeColor = 'none');
axis([-600 800 -1000 100 -10 700])


% PAINTING
room_height = 474.9480
bookshelf_height = 282.1439
lion_height = 44.4447
stage_height = 8.0276
fireplace_height = 453.0828
fireplacefloor_height = 4.6795

room_width = 643.0017
desk_width = 173.9572
bookshelf_width = 288.4482
lion_width = 467.4410-377.2195
stage_width = 320.1372
fireplace_width = 605.8267
fireplacefloor_width = 537.3643

lion_depth = 858.2597
bookshelf_depth = 12.9634
desk_depth = 94.3096
stage_depth = 133.8166
fireplacefloor_depth1 = 1.4320e+03
fireplacefloor_depth2 = 136.0432

wall = imread("imgs/wall.png");
[lion,map,alphalion] = imread("imgs/lion.png");
[hman,map,alphahman] = imread("imgs/hunched_man.png");
[bookshelf,map,alphabookshelf] = imread("imgs/bookshelf.png");
[fireplace,map,alphafireplace] = imread("imgs/fireplace.png");
floor = imread("imgs/floor.png");
stage = imread("imgs/stage.png");
fireplacefloor = imread("imgs/fireplacefloor.png");

figure(f2)
surf([0 room_width; 0 room_width], [0 0; 0 0], [room_height room_height; 0 0], ...
    CData = wall, FaceColor = 'texturemap', EdgeColor = 'none');
hold on
grid off
axis equal
surf([10 desk_width; 10 desk_width], [-desk_depth -desk_depth; -desk_depth -desk_depth], [111.9+stage_height 111.9+stage_height; stage_height stage_height],...
     CData = hman, FaceColor = 'texturemap', AlphaData = alphahman, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([0 bookshelf_width; 0 bookshelf_width], [-bookshelf_depth -bookshelf_depth; -bookshelf_depth -bookshelf_depth], [bookshelf_height+stage_height bookshelf_height+stage_height; stage_height stage_height],...
    CData = bookshelf, FaceColor = 'texturemap', AlphaData = alphabookshelf, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([398.7943 398.7943+lion_width; 398.7943 398.7943+lion_width], [-lion_depth -lion_depth; -lion_depth -lion_depth], [lion_height lion_height; -15.1645 -15.1645],...
    CData = lion, FaceColor = 'texturemap', AlphaData = alphalion, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([0 room_width; 0 room_width], [0 0; -fireplacefloor_depth1 -fireplacefloor_depth1], [0 0; 0 0],...
    CData = floor, FaceColor = 'texturemap', EdgeColor = 'none');
hold on
surf([0 stage_width; 0 stage_width], [-bookshelf_depth -bookshelf_depth; -stage_depth -stage_depth], [stage_height stage_height; stage_height stage_height],...
    CData = stage, FaceColor = 'texturemap', AlphaData = alphalion, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([fireplace_width 700; fireplace_width 700], [-fireplacefloor_depth1+20 -fireplacefloor_depth1+20; -fireplacefloor_depth1+20 -fireplacefloor_depth1+20], [fireplace_height fireplace_height; 0 0],...
    CData = fireplace, FaceColor = 'texturemap', AlphaData = alphafireplace, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([fireplacefloor_width 700; fireplacefloor_width 700], [-fireplacefloor_depth2 -fireplacefloor_depth2; -fireplacefloor_depth1 -fireplacefloor_depth1], [fireplacefloor_height fireplacefloor_height; fireplacefloor_height fireplacefloor_height],...
    CData = fireplacefloor, FaceColor = 'texturemap', EdgeColor = 'none');
hold on
% first camera center
% C = [-171.2342 683.0944 -120.1389]
% second camera center
C = [-274.8639 511.0733 -155.5653]

surf([room_width+C(1,1) room_width+C(1,1); 0 0], [-C(1,2) -C(1,2); 0 0], [-C(1,end) -C(1,end); 0 0],...    
      CData = img, FaceColor = 'texturemap', EdgeColor = 'none');
axis([-100 900 -1500 100 -10 900])

% SHED
rooftop = 354.6150
roof_bottom = 211.5939
man_height = 163.4351
patio_height = 13.5336

% obtained from rotating img and selecting different reference plane
side_width = 233.8141+143.0800
front_width = 356.4259+73.2101
btwn_beams = 126.1737+10
man_width = 75.3261

[side,map,alphaside] = imread("imgs/side.png");
front = imread("imgs/front2.png");
[roof,map,alpharoof] = imread("imgs/roof.png");
[man,map,alphaman] = imread("imgs/man.png");
cat(3, man, man, man)
whitebeam = imread("imgs/whitebeam.png");

figure(f3)
surf([0 side_width; 0 side_width], [0 0; 0 0], [rooftop rooftop; 0 0], ...
    CData = side, FaceColor = 'texturemap', AlphaData = alphaside, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
grid off
axis equal
surf([-man_width -20; -man_width -20], [man_width+30 50; man_width+30 50], [man_height+patio_height man_height+patio_height; patio_height patio_height],...
     CData = cat(3, man, man, man), FaceColor = 'texturemap', AlphaData = alphaman, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([0 0; 0 0], [0 front_width; 0 front_width], [roof_bottom roof_bottom; 0 0],...
     CData = front, FaceColor = 'texturemap', EdgeColor = 'none');
hold on
surf([85 85; -70 -70], [front_width 0; front_width 0], [rooftop rooftop; roof_bottom roof_bottom],...    
     CData = roof, FaceColor = 'texturemap', AlphaData = alpharoof, FaceAlpha = 'texturemap', EdgeColor = 'none');
hold on
surf([-70 -55; -70 -55], [10 0; 10 0], [roof_bottom roof_bottom; 0 0],...
     CData = whitebeam, FaceColor = 'texturemap', EdgeColor = 'none');
hold on
surf([-70 -55; -70 -55], [10+btwn_beams btwn_beams; 10+btwn_beams btwn_beams], [roof_bottom roof_bottom; 0 0],...
     CData = whitebeam, FaceColor = 'texturemap', EdgeColor = 'none');
hold on
surf([-70 -55; -70 -55], [10+btwn_beams*2 btwn_beams*2; 10+btwn_beams*2 btwn_beams*2], [roof_bottom roof_bottom; 0 0],...
     CData = whitebeam, FaceColor = 'texturemap', EdgeColor = 'none');
hold on
surf([-70 -55; -70 -55], [front_width front_width-10; front_width front_width-10], [roof_bottom roof_bottom; 0 0],...
     CData = whitebeam, FaceColor = 'texturemap', EdgeColor = 'none');
hold on

C = [494.9205 797.1503 162.1868]
surf([-C(1,1) -C(1,1); 0 0], [-C(1,2) -C(1,2); 0 0], [C(1,end) C(1,end); 0 0],...    
     CData = img, FaceColor = 'texturemap', EdgeColor = 'none');
axis([-700 700 -900 900 -10 500])
% %close all force




% 
% % Algorithm 3 from Liebowitz 1999 to compute internal params from three
% % orthogonal vanishing pts u, v, w
% u1 = v_x(1,1)
% u2 = v_x(1,2)
% u3 = v_x(1,3)
% 
% v1 = v_y(1,1)
% v2 = v_y(1,2)
% v3 = v_y(1,3)
% 
% w1 = v(1,1)
% w2 = v(1,2)
% w3 = v(1,3)
% 
% % coeff matrix A
% A_transpose = [u1*v1       u1*w1       v1*w1       0   1;
%                u1*v2+u2*v1 u1*w2+u2*w1 v1*w2+v2*w1 1   0;
%                u2*v2       u2*w2       v2*w2       0  -1;
%                u1*v3+u3*v1 u1*w3+u3*w1 v1*w3+v3*w1 0   0;
%                u2*v3+u3*v2 u2*w3+u3*w2 v2*w3+v3*w2 0   0;
%                u3*v3       u3*w3       v3*w3       0   0]
% 
% A = transpose(A_transpose)
% 
% % use last col in null of A
% iac_v = null(A)
% iac1 = iac_v(1,end)
% iac2 = iac_v(2,end)
% iac3 = iac_v(3,end)
% iac4 = iac_v(4,end)
% iac5 = iac_v(5,end)
% iac6 = iac_v(6,end)
% % 
% % % % alternatively, use SVD as per CAP6419 11/17/2022 lecture
% % % % [U, D, V] = svd(A)
% % % % iac1 = V(1,end)
% % % % iac2 = V(2,end)
% % % % iac3 = V(3,end)
% % % % iac4 = V(4,end)
% % % % iac5 = V(5,end)
% % % % iac6 = V(6,end)
% % 
% iac = [iac1 iac2 iac4;
%        iac2 iac3 iac5;
%        iac4 iac5 iac6]
% 
% % Cholesky decomposition of IAC for camera calibration matrix K
% %
% % if flag = 0 then input matrix is symmetric positive definite and 
% % the factorization was successful
% [K, flag] = chol(inv(iac))
% 
% Ktranspose = transpose(K)
% vtranspose = transpose(v)
% % dual_conic = [K*Ktranspose K*Ktranspose*v;
% %               vtranspose*K*Ktranspose vtranspose*K*Ktranspose*v]
% 
% % [U,D,V] = svd(dual_conic)
% % 
% % % scale by finding sqrt D
% % sqrt_D = sqrtm(D)
% % 
% % % H inverse
% % U_sqrt_D = mtimes(U, sqrt_D)
% % H_inv = inv(U_sqrt_D)
% 
% C = inv(Ktranspose)*[1 0 0; 0 1 0; 0 0 -1]*inv(K)
% 
% % compute vanishing lines for each plane from two vanishing points
% % l_xy = cross(v_x, v_y)
% % 
% % l_xy1 = l_xy(1,1)
% % l_xy2 = l_xy(1,2)
% % l_xy3 = l_xy(1,3)
% % l_inf = [l_xy1/l_xy3 l_xy2/l_xy3 1]
% % 
% % P = [1 0 0; 0 1 0; l_inf]
% % 
% % x_a = P*v_x.'
% % y_a = P*v_y.'
% % 
% % theta_xy = rad2deg(subspace(x_a, y_a))
% % 
% % % rotate v_x by R to align with horizontal axis
% % theta = 180.0 - theta_xy
% % rot = [cosd(theta) -sind(theta);
% %        sind(theta)  cosd(theta)]
% % 
% % rotated_x_a = rot*[x_a(1,1)/x_a(3,1); x_a(2,1)/x_a(3,1)]
% % x_a = [rotated_x_a; 0]
% % 
% % theta_xy2 = rad2deg(subspace(x_a, y_a))
% % 
% % A_1 = [1 -cot(theta_xy) 0; 0 1 0; 0 0 1]
% % A_2 = [front_width/side_width 0 0; 0 1 0; 0 0 1]
% % 
% % img_ = imwarp(img, projtform2d(A_1*A_2));
% % figure
% % imshow(img_)
% % 
% % img__ = imwarp(img_, simtform2d(1.0,rot,[0 0]));
% % figure
% % imshow(img__)
% % 
% % 
% % % u_0 = K(1,3)
% % % v_0 = K(2,3)
% % % f = K(1,1)
% % 
% % % l_xy1 = l_xy(1,1)
% % % l_xy2 = l_xy(1,2)
% % % l_xy3 = l_xy(1,3)
% % % 
% % % coeff1 = (1+2*u_0*l_xy1+l_xy1^2*(u_0^2+v_0^2+f^2))
% % % coeff2 = 2*(l_xy2*u_0+l_xy1*v_0+l_xy1*l_xy2*(u_0^2+v_0^2+f^2))
% % % coeff3 = 2*l_xy*v_0+l_xy2^2*(u_0^2+v_0^2+f^2)+1
% % % poly = [coeff1 coeff2 coeff3]
% % % polyroots = roots(poly)
% % % 
% % % m1 = transpose(v_x)
% % % m2 = transpose(v_y)
% % % 
% % % polyroots1 = [polyroots(3,1); polyroots(4,1)]
% % % 
% % % IJ = repmat(m1, [1 length(polyroots1)]) + m2*ctranspose(polyroots1);
% % % IJ2 = IJ ./ repmat(IJ(3,:), [3 1]);
% % % I = IJ2(:,1)
% % % J = IJ2(:,2)
% % % 
% % % % conic dual to circular points
% % % C_inf = mtimes(I, transpose(J)) + mtimes(J, transpose(I))
% % % 
% % % % SVD
% % % [U,D,V] = svd(C_inf)
% % % 
% % % % scale by finding sqrt D
% % % sqrt_D = sqrtm(D)
% % % 
% % % % H inverse
% % % U_sqrt_D = mtimes(U, sqrt_D)
% % % H_inv = inv(U_sqrt_D)
% % % 
% % % tform = maketform('projective', H_inv');
% % % % Next line returns the x and y coordinates of the bounding box of the 
% % % % transformed image through H
% % % [boxx, boxy] = tformfwd(tform, [1 1 size(img, 2) size(img, 2)], [1 size(img, 1) 1 size(img, 1)]);
% % % % Find the minimum and maximum x and y coordinates of the bounding box
% % % minx = min(boxx); maxx = max(boxx);
% % % miny = min(boxy); maxy = max(boxy);
% % % % Transform the input image
% % % outim = imtransform(img, tform, 'XData', [minx maxx], 'YData', [miny maxy], 'Size', [size(img, 1), round(size(img, 1)*(maxx-minx)/(maxy-miny))]);
% % % 
% % % figure
% % % imshow(outim)
% % 
% % % H = [1 0 0;
% % %      0 1 0;
% % %      l_xy]
% % 
% % % 
% % % A_transpose = [u1*v1+u2*v2  u1*w1+u2*w2  v1*w1+v2*w2;
% % %                u1*v3+u3+v1  u1*w3+u3+w1  v1*w3+v3*w1;
% % %                u2*v3+u3*v2  u2*w3+u3*w2  v2*w3+v3*w2;
% % %                u3*v3        u3*w3        v3*w3      ]
% % % 
% % % A = transpose(A_transpose)
% % % 
% % % % use last col in null of A
% % % iac_v = null(A)
% % % iac1 = iac_v(1,end)
% % % iac2 = iac_v(2,end)
% % % iac3 = iac_v(3,end)
% % % iac4 = iac_v(4,end)
% % % 
% % % iac = [iac1 0    iac2;
% % %        0    iac1 iac3;
% % %        iac2 iac3 iac4]
% % % 
% % % [K_, flag] = chol(iac*-1)
% % 
% % 
% % 
% 
% % % % 
% % % % 
% % % % % Planar perspective map (homography) Hz
% % % % H_z = [v_x.' v_y.' (mtimes(alphaZ, v)+l).']
% % % % H_zinv = inv(H_z)
% % % 
% % % 
% % % % figure
% % % % imshow(img_)
% % % 
% % 
% 