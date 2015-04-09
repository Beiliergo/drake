function [q_degenerate,dq_degenerate,ddq_degenerate] = exp2quatDegenerate(in1,theta)
%EXP2QUATDEGENERATE
%    [Q_DEGENERATE,DQ_DEGENERATE,DDQ_DEGENERATE] = EXP2QUATDEGENERATE(IN1,THETA)

%    This function was generated by the Symbolic Math Toolbox version 6.0.
%    08-Apr-2015 17:55:47

v1 = in1(1,:);
v2 = in1(2,:);
v3 = in1(3,:);
t2 = theta.^2;
t3 = t2.*8.0e1;
t4 = t3-1.92e3;
q_degenerate = [t2.*(-1.0./8.0)+1.0;t4.*v1.*(-2.604166666666667e-4);t4.*v2.*(-2.604166666666667e-4);t4.*v3.*(-2.604166666666667e-4)];
if nargout > 1
    t5 = v1.^2;
    t6 = t2-4.0e1;
    t7 = t6.*v1.*v2.*(1.0./9.6e2);
    t8 = v2.^2;
    t9 = t6.*v1.*v3.*(1.0./9.6e2);
    t10 = t6.*v2.*v3.*(1.0./9.6e2);
    t11 = v3.^2;
    dq_degenerate = reshape([t4.*v1.*1.302083333333333e-4,t2.*(-1.0./4.8e1)-t5.*(1.0./2.4e1)+t2.*t5.*(1.0./9.6e2)+1.0./2.0,t7,t9,t4.*v2.*1.302083333333333e-4,t7,t2.*(-1.0./4.8e1)-t8.*(1.0./2.4e1)+t2.*t8.*(1.0./9.6e2)+1.0./2.0,t10,t4.*v3.*1.302083333333333e-4,t9,t10,t2.*(-1.0./4.8e1)-t11.*(1.0./2.4e1)+t2.*t11.*(1.0./9.6e2)+1.0./2.0],[4, 3]);
end
if nargout > 2
    t12 = t2.*(1.0./9.6e1);
    t13 = t5.*3.2e1;
    t14 = t2.*1.6e1;
    t16 = t2.*t5;
    t15 = v2.*(t13+t14-t16-6.4e2).*6.510416666666667e-5;
    t17 = t2-3.2e1;
    t18 = t8.*3.2e1;
    t20 = t2.*t8;
    t19 = v1.*(t14+t18-t20-6.4e2).*6.510416666666667e-5;
    t21 = t2.*4.8e1;
    t22 = v3.*(t14+t18-t20-6.4e2).*6.510416666666667e-5;
    t23 = t11.*3.2e1;
    t24 = v3.*(t13+t14-t16-6.4e2).*6.510416666666667e-5;
    t26 = t2.*t11;
    t25 = v1.*(t14+t23-t26-6.4e2).*6.510416666666667e-5;
    t27 = v2.*(t14+t23-t26-6.4e2).*6.510416666666667e-5;
    ddq_degenerate = reshape([t5.*(1.0./4.8e1)+t12-t2.*t5.*5.208333333333333e-4-1.0./4.0,v1.*(t13+t21-t2.*t5-1.92e3).*6.510416666666667e-5,t15,t24,t6.*v1.*v2.*(-5.208333333333333e-4),t15,t19,t17.*v1.*v2.*v3.*(-6.510416666666667e-5),t6.*v1.*v3.*(-5.208333333333333e-4),v3.*(t13+t14-t2.*t5-6.4e2).*6.510416666666667e-5,t17.*v1.*v2.*v3.*(-6.510416666666667e-5),t25,t6.*v1.*v2.*(-5.208333333333333e-4),t15,t19,t17.*v1.*v2.*v3.*(-6.510416666666667e-5),t8.*(1.0./4.8e1)+t12-t2.*t8.*5.208333333333333e-4-1.0./4.0,t19,v2.*(t18-t20+t21-1.92e3).*6.510416666666667e-5,t22,t6.*v2.*v3.*(-5.208333333333333e-4),t17.*v1.*v2.*v3.*(-6.510416666666667e-5),t22,t27,t6.*v1.*v3.*(-5.208333333333333e-4),t24,t17.*v1.*v2.*v3.*(-6.510416666666667e-5),t25,t6.*v2.*v3.*(-5.208333333333333e-4),t17.*v1.*v2.*v3.*(-6.510416666666667e-5),t22,t27,t11.*(1.0./4.8e1)+t12-t2.*t11.*5.208333333333333e-4-1.0./4.0,t25,v2.*(t14+t23-t2.*t11-6.4e2).*6.510416666666667e-5,v3.*(t21+t23-t26-1.92e3).*6.510416666666667e-5],[4, 9]);
end
