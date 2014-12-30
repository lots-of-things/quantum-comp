clear mov
ind=1;
for i=0:0.05:1
            plot([0.5,8.5],[0,0],'Color',[0,0,0],'LineWidth',1)
            hold on
    bar(data,'FaceColor',[0.17,0.32,0.44],'ShowBaseLine','off','EdgeColor','none')
%     bar(data*i,0.5,'BaseValue',mean(data),'FaceColor',[0.91,0.52,0.04],'EdgeColor','none')
    for x=1:8
        val = mean(data) + (data(x)-mean(data))*i;
        if(val>mean(data))
            bar(x-0.2,val,0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            bar(x-0.2,mean(data),0.3,'FaceColor',[0.17,0.32,0.44],'EdgeColor','none');
            
        elseif(val<0)
            bar(x-0.2,val,0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            bar(x-0.2,mean(data),0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            
        else
            bar(x-0.2,mean(data),0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            if(data(x)<0)
                bar(x-0.2,val,0.3,'FaceColor',[1,1,1],'EdgeColor','none');
            else
                bar(x-0.2,val,0.3,'FaceColor',[0.17,0.32,0.44],'EdgeColor','none');
            end
        end
    end
        plot([0.5,8.5],[mean(data),mean(data)],'Color',[0.8,0.37,0.23],'LineWidth',4)
    ylim([-1,1]);
    drawnow
    mov(ind,:)=getframe;
    ind=ind+1;
    clf
end
for i=1:-0.1:-1
    plot([0.5,8.5],[0,0],'Color',[0,0,0],'LineWidth',1)
    hold on
    bar(data,'FaceColor',[0.17,0.32,0.44],'ShowBaseLine','off','EdgeColor','none')
%     bar(data*i,0.5,'BaseValue',mean(data),'FaceColor',[0.91,0.52,0.04],'EdgeColor','none')
    for x=1:8
        val = mean(data) + (data(x)-mean(data))*1;
        if(val>mean(data))
            bar(x-0.2,val,0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            bar(x-0.2,mean(data),0.3,'FaceColor',[0.17,0.32,0.44],'EdgeColor','none');
            
        elseif(val<0)
            bar(x-0.2,val,0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            bar(x-0.2,mean(data),0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            
        else
            bar(x-0.2,mean(data),0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            if(data(x)<0)
                bar(x-0.2,val,0.3,'FaceColor',[1,1,1],'EdgeColor','none');
            else
                bar(x-0.2,val,0.3,'FaceColor',[0.17,0.32,0.44],'EdgeColor','none');
            end
        end
    end
    for x=1:8
        val = mean(data) + (data(x)-mean(data))*i;
        if(val>mean(data))
            bar(x+0.2,val,0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            bar(x+0.2,mean(data),0.3,'FaceColor',[0.17,0.32,0.44],'EdgeColor','none');
            
        elseif(val<0)
            bar(x+0.2,val,0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            bar(x+0.2,mean(data),0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            
        else
            bar(x+0.2,mean(data),0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            if(data(x)<0)
                bar(x+0.2,val,0.3,'FaceColor',[1,1,1],'EdgeColor','none');
            else
                bar(x+0.2,val,0.3,'FaceColor',[0.17,0.32,0.44],'EdgeColor','none');
            end
        end
    end
    
        plot([0.5,8.5],[mean(data),mean(data)],'Color',[0.8,0.37,0.23],'LineWidth',4)
    ylim([-1,1]);
    drawnow
    mov(ind,:)=getframe;
    ind=ind+1;
    clf
end
for i=0:0.1:1
    plot([0.5,8.5],[0,0],'Color',[0,0,0],'LineWidth',1)
    hold on
    bar(data,'FaceColor',[0.17,0.32,0.44],'ShowBaseLine','off','EdgeColor','none')
    bar(2*mean(data)-data,'FaceColor',1-(1-[0.65,0.23,0.25])*i,'EdgeColor','none');
    for x=1:8
        val = mean(data) + (data(x)-mean(data))*1;
        if(val>mean(data))
            bar(x-0.2,val,0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            bar(x-0.2,mean(data),0.3,'FaceColor',[0.17,0.32,0.44],'EdgeColor','none');

        elseif(val<0)
            bar(x-0.2,val,0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            bar(x-0.2,mean(data),0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');

        else
            bar(x-0.2,mean(data),0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            if(data(x)<0)
                bar(x-0.2,val,0.3,'FaceColor',[1,1,1],'EdgeColor','none');
            else
                bar(x-0.2,val,0.3,'FaceColor',[0.17,0.32,0.44],'EdgeColor','none');
            end
        end
    end
    for x=1:8
        val = mean(data) + (data(x)-mean(data))*-1;
        if(val>mean(data))
            bar(x+0.2,val,0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            bar(x+0.2,mean(data),0.3,'FaceColor',[0.17,0.32,0.44],'EdgeColor','none');

        elseif(val<0)
            bar(x+0.2,val,0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            bar(x+0.2,mean(data),0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');

        else
            bar(x+0.2,mean(data),0.3,'FaceColor',[0.91,0.52,0.04],'EdgeColor','none');
            if(data(x)<0)
                bar(x+0.2,val,0.3,'FaceColor',[1,1,1],'EdgeColor','none');
            else
                bar(x+0.2,val,0.3,'FaceColor',[0.17,0.32,0.44],'EdgeColor','none');
            end
        end
    end
    plot([0.5,8.5],[mean(data),mean(data)],'Color',[0.8,0.37,0.23],'LineWidth',4)
    ylim([-1,1]);
    drawnow
    mov(ind,:)=getframe;
    ind=ind+1;
    clf
end
plot([0.5,8.5],[0,0],'Color',[0,0,0],'LineWidth',1)
hold on
bar(data,'FaceColor',[0.17,0.32,0.44],'ShowBaseLine','off','EdgeColor','none')
    bar(2*mean(data)-data,'ShowBaseLine','off','FaceColor',[0.65,0.23,0.25],'EdgeColor','none');
    plot([0.5,8.5],[mean(data),mean(data)],'Color',[0.8,0.37,0.23],'LineWidth',4)
ylim([-1,1]);
drawnow
mov(ind,:)=getframe;
ind=ind+1;
