"""Radiation-dominated FLRW deviation benchmark, not finite-beam gravity."""
import csv, math

def rhs(t,y):
    return (y[1],-y[0]/(4*t*t))

def step(t,y,h):
    k1=rhs(t,y)
    k2=rhs(t+h/2,tuple(y[i]+h*k1[i]/2 for i in range(2)))
    k3=rhs(t+h/2,tuple(y[i]+h*k2[i]/2 for i in range(2)))
    k4=rhs(t+h,tuple(y[i]+h*k3[i] for i in range(2)))
    return tuple(y[i]+h*(k1[i]+2*k2[i]+2*k3[i]+k4[i])/6 for i in range(2))

def integrate(n=1000,start=1.,stop=4.,x0=1.):
    if n<1 or start<=0 or stop<=start: raise ValueError('invalid domain')
    h=(stop-start)/n
    y=(x0,x0/(2*start))
    rows=[]
    for i in range(n+1):
        t=start+i*h
        exact=x0*math.sqrt(t/start)
        rows.append((t,y[0],exact,abs(y[0]-exact)))
        if i<n: y=step(t,y,h)
    return rows

if __name__=='__main__':
    rows=integrate()
    with open('flrw_deviation.csv','w',newline='') as f:
        w=csv.writer(f);w.writerow(['t_over_t0','xi_numeric','xi_exact','abs_error']);w.writerows(rows)
    with open('straight_line_control.csv','w',newline='') as f:
        w=csv.writer(f);w.writerow(['time_ms','position_mm']);w.writerows((i/1000,i/1000) for i in range(1001))
    print('max numerical error:',max(r[3] for r in rows))
